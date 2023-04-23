open Js.Promise2

@react.component
let make = () => {
  React.useEffect0(() => {
    HourlyForecastService.getHourlyForecast() -> then(x => x -> Js.log -> resolve) -> ignore
    None
  })
  <div>
    {"Hello World" -> React.string}
  </div>
}