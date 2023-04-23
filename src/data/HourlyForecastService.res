open Belt.Option
open Util

type hourlyForecast = {
  startTime: Js.Date.t,
  endTime: Js.Date.t,
  temprature: float,
  probabilityOfPrecipitation: float,
  relativeHumidity: float,
  windspeed: float,
  winddirection: string,
  icon: string,
  shortForecast: string
}

type trailHeadForecast = {
  input: TrailsDatabase.groupedMetadata,
  generatedAt: Js.Date.t,
  elevation: float,
  coordinates: array<(float, float)>,
  periods: array<hourlyForecast>
}

let extractCoordinates = jsonArray => {
  let xOpt : option<float> = jsonArray -> Belt.Array.get(0) -> flatMap(Js.Json.decodeNumber)
  let yOpt : option<float> = jsonArray -> Belt.Array.get(1) -> flatMap(Js.Json.decodeNumber)
  switch (xOpt, yOpt) {
  | (Some(x), Some(y)) => Some(x, y)
  | _ => None
  }
}

let parseGeometry = (json) => {
  json 
  -> getObjectOpt 
  -> flatMap(x => x -> getObjectByKeyOpt("geometry")) 
  -> flatMap(x => x -> getArrayOpt("coordinates")) 
  -> flatMap(x => x -> Belt.Array.get(0)) 
  -> flatMap(Js.Json.decodeArray) 
  -> map(x => x -> Belt.Array.map(Js.Json.decodeArray))
  -> map(flatten)
  -> map(x => x -> Belt.Array.map(smallArray => smallArray -> extractCoordinates))
  -> map(flatten)
}

let parseHourlyForecast = (jsonArray) : array<hourlyForecast> => {
  jsonArray -> Belt.Array.map(periodJson => 
    periodJson -> getObjectOpt -> flatMap(period => 
      period -> getStringOpt("startTime") -> map(Js.Date.fromString) -> flatMap(startTime => 
        period -> getStringOpt("endTime") -> map(Js.Date.fromString) -> flatMap(endTime => 
          period -> getFloatOpt("temprature") -> flatMap(temprature => 
            period -> getObjectByKeyOpt("probabilityOfPrecipitation") -> flatMap(x => x -> getFloatOpt("value")) -> flatMap(probabilityOfPrecipitation => 
              period -> getObjectByKeyOpt("relativeHumidity") -> flatMap(x => x -> getFloatOpt("value")) -> flatMap(relativeHumidity => 
                period -> getFloatOpt("windSpeed") -> flatMap(windspeed => 
                  period -> getStringOpt("windDirection") -> flatMap(winddirection => 
                    period -> getStringOpt("icon") -> flatMap(icon => 
                      period -> getStringOpt("shortForecast") -> map(shortForecast => 
                      {
                        startTime,
                        endTime,
                        temprature,
                        probabilityOfPrecipitation,
                        relativeHumidity,
                        windspeed,
                        winddirection,
                        icon,
                        shortForecast
                      })
                    )
                  )
                )
              )
            )
          )
        )
      )
    )
  ) -> flatten
}

let parseTrailForecast = (json, input) => {
  json -> parseGeometry -> flatMap(coordinates => 
    json -> getObjectOpt -> flatMap(x => x -> getObjectByKeyOpt("properties")) -> flatMap(properties => 
      properties -> getStringOpt("updated") -> map(Js.Date.fromString) -> flatMap(generatedAt => 
        properties -> getObjectByKeyOpt("elevation") -> flatMap(x => x -> getFloatOpt("value")) -> flatMap(elevation => 
          properties -> getArrayOpt("periods") -> map(parseHourlyForecast) -> map(periods => 
            {
              input,
              generatedAt,
              elevation,
              coordinates,
              periods
            }
          )
        )
      )
    )
  )
}
let getHourlyForecast = () => {
  // get a list of grouped trail metadata objects.
  // look for hourly forecast for each group in local storage. if its valid then use it. If invalid then make fresh api calls
  // store and overwrite in local storage.
  open Js.Promise2
  open Fetch
  TrailsDatabase.getTrailDatabase() 
  -> Belt.Array.map(md => md.url -> Fetch.get -> then (Response.json) -> then(x => (md, x) -> resolve)) 
  -> all
  -> then(array => array -> Belt.Array.map(((md, json)) => json -> parseTrailForecast(md)) -> resolve)
  -> then(array => array -> flatten -> resolve)
}