if javascript {
  pub external fn length() -> Int =
    "../ffi_globals.js" "$ls_length"

  pub external fn clear() -> Nil =
    "" "localStorage.clear"

  pub external fn get_item(key: String) -> Result(String, Nil) =
    "../ffi_globals.js" "$ls_get_item"

  pub external fn key(n: Int) -> String =
    "" "localStorage.key"

  pub external fn remove_item(key: String) -> Nil =
    "" "localStorage.removeItem"

  pub external fn set_item(key: String, value: String) -> Nil =
    "" "localStorage.setItem"
}
