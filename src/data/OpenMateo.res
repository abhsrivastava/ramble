open Js.Date

type hourly = {
  time: array<string>,
  temprature: array<float>,
  rain: array<float>,
  showers: array<float>,
  snowfall: array<float>
}

type forecast = {
  latitude: float,
  longitude: float,
  elevation: int,
  hourly: hourly
}

type error = {
  longitude: float, 
  latitude: float,
  msg: string
}

let getDateString = (now: Js.Date.t) => {
  let year = now -> getFullYear -> fromFloat -> toString
  let month = now -> getMonth -> fromFloat -> toString
  let day = now -> getDate -> fromFloat -> toString
  `${year}-${month}-${day}`
}

let getEndTime = (now: Js.Date.t) : string => {
  // API works only for 15 days in advance
  (now -> valueOf +. (15. *. 24. *. 60. *. 60. *. 1000.)) 
  -> fromFloat 
  -> getDateString
}

let parseResponse = (json: Js.Json.t) : forecast => {
  open Util
  let longitude = json -> getFloatUnsafe("longitude")
  let latitude = json -> getFloatUnsafe("latitude")
  let elevation = json -> getIntUnsafe("elevation")
  let hourlyObj = json -> getObjectUnsafe("hourly") -> Js.Json.object_
  let time = hourlyObj -> getStringArray("time")
  let temprature = hourlyObj -> getFloatArray("temperature_2m")
  let rain = hourlyObj -> getFloatArray("rain")
  let showers = hourlyObj -> getFloatArray("showers")
  let snowfall = hourlyObj -> getFloatArray("snowfall")
  {longitude, latitude, elevation, hourly: {time, temprature, rain, showers, snowfall}}
} 

let getForecast = (longitude, latitude) => {
  open Fetch
  open Js.Promise2
  let now = Js.Date.make()
  `${Env.apiUrl}&longitude=${longitude -> Belt.Float.toString}&latitude=${latitude -> Belt.Float.toString}&start_time=${now -> getDateString}&end_time=${now -> getEndTime}`
  -> get
  -> then (Response.json)
  -> then (json => json -> parseResponse -> resolve)
}
