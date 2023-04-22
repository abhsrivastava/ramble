open Belt.Array

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