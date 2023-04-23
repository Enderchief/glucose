import { Error, Ok } from "./gleam.mjs";

export function alert$(message) {
  alert(message);
}

export const $h_ = () => history;
export const $h_length = () => history.length;
export const $h_state = () => history.state;

export const $inner_size = () => [innerHeight, innerWidth];

export const $ls_length = () => localStorage.length;

export function $ls_get_item(key) {
  const item = localStorage.getItem(key);
  if (item) return Ok(item);
  return Error(undefined);
}
