/// Reference to `document` in JavaScript.
pub external type Document

/// `HTMLElement` type from JavaScript
pub external type HTMLElement

/// Universal getter for JavaScript items
///
/// ```gleam
/// io.println(get(elem, "className"))
/// ```
/// Equivalent to
/// ```js
/// console.log(elem["className"])
/// // console.log(elem.className)
pub external fn get(obj: a, attribute: String) -> t =
  "../ffi_dom.js" "get"

/// Update an attribute using an updater function
///
/// ```gleam
/// // assuming `app` is an element
/// update(app, "innerText", fn (text) {
///     text <> " world"
/// })
pub external fn update(obj: a, attribute: String, updater: fn(b) -> b) -> Nil =
  "../ffi_dom.js" "update"

/// Set an attribute of an item
///
/// ```gleam
/// set(app, "innerHTML", "<h1>Hello Gleam!</h1>")
pub external fn set(obj: a, attribute: String, value: b) -> Nil =
  "../ffi_dom.js" "set"

/// Add an event listener to an element
///
/// ```gleam
/// event(btn, "click", fn () {
///     io.println("pressed!")   
/// })
pub external fn event(
  element: HTMLElement,
  event: String,
  handler: fn() -> Nil,
) -> Nil =
  "../ffi_dom.js" "event"

if javascript {
  pub external fn clear_interval(id: Int) -> Nil =
    "" "clearInterval"

  pub external fn clear_timeout(id: Int) -> Nil =
    "" "clearTimeout"

  pub external fn set_interval(fn() -> Nil, Float) -> Int =
    "" "setInterval"

  pub external fn set_timeout(fn() -> Nil, Float) -> Int =
    "" "setTimeout"

  pub external fn inner_size() -> #(Float, Float) =
    "../ffi_globals.js" "$inner_size"
}
