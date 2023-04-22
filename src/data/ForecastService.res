open Js.Json

type metadata = {
  gridId: string,
  gridX: int, 
  gridY: int,
  forecastHourly: string,
  city: string, 
  forecastZone: string,
  county: string,
  fireZone: string,
  radarStation: string
}

let parseMetadata = (json: t) : option<metadata> => {
  open Belt.Option
  json -> Js.log;
  json -> decodeObject -> flatMap(x => x -> Js.Dict.get("properties")) -> flatMap(decodeObject) -> flatMap(propObj => {
    "found properties" -> Js.log
    propObj -> Js.Dict.get("gridId") -> flatMap(decodeString) -> flatMap(gridId => {
      `gridid ${gridId}` -> Js.log
      propObj -> Js.Dict.get("gridX") -> flatMap(decodeNumber) -> map(Belt.Int.fromFloat) -> flatMap(gridX => {
        `gridx ${gridX -> Belt.Int.toString}` -> Js.log
        propObj -> Js.Dict.get("gridY") -> flatMap(decodeNumber) -> map(Belt.Int.fromFloat) -> flatMap(gridY => {
          `gridy ${gridY -> Belt.Int.toString}` -> Js.log
          propObj -> Js.Dict.get("forecastHourly") -> flatMap(decodeString) -> flatMap(forecastHourly => {
            `forecast hourly ${forecastHourly}` -> Js.log
            propObj -> Js.Dict.get("relativeLocation") -> flatMap(decodeObject) -> flatMap(x => x -> Js.Dict.get("properties")) -> flatMap(decodeObject) -> flatMap( x => x -> Js.Dict.get("city")) -> flatMap(decodeString) -> flatMap (city => {
              `city ${city}` -> Js.log
              propObj -> Js.Dict.get("forecastZone") -> flatMap(decodeString) -> flatMap(forecastZone => {
                `forecast zone ${forecastZone}` -> Js.log
                propObj -> Js.Dict.get("county") -> flatMap(decodeString) -> flatMap(county => {
                  `county ${county}` -> Js.log
                  propObj -> Js.Dict.get("fireWeatherZone") -> flatMap(decodeString) -> flatMap(fireZone => {
                    `fire zone: ${fireZone}` -> Js.log
                    propObj -> Js.Dict.get("radarStation") -> flatMap(decodeString) -> flatMap(radarStation => {
                      `radar station ${radarStation}` -> Js.log
                      Some({gridId, gridX, gridY, forecastHourly, city, forecastZone, county, fireZone, radarStation})
                    })
                  })
                })
              })              
            })
          })
        })
      })
    }) 
  })
}
let getMetadata= (latitude: float, longitude: float) : promise<option<metadata>> => {
  open Fetch
  open Js.Promise2
  `${Env.apiUrl}/${latitude -> Belt.Float.toString},${longitude -> Belt.Float.toString}`
  -> get
  -> then (Response.json)
  -> then (json => parseMetadata(json) -> resolve)
}