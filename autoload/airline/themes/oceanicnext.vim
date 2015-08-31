if get(g:, 'airline#themes#oceanicnext#constant', 0)
  let g:airline#themes#oceanicnext#palette = {}

  " Color palette
  let s:gui00 = "#132838"
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
  let s:cterm01 = "236"
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
  let s:ctermWhite = 15

  " Normal mode
  let s:N1 = [ s:guiWhite , s:gui0D , s:ctermWhite , s:cterm0D  ]
  let s:N2 = [ s:guiWhite , s:gui03 , s:ctermWhite , s:cterm03  ]
  let s:N3 = [ s:guiWhite , s:gui01 , s:ctermWhite , s:cterm01 ]

  let g:airline#themes#oceanicnext#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
  let g:airline#themes#oceanicnext#palette.normal_modified = {
        \ 'airline_c': [s:gui09, s:gui04, s:cterm09, s:cterm04, ''],
        \ }

  " Insert mode
  let s:I1 = [ s:guiWhite , s:gui0B , s:ctermWhite , s:cterm0B  ]
  let s:I2 = [ s:guiWhite , s:gui03 , s:ctermWhite , s:cterm03  ]
  let s:I3 = [ s:guiWhite , s:gui01 , s:ctermWhite , s:cterm01 ]
  let g:airline#themes#oceanicnext#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#oceanicnext#palette.insert_modified = copy(g:airline#themes#oceanicnext#palette.normal_modified)

  " Replace mode
  let s:R1 = [ s:guiWhite , s:gui08 , s:ctermWhite, s:cterm08 ]
  let s:R2 = [ s:guiWhite , s:gui03 , s:ctermWhite, s:cterm03 ]
  let s:R3 = [ s:guiWhite , s:gui01 , s:ctermWhite, s:cterm01 ]

  " Visual mode
  let s:V1 = [ s:guiWhite , s:gui09 , s:ctermWhite , s:cterm09 ]
  let s:V2 = [ s:guiWhite , s:gui03 , s:ctermWhite , s:cterm03 ]
  let s:V3 = [ s:guiWhite , s:gui01 , s:ctermWhite, s:cterm01 ]
  let g:airline#themes#oceanicnext#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  " let g:airline#themes#oceanicnext#palette.visual_modified = copy(g:airline#themes#oceanicnext#palette.insert_modified)
  "
  " Inactive window
  let s:IA = [s:gui01, s:gui04, s:cterm01, s:cterm04, '']
  let g:airline#themes#oceanicnext#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
  let g:airline#themes#oceanicnext#palette.inactive_modified = {
        \ 'airline_c': [s:gui09, '', s:cterm09, '', ''],
        \ }
else
  function! airline#themes#oceanicnext#refresh()
    let g:airline#themes#oceanicnext#palette = {}

    let g:airline#themes#oceanicnext#palette.accents = {
          \ 'red': airline#themes#get_highlight('Constant'),
          \ }

    let s:N1 = airline#themes#get_highlight2(['DiffText', 'bg'], ['DiffText', 'fg'], 'bold')
    let s:N2 = airline#themes#get_highlight2(['Visual', 'fg'], ['Visual', 'bg'])
    let s:N3 = airline#themes#get_highlight('CursorLine')
    let g:airline#themes#oceanicnext#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

    let group = airline#themes#get_highlight('vimCommand')
    let g:airline#themes#oceanicnext#palette.normal_modified = {
          \ 'statusline': [ group[0], '', group[2], '', '' ]
          \ }

    let s:I1 = airline#themes#get_highlight2(['DiffText', 'bg'], ['DiffAdded', 'fg'], 'bold')
    let s:I2 = airline#themes#get_highlight2(['DiffAdded', 'fg'], ['Normal', 'bg'])
    let s:I3 = s:N3
    let g:airline#themes#oceanicnext#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
    let g:airline#themes#oceanicnext#palette.insert_modified = g:airline#themes#oceanicnext#palette.normal_modified

    let s:R1 = airline#themes#get_highlight2(['DiffText', 'bg'], ['WarningMsg', 'fg'], 'bold')
    let s:R2 = s:N2
    let s:R3 = s:N3
    let g:airline#themes#oceanicnext#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
    let g:airline#themes#oceanicnext#palette.replace_modified = g:airline#themes#oceanicnext#palette.normal_modified

    let s:V1 = airline#themes#get_highlight2(['DiffText', 'bg'], ['Constant', 'fg'], 'bold')
    let s:V2 = airline#themes#get_highlight2(['Constant', 'fg'], ['Normal', 'bg'])
    let s:V3 = s:N3
    let g:airline#themes#oceanicnext#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
    let g:airline#themes#oceanicnext#palette.visual_modified = g:airline#themes#oceanicnext#palette.normal_modified

    let s:IA = airline#themes#get_highlight2(['NonText', 'fg'], ['CursorLine', 'bg'])
    let g:airline#themes#oceanicnext#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
    let g:airline#themes#oceanicnext#palette.inactive_modified = {
          \ 'airline_c': [ group[0], '', group[2], '', '' ]
          \ }

    " Warnings
    let s:WI = airline#themes#get_highlight2(['WarningMsg', 'bg'], ['WarningMsg', 'fg'], 'bold')
    let g:airline#themes#oceanicnext#palette.normal.airline_warning = [
         \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
         \ ]

    let g:airline#themes#oceanicnext#palette.normal_modified.airline_warning =
        \ g:airline#themes#oceanicnext#palette.normal.airline_warning


    let g:airline#themes#oceanicnext#palette.insert.airline_warning =
        \ g:airline#themes#oceanicnext#palette.normal.airline_warning

    let g:airline#themes#oceanicnext#palette.insert_modified.airline_warning =
        \ g:airline#themes#oceanicnext#palette.normal.airline_warning

    let g:airline#themes#oceanicnext#palette.visual.airline_warning =
        \ g:airline#themes#oceanicnext#palette.normal.airline_warning

    let g:airline#themes#oceanicnext#palette.visual_modified.airline_warning =
        \ g:airline#themes#oceanicnext#palette.normal.airline_warning

    let g:airline#themes#oceanicnext#palette.replace.airline_warning =
        \ g:airline#themes#oceanicnext#palette.normal.airline_warning

    let g:airline#themes#oceanicnext#palette.replace_modified.airline_warning =
        \ g:airline#themes#oceanicnext#palette.normal.airline_warning

  endfunction
  call airline#themes#oceanicnext#refresh()
endif
