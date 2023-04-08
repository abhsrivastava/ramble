@react.component
let make = () => {
    Env.apiUrl -> Js.log
    Env.googleMapsUrl -> Js.log
    <div>{"App" -> React.string}</div>
}