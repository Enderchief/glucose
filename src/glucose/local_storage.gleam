@target(javascript)
@external(javascript, "../ffi_globals.js", "$ls_length")
pub fn length() -> Int

@target(javascript)
@external(javascript, "", "localStorage.clear")
pub fn clear() -> Nil

@target(javascript)
@external(javascript, "../ffi_globals.js", "$ls_get_item")
pub fn get_item(key key: String) -> Result(String, Nil)

@target(javascript)
@external(javascript, "", "localStorage.key")
pub fn key(n n: Int) -> String

@target(javascript)
@external(javascript, "", "localStorage.removeItem")
pub fn remove_item(key key: String) -> Nil

@target(javascript)
@external(javascript, "", "localStorage.setItem")
pub fn set_item(key key: String, value value: String) -> Nil
