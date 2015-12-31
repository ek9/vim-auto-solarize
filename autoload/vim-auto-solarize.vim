" vim-auto-solarize

if exists("g:loaded_auto_solarize_autoloader")
  finish
endif
let g:loaded_auto_solarize_autoload = 1

function! AutoSolarize#version()
  return '0.9.2'
endfunction
