import glucose/dom

if javascript {
  /// Select the first element matching the selector string
  pub external fn query_selector(selector: String) -> dom.HTMLElement =
    "" "document.querySelector"

  /// Select all elements matching the selector string
  pub external fn query_selector_all(selector: String) -> List(dom.HTMLElement) =
    "../ffi_doc.js" "query_selector_all"

  pub external fn append_child(node: dom.HTMLElement) -> dom.HTMLElement =
    "" "document.appendChild"

  pub external fn doc() -> dom.Document =
    "../ffi_doc.js" "doc"

  pub external fn url() -> string =
    "../ffi_doc.js" "url"

  pub external fn body() -> dom.HTMLElement =
    "../ffi_doc.js" "body"

  pub external fn content_type() -> String =
    "../ffi_doc.js" "contentType"

  pub external fn document_uri() -> String =
    "../ffi_doc.js" "document_uri"

  pub external fn get_cookie() -> String =
    "../ffi_doc.js" "get_cookie"

  pub external fn set_cookie(v: String) -> Nil =
    "../ffi_doc.js" "set_cookie"

  pub external fn head() -> dom.HTMLElement =
    "../ffi_doc.js" "head"

  pub external fn location() -> String =
    "../ffi_doc.js" "location"

  pub external fn set_location(url: String) -> Nil =
    "../ffi_doc.js" "set_location"

  pub external fn ready_state() -> String =
    "../ffi_doc.js" "ready_state"

  pub external fn referrer() -> String =
    "../ffi_doc.js" "referrer"

  pub external fn title() -> String =
    "../ffi_doc.js" "title"

  pub external fn set_title(v: String) -> Nil =
    "../ffi_doc.js" "set_title"

  pub external fn create_element(tag: String) -> dom.HTMLElement =
    "" "document.createElement"

  pub external fn create_text_node(data: String) -> dom.HTMLElement =
    "" "document.createTextNode"

  pub external fn get_selection() -> dom.HTMLElement =
    "" "document.getSelection"

  pub external fn has_focus() -> Bool =
    "" "document.hasFocus"
}
