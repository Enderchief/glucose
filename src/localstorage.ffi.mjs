import { Error, Ok } from "./gleam.mjs";

export const length = () => localStorage.length;
export const clear = localStorage.clear.bind(localStorage);

export function get_item(key) {
  const item = localStorage.getItem(key);
  if (item) return new Ok(item);
  return new Error(undefined);
}

export const key = localStorage.key.bind(localStorage);
export const remove_item = localStorage.removeItem.bind(localStorage);
export const set_item = localStorage.removeItem.bind(localStorage);

