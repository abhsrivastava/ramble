open ForecastService

type weatherData = 
| NotReceieved
| Received(array<forecast>)
| Error

type localStorageData = {
  generatedAt: float,
  weatherData: array<forecast>
}

let parseLocalStorage = () => {
  open Dom.Storage2
  switch localStorage -> getItem("weather-data") {
  | None => None
  | Some(jsonStr) => 
    try {
      let json = jsonStr -> Js.Json.parseExn 
      let jsDict = json -> Js.Json.decodeObject -> Belt.Option.getExn 
      let generatedAt = jsDict -> Js.Dict.get("generatedAt") -> Belt.Option.getExn -> Js.Json.decodeNumber -> Belt.Option.getExn
      if (Js.Date.now() -. generatedAt > (3. *. 60. *. 60. *. 1000.) ) {
        None
      } else {
        open Util
        let weatherData = 
          jsDict 
          -> Js.Dict.get("weatherData") 
          -> Belt.Option.getExn 
          -> Js.Json.decodeArray 
          -> Belt.Option.getExn 
          -> Belt.Array.map(obj => {
            latitude: obj -> getFloatUnsafe("latitude"),
            longitude: obj -> getFloatUnsafe("longitude"),
            elevation: obj -> getIntUnsafe("elevation"),
            hourly: {
              time: obj -> getObjectUnsafe("hourly") -> getStringArray("time"),
              temprature: obj -> getObjectUnsafe("hourly") -> getFloatArray("temprature"),
              rain: obj -> getObjectUnsafe("hourly") -> getFloatArray("rain"),
              showers: obj -> getObjectUnsafe("hourly") -> getFloatArray("showers"),
              snowfall: obj -> getObjectUnsafe("hourly") -> getFloatArray("snowfall")
            }
          })
        Some(weatherData)
      }
    } 
    catch {
    | e => "Error in loading data from local storage" -> Js.log;e -> Js.log;None
    }
  }
}
@react.component
let make = () => {  
  let (weatherData, setWeatherData) = React.useState(() => NotReceieved)
    React.useEffect0(() => {
      switch parseLocalStorage() {
      | Some(wd) => "Loaded weather data from local storage" -> Js.log;setWeatherData(_ => Received(wd))
      | None => {
        "Data not found in localstorage going to query api" -> Js.log
        // query the forecast api
        TrailsDatabase.trailheadList 
        -> Belt.Array.map(th => (th.latitude, th.longitude)) 
        -> Belt.Array.map(((lat, long)) => ForecastService.getForecast(long, lat)) 
        -> Js.Promise2.all 
        -> Js.Promise2.then(wdList => {
          // set local storage 
          let data = {generatedAt: Js.Date.now(), weatherData: wdList}-> Js.Json.stringifyAny -> Belt.Option.getExn
          "going to store data" -> Js.log
          data -> Js.log
          Dom.Storage2.localStorage -> Dom.Storage2.setItem("weather-data", data)
          // set state
          setWeatherData(_ => Received(wdList)) -> Js.Promise2.resolve
        }) -> ignore
      }}
      None
    })
    
  <div>{"App" -> React.string}</div>
  // query entire database 
  // store it in local storage against 3 hour key
  // 
}