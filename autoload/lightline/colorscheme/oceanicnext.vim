" Color palette
let s:base00 = ['#1b2b34', 0]
let s:base01 = ['#343d46', 238]
let s:base02 = ['#4f5b66', 239]
let s:base03 = ['#65737e', 59]
let s:base04 = ['#a7adba', 145]
let s:base05 = ['#c0c5ce', 152]
let s:base06 = ['#cdd3de', 188]
let s:base07 = ['#d8dee9', 15]
let s:base08 = ['#ec5f67', 203]
let s:base09 = ['#f99157', 209]
let s:base0A = ['#fac863', 221]
let s:base0B = ['#99c794', 114]
let s:base0C = ['#5fb3b3', 73]
let s:base0D = ['#6699cc', 68]
let s:base0E = ['#c594c5', 176]
let s:base0F = ['#ab7967', 137]
let s:white = ['#ffffff', 15]

let s:p = {'normal': {}, 'insert': {}, 'visual': {}, 'replace': {}, 'inactive': {}}
let s:p.normal.left = [[s:white, s:base0D, 'bold'], [s:white, s:base03]]
let s:p.normal.middle = [[s:white, s:base01]]
let s:p.normal.right = [[s:white, s:base0D], [s:white, s:base0D]]
let s:p.insert.left = [[s:white, s:base0B, 'bold'], [s:white, s:base03]]
let s:p.insert.middle = [[s:white, s:base01]]
let s:p.insert.right = [[s:white, s:base0B], [s:white, s:base0B]]
let s:p.visual.left = [[s:white, s:base09, 'bold'], [s:white, s:base03]]
let s:p.visual.middle = [[s:white, s:base01]]
let s:p.visual.right = [[s:white, s:base09], [s:white, s:base09]]
let s:p.replace.left = [[s:white, s:base08, 'bold'], [s:white, s:base03]]
let s:p.replace.middle = [[s:white, s:base01]]
let s:p.replace.right = [[s:white, s:base08], [s:white, s:base08]]
let s:p.inactive.left = [[s:base07, s:base03], [s:base03, s:base01]]
let s:p.inactive.middle = [[s:base03, s:base01]]
let s:p.inactive.right = [[s:base03, s:base01], [s:base03, s:base01]]

let g:lightline#colorscheme#oceanicnext#palette = lightline#colorscheme#flatten(s:p)
