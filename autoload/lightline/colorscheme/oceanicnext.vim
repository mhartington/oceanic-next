" ============================================================
" oceanicnext
" Author: Mike Hartington
" ============================================================

let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {} }

let s:p.normal.left = [[["#343d46", 237], ["#6699cc", 68]], [["#ffffff", 15], ["#65737e", 243]]]
let s:p.normal.middle = [[["#ffffff", 15], ["#343d46", 237]]]
let s:p.normal.right = [[["#ffffff", 15], ["#65737e", 243]], [["#ffffff", 15], ["#65737e", 243]]]
let s:p.normal.error = [[["#343d46", 237], ["#ec5f67", 203]]]
let s:p.normal.warning = [[["#343d46", 237], ["#fac863", 221]]]

let s:p.inactive.left = [[["#d8dee9", 253], ["#65737e", 243]], [["#d8dee9", 253], ["#343d46", 237]]]
let s:p.inactive.middle = [[["#65737e", 243], ["#343d46", 237]]]
let s:p.inactive.right = [[["#d8dee9", 253], ["#343d46", 237]], [["#d8dee9", 253], ["#65737e", 243]]]

let s:p.insert.left = [[["#343d46", 237], ["#99c794", 114]], [["#ffffff", 15], ["#65737e", 243]]]
let s:p.insert.middle = [[["#ffffff", 15], ["#343d46", 237]]]
let s:p.insert.right = [[["#ffffff", 15], ["#65737e", 243]], [["#ffffff", 15], ["#99c794", 114]]]

let s:p.replace.left = [[["#343d46", 237], ["#ec5f67", 203]], [["#ffffff", 15], ["#65737e", 243]]]
let s:p.replace.middle = [[["#ffffff", 15], ["#343d46", 237]]]
let s:p.replace.right = [[["#ffffff", 15], ["#65737e", 243]], [["#ffffff", 15], ["#ec5f67", 203]]]

let s:p.visual.left = [[["#343d46", 237], ["#f99157", 209]], [["#ffffff", 15], ["#65737e", 243]]]
let s:p.visual.middle = [[["#ffffff", 15], ["#343d46", 237]]]
let s:p.visual.right = [[["#ffffff", 15], ["#65737e", 243]], [["#ffffff", 15], ["#f99157", 209]]]

let s:p.tabline.left = [[["#65737e", 243], ["#343d46", 237]]]
let s:p.tabline.tabsel = [[["#ffffff", 15], ["#65737e", 243]]]
let s:p.tabline.middle = [[["#65737e", 243], ["#343d46", 237]]]
let s:p.tabline.right = [[["#65737e", 243], ["#343d46", 237]]]

let g:lightline#colorscheme#oceanicnext#palette = lightline#colorscheme#flatten(s:p)
