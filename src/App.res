open ForecastService

type weatherData = 
| NotReceieved
| Received(array<metadata>)
| Error

type localStorageData = {
  generatedAt: float,
  metadata: array<metadata>
}

let parseLocalStorage = () => {
  open Dom.Storage2
  open Js.Json
  open Belt.Option
  localStorage -> getItem("metadata") -> flatMap (jsonStr => 
    jsonStr -> parseExn -> decodeObject -> flatMap (json => 
      json -> Js.Dict.get("generatedAt") -> flatMap(decodeNumber) -> flatMap(generatedAt => 
        if (Js.Date.now() -. generatedAt > (3. *. 60. *. 60. *. 1000.) ) {
          None
        } else {
          json -> Js.Dict.get("metadata") -> flatMap(decodeArray) -> map(array => array -> Belt.Array.map(item => 
            item -> decodeObject -> flatMap(md => 
              md -> Js.Dict.get("gridId") -> flatMap(decodeString) -> flatMap(gridId => 
                md -> Js.Dict.get("gridX") -> flatMap(decodeNumber) -> map(Belt.Int.fromFloat) -> flatMap(gridX => 
                  md -> Js.Dict.get("gridY") -> flatMap(decodeNumber) -> map(Belt.Int.fromFloat) -> flatMap(gridY =>
                    md -> Js.Dict.get("forecastHourly") -> flatMap(decodeString) -> flatMap(forecastHourly =>
                      md -> Js.Dict.get("city") -> flatMap(decodeString) -> flatMap(city =>
                        md -> Js.Dict.get("forecastZone") -> flatMap(decodeString) -> flatMap(forecastZone =>
                          md -> Js.Dict.get("county") -> flatMap(decodeString) -> flatMap(county =>
                            md -> Js.Dict.get("firezone") -> flatMap(decodeString) -> flatMap(fireZone =>
                              md -> Js.Dict.get("radarStation") -> flatMap(decodeString) -> flatMap(radarStation =>
                                Some({gridId, gridX, gridY, forecastHourly, city, forecastZone, county, fireZone, radarStation})
                              )
                            )
                          )
                        )
                      )
                    )
                  )
                )
              )
            )
          )) 
          -> map (array => array -> Belt.Array.reduce([], (result, x) => {
            switch x {
            | Some(md) => [md] -> Belt.Array.concat(result)
            | None => result
            }
          }))
          -> map(metadata => {generatedAt, metadata})
        }
      )
    )
  )
}
@react.component
let make = () => {  
  let (metadata, setMetadata) = React.useState(() => NotReceieved)
  React.useEffect0(() => {
    switch parseLocalStorage() {
    | Some(ld) => "Loaded weather data from local storage" -> Js.log;setMetadata(_ => Received(ld.metadata))
    | None => {
      "Data not found in localstorage going to query api" -> Js.log
      // query the forecast api
      TrailsDatabase.trailheadList 
      -> Belt.Array.map(th => (th.latitude, th.longitude)) 
      -> Belt.Array.map(((lat, long)) => ForecastService.getMetadata(lat, long)) 
      -> Js.Promise2.all 
      -> Js.Promise2.then(wdOptList => {
        // set local storage 
        wdOptList -> Util.sequence -> Belt.Option.map(wdList => {
          let data = {generatedAt: Js.Date.now(), metadata: wdList}-> Js.Json.stringifyAny -> Belt.Option.getExn
          "going to store data" -> Js.log
          data -> Js.log
          Dom.Storage2.localStorage -> Dom.Storage2.setItem("metadata", data)
          // set state
          setMetadata(_ => Received(wdList))
      }) -> Js.Promise2.resolve
      }) -> ignore
    }}
    None
  })
  
  switch metadata {
  | NotReceieved => 
    <div>{"Loading..." -> React.string}</div>
  | Received(wd) => 
    wd -> Js.log
    <div>{"App" -> React.string}</div>
  | _ => <div>{"Error" -> React.string}</div>
  }
}