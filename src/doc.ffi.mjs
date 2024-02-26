import { Error, List, Ok } from "./gleam.mjs";

export function query_selector(selectors) {
  const node = document.querySelector(selectors);
  if (node) return new Ok(node);
  return new Error(node);
}

export function query_selector_all(selectors) {
  const nodes = document.querySelectorAll(selectors);
  return List.fromArray(Array.from(nodes));
}

export function doc() {
  return document;
}

export function url() {
  return document.URL;
}

export function body() {
  return document.body;
}

export function contentType() {
  return document.contentType;
}

export function document_uri() {
  return document.documentURI;
}

export function get_cookie() {
  return document.cookie;
}

export function set_cookie(v) {
  return (document.cookie = v);
}

export function head() {
  return document.head;
}

export function location() {
  return document.location;
}

export function set_location(url) {
  return (document.location = url);
}

export function ready_state() {
  return document.readyState;
}

export function referrer() {
  return document.referrer;
}

export function title() {
  return document.title;
}

export function set_title(v) {
  return (document.title = v);
}

export function create_element(tag) {
  return document.createElement(tag);
}

export function create_text_node(tag) {
  return document.createTextNode(tag);
}

export function append_child(node) {
  return document.appendChild(node);
}

export function get_selection() {
  const node = document.getSelection();
  if (node) return new Ok(node);
  return new Error();
}

export function has_focus() {
  return document.hasFocus();
}
