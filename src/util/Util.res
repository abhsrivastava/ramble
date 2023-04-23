open Belt.Array
open Js.Json
@@warning("-44")
open Belt.Option

let sequence = (list: array<option<'a>>) : option<array<'a>> => {
  let result = list -> reduce([], (result, item) => {
    switch item {
    | Some(val) => [val] -> concat(result)
    | None => result
    }
  })
  if result -> Belt.Array.length == 0 {
    None
  } else {
    Some(result)
  }
}

let getStringOpt = (json, key) => {
  json -> Js.Dict.get(key) -> flatMap(decodeString)
}
let getFloatOpt = (json, key) => {
  json -> Js.Dict.get(key) -> flatMap(decodeNumber)
}
let getIntOpt = (json, key) => {
  json -> Js.Dict.get(key) -> flatMap(decodeNumber) -> map(Belt.Int.fromFloat)
}

let getArrayOpt = (json, key) => {
  json -> Js.Dict.get(key) -> flatMap(decodeArray)
}

let getObjectOpt = (json) => json -> decodeObject
let getObjectByKeyOpt = (json, key) => json -> Js.Dict.get(key) -> flatMap(decodeObject)

let flatten = list => {
  list -> Belt.Array.reduce([], (result, opt) => {
    switch opt {
    | Some(v) => result -> Belt.Array.concat([v])
    | None => result
    }
  })
}