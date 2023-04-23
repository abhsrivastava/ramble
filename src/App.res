@react.component
let make = () => {
  <div>
    {`Number of API calls ${HourlyForecastService.getHourlyForecast() -> Belt.Int.toString}` -> React.string}
  </div>
}