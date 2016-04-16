" Color palette
let s:gui00 = "#1b2b34"
let s:gui01 = "#343d46"
let s:gui02 = "#4f5b66"
let s:gui03 = "#65737e"
let s:gui04 = "#a7adba"
let s:gui05 = "#c0c5ce"
let s:gui06 = "#cdd3de"
let s:gui07 = "#d8dee9"
let s:gui08 = "#ec5f67"
let s:gui09 = "#f99157"
let s:gui0A = "#fac863"
let s:gui0B = "#99c794"
let s:gui0C = "#5fb3b3"
let s:gui0D = "#6699cc"
let s:gui0E = "#c594c5"
let s:gui0F = "#ab7967"
let s:cterm00 = "00"
let s:cterm01 = "238"
let s:cterm02 = "239"
let s:cterm03 = "59"
let s:cterm04 = "145"
let s:cterm05 = "152"
let s:cterm06 = "188"
let s:cterm07 = "15"
let s:cterm08 = "203"
let s:cterm09 = "209"
let s:cterm0A = "221"
let s:cterm0B = "114"
let s:cterm0C = "73"
let s:cterm0D = "68"
let s:cterm0E = "176"
let s:cterm0F = "137"

let s:guiWhite = "#ffffff"
let s:ctermWhite = "15"

" Normal mode
let s:N1 = [ s:guiWhite , s:gui0D , s:ctermWhite , s:cterm0D  ]
let s:N2 = [ s:guiWhite , s:gui03 , s:ctermWhite , s:cterm03  ]

if &background == "light"
  let s:N3 = [ s:gui00 , s:gui05 , s:cterm00 , s:cterm05  ]
endif
if &background == "dark"
  let s:N3 = [ s:guiWhite , s:gui01 , s:ctermWhite , s:cterm01  ]
endif



" Insert mode
let s:I1 = [ s:guiWhite , s:gui0B , s:ctermWhite , s:cterm0B  ]
let s:I2 = [ s:guiWhite , s:gui03 , s:ctermWhite , s:cterm03  ]
let s:I3 = [ s:guiWhite , s:gui01 , s:ctermWhite , s:cterm01 ]

" Visual mode
let s:V1 = [ s:guiWhite , s:gui09 , s:ctermWhite , s:cterm09 ]
let s:V2 = [ s:guiWhite , s:gui03 , s:ctermWhite , s:cterm03 ]
let s:V3 = [ s:guiWhite , s:gui01 , s:ctermWhite, s:cterm01 ]


" Replace mode
let s:R1 = [ s:guiWhite , s:gui08 , s:ctermWhite, s:cterm08 ]
let s:R2 = [ s:guiWhite , s:gui03 , s:ctermWhite, s:cterm03 ]
let s:R3 = [ s:guiWhite , s:gui01 , s:ctermWhite, s:cterm01 ]

let g:airline#themes#oceanicnext#palette = {}
let g:airline#themes#oceanicnext#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#oceanicnext#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#oceanicnext#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#oceanicnext#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#oceanicnext#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

" Inactive mode
let s:IN1 = [ s:gui07 , s:gui03 , s:cterm07 , s:cterm03 ]
let s:IN2 = [ s:gui07 , s:gui01 , s:cterm07  , s:cterm01 ]
let s:IA = [ s:IN1[1] , s:IN2[1] , s:IN1[3] , s:IN2[3] , '' ]
let g:airline#themes#oceanicnext#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 = [ s:guiWhite , s:gui01 , s:ctermWhite , s:cterm01  ]
let s:CP2 = [ s:guiWhite , s:gui03 , s:ctermWhite , s:cterm03  ]
let s:CP3 = [ s:guiWhite , s:gui0D , s:ctermWhite , s:cterm0D  ]

let g:airline#themes#oceanicnext#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)
