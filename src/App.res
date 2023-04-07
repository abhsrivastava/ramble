@react.component
let make = () => {
    Env.apiUrl -> Js.log
    <div>{"App" -> React.string}</div>
}