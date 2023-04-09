open Js.Json
open Belt.Option

let getValueOption = (json: t, key, fn) => {
  switch json -> classify {
  | JSONObject(obj) => 
    switch obj -> Js.Dict.get(key) {
    | Some(val) => val -> fn
    | None => `key ${key} not found` -> Js.log; None
    }
  | _ => `passed json ${json -> stringify} is not an object` -> Js.log; None
  }
}

let getStringOption = (json: t, key) => 
  json -> getValueOption(key, decodeString)

let getFloatOption = (json: t, key) => 
  json -> getValueOption(key, decodeNumber)

let getIntOption = (json: t, key) =>
  json -> getValueOption(key, decodeNumber) -> map(Belt.Int.fromFloat)

let getObjectOption = (json: t, key) => 
  json -> getValueOption(key, decodeObject)

let getObjectUnsafe = (json: t, key) => 
  json -> getObjectOption(key) -> getExn -> object_

let getIntUnsafe = (json: t, key) => 
  json -> getIntOption(key) -> getExn

let getStringUnsafe = (json: t, key) => 
  json -> getValueOption(key, decodeString) 
  -> getExn

let getFloatUnsafe = (json: t, key) => 
  json -> getValueOption(key, decodeNumber) 
  -> getExn

let getArrayOption = (json: t, key, fn) => 
  json -> getValueOption(key, decodeArray) 
  -> map(array => array -> Belt.Array.map(item => item -> fn -> getExn))

let getFloatArray = (json: t, key) => 
  json -> getArrayOption(key, decodeNumber) -> getExn

let getStringArray = (json: t, key) => 
  json -> getArrayOption(key, decodeString) -> getExn

