" Normal mode
let s:N1 = [ '#ffffff' , '#6699CC' , 15 , 04  ]
let s:N2 = [ '#ffffff' , '#65737E' , 15 , 08  ]
let s:N3 = [ '#ffffff' , '#121212' , 15 , 233 ]

" Insert mode
let s:I1 = [ '#ffffff' , '#005fff' , 15 , 33  ]
let s:I2 = [ '#ffffff' , '#00afff' , 15 , 39  ]
let s:I3 = [ '#ffffff' , '#121212' , 15 , 233 ]

" Visual mode
let s:V1 = [ '#121212' , '#ff5f00' , 233 , 202 ]
let s:V2 = [ '#121212' , '#ffaf00' , 233 , 214 ]
let s:V3 = [ '#ffffff' , '#121212' , 15  , 233 ]

" Replace mode
let s:R1 = [ '#ffffff' , '#ff0000' , 15 , 196 ]
let s:R2 = [ '#ffffff' , '#ff5f5f' , 15 , 203 ]
let s:R3 = [ '#ffffff' , '#121212' , 15 , 233 ]

let g:airline#themes#oceanicnext#palette = {}
let g:airline#themes#oceanicnext#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#oceanicnext#palette.normal_modified = {
        \ 'airline_c': ['#ffffff' , '#F99157' , 15 , 172, ''],
        \ }

let g:airline#themes#oceanicnext#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#oceanicnext#palette.insert_modified = copy(g:airline#themes#oceanicnext#palette.normal_modified)

let g:airline#themes#oceanicnext#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#oceanicnext#palette.visual_modified = copy(g:airline#themes#oceanicnext#palette.insert_modified)

let g:airline#themes#oceanicnext#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#oceanicnext#palette.replace_modified = copy(g:airline#themes#oceanicnext#palette.insert_modified)

" Inactive mode
let s:IN1 = [ '#9e9e9e' , '#626262' , 247 , 241 ]
let s:IN2 = [ '#ffffff' , '#121212' , 15  , 233 ]

let s:IA = [ s:IN1[1] , s:IN2[1] , s:IN1[3] , s:IN2[3] , '' ]
let g:airline#themes#oceanicnext#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" CtrlP
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let s:CP1 =  [ '#ffffff' , '#0087af' , 15 , 31 ]
let s:CP2 =  [ '#ffffff' , '#6699CC' , 15 , 04 ]
let s:CP3 =  [ '#5f00af' , '#ffffff' , 232 , 15 ]

let g:airline#themes#oceanicnext#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(s:CP1, s:CP2, s:CP3)

" Tabline
let g:airline#themes#oceanicnext#palette.tabline = {
      \ 'airline_tab':     [ '#ffffff' , '#6699CC' ,  15 , 04  , '' ],
      \ 'airline_tabsel':  [ '#ffffff' , '#6699CC' ,  15 , 04  , '' ],
      \ 'airline_tabtype': [ '#ffffff' , '#6699CC' ,  15 , 04  , '' ],
      \ 'airline_tabfill': [ '#ffffff' , '#121212' ,  15 , 233 , '' ],
      \ 'airline_tabmod':  [ '#ffffff' , '#ff5f5f' ,  15 , 33  , '' ]
      \ }
