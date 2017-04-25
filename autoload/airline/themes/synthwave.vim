" [synthwave.vim](https://github.com/exitface/synthwave.vim/)

" This is a [vim-airline](https://github.com/vim-airline/vim-airline) theme for use with
" the [synthwave.vim](https://github.com/exitface/synthwave.vim) colorscheme.

" It is based on [onedark.vim](https://github.com/joshdick/onedark.vim/),
" which in turn is based on vim-airline's ["tomorrow" theme](https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/tomorrow.vim).
function! airline#themes#synthwave#refresh()

  let s:term_red = 204
  let s:term_green = 114
  let s:term_yellow = 180
  let s:term_blue = 39
  let s:term_purple = 170
  let s:term_white = 145
  let s:term_black = 235
  let s:term_grey = 236

  let g:airline#themes#synthwave#palette = {}

  let g:airline#themes#synthwave#palette.accents = {
        \ 'red': [ '#943b4e', '', s:term_red, 0 ]
        \ }

  let s:N1 = [ '#312e39', '#2e997b', s:term_black, s:term_green ]
  let s:N2 = [ '#bfb8cc', '#423f4d', s:term_white, s:term_grey ]
  let s:N3 = [ '#2e997b', '#312e39', s:term_green, '' ]
  let g:airline#themes#synthwave#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

  let group = airline#themes#get_highlight('vimCommand')
  let g:airline#themes#synthwave#palette.normal_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  let s:I1 = [ '#312e39', '#6382bf', s:term_black, s:term_blue ]
  let s:I2 = s:N2
  let s:I3 = [ '#6382bf', '#312e39', s:term_blue, '' ]
  let g:airline#themes#synthwave#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
  let g:airline#themes#synthwave#palette.insert_modified = g:airline#themes#synthwave#palette.normal_modified

  let s:R1 = [ '#312e39', '#943b4e', s:term_black, s:term_red ]
  let s:R2 = s:N2
  let s:R3 = [ '#943b4e', '#312e39', s:term_red, '' ]
  let g:airline#themes#synthwave#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
  let g:airline#themes#synthwave#palette.replace_modified = g:airline#themes#synthwave#palette.normal_modified

  let s:V1 = [ '#312e39', '#539ba6', s:term_black, s:term_purple ]
  let s:V2 = s:N2
  let s:V3 = [ '#539ba6', '#312e39', s:term_purple, '' ]
  let g:airline#themes#synthwave#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
  let g:airline#themes#synthwave#palette.visual_modified = g:airline#themes#synthwave#palette.normal_modified

  let s:IA1 = [ '#312e39', '#bfb8cc', s:term_black, s:term_white ]
  let s:IA2 = [ '#bfb8cc', '#423f4d', s:term_white, s:term_grey ]
  let s:IA3 = s:N2
  let g:airline#themes#synthwave#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
  let g:airline#themes#synthwave#palette.inactive_modified = {
        \ 'airline_c': [ group[0], '', group[2], '', '' ]
        \ }

  " Warning/Error styling code from vim-airline's ["base16" theme](https://github.com/vim-airline/vim-airline-themes/blob/master/autoload/airline/themes/base16.vim)

  " Warnings
  let s:WI = [ '#312e39', '#bf9c86', s:term_black, s:term_yellow ]
  let g:airline#themes#synthwave#palette.normal.airline_warning = [
       \ s:WI[0], s:WI[1], s:WI[2], s:WI[3]
       \ ]

  let g:airline#themes#synthwave#palette.normal_modified.airline_warning =
      \ g:airline#themes#synthwave#palette.normal.airline_warning

  let g:airline#themes#synthwave#palette.insert.airline_warning =
      \ g:airline#themes#synthwave#palette.normal.airline_warning

  let g:airline#themes#synthwave#palette.insert_modified.airline_warning =
      \ g:airline#themes#synthwave#palette.normal.airline_warning

  let g:airline#themes#synthwave#palette.visual.airline_warning =
      \ g:airline#themes#synthwave#palette.normal.airline_warning

  let g:airline#themes#synthwave#palette.visual_modified.airline_warning =
      \ g:airline#themes#synthwave#palette.normal.airline_warning

  let g:airline#themes#synthwave#palette.replace.airline_warning =
      \ g:airline#themes#synthwave#palette.normal.airline_warning

  let g:airline#themes#synthwave#palette.replace_modified.airline_warning =
      \ g:airline#themes#synthwave#palette.normal.airline_warning

  " Errors
  let s:ER = [ '#312e39', '#943b4e', s:term_black, s:term_red ]
  let g:airline#themes#synthwave#palette.normal.airline_error = [
       \ s:ER[0], s:ER[1], s:ER[2], s:ER[3]
       \ ]

  let g:airline#themes#synthwave#palette.normal_modified.airline_error =
      \ g:airline#themes#synthwave#palette.normal.airline_error

  let g:airline#themes#synthwave#palette.insert.airline_error =
      \ g:airline#themes#synthwave#palette.normal.airline_error

  let g:airline#themes#synthwave#palette.insert_modified.airline_error =
      \ g:airline#themes#synthwave#palette.normal.airline_error

  let g:airline#themes#synthwave#palette.visual.airline_error =
      \ g:airline#themes#synthwave#palette.normal.airline_error

  let g:airline#themes#synthwave#palette.visual_modified.airline_error =
      \ g:airline#themes#synthwave#palette.normal.airline_error

  let g:airline#themes#synthwave#palette.replace.airline_error =
      \ g:airline#themes#synthwave#palette.normal.airline_error

  let g:airline#themes#synthwave#palette.replace_modified.airline_error =
      \ g:airline#themes#synthwave#palette.normal.airline_error

endfunction

call airline#themes#synthwave#refresh()
