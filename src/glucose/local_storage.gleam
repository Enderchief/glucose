@target(javascript)
@external(javascript, "../localstorage.ffi.mjs", "length")
pub fn length() -> Int

@target(javascript)
@external(javascript, "../localstorage.ffi.mjs", "clear")
pub fn clear() -> Nil

@target(javascript)
@external(javascript, "../localstorage.ffi.mjs", "get_item")
pub fn get_item(key key: String) -> Result(String, Nil)

@target(javascript)
@external(javascript, "../localstorage.ffi.mjs", "key")
pub fn key(n n: Int) -> String

@target(javascript)
@external(javascript, "../localstorage.ffi.mjs", "remove_item")
pub fn remove_item(key key: String) -> Nil

@target(javascript)
@external(javascript, "../localstorage.ffi.mjs", "set_item")
pub fn set_item(key key: String, value value: String) -> Nil
