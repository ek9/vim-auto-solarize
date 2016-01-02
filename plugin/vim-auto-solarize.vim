" vim-auto-solarize

" Set defaults for unset configuration variables for the plugin
if !exists("g:auto_solarize_start_dark")
    let g:auto_solarize_start_dark = '1850'
endif
if !exists("g:auto_solarize_start_light")
    let g:auto_solarize_start_light = '0700'
endif
if !exists("g:auto_solarize_togglebg_key")
    let g:auto_solarize_togglebg_key = '<F8>'
endif
if !exists("g:auto_solarize_check_on_save")
    let g:auto_solarize_check_on_save = 1
endif

" Set colorscheme to solarized (requires vim-colors-solarized)
colorscheme solarized
" map togglebg key (F8) to toggle dark/light mode (requires vim-colors-solarized)
call togglebg#map(g:auto_solarize_togglebg_key)

" AutoSolarize function is responsible on figuring out which backgroud
" (dark or light) to use depending on the time of the day and defined parameters
function! AutoSolarize()"{
    let current_time = strftime("%H%M")
    let start_light = g:auto_solarize_start_light
    let start_dark = g:auto_solarize_start_dark

    " comparison operations are according to which start time is later
    if start_light < start_dark
        " compare against start_light first, as it is lower
        if current_time >= start_light && current_time < start_dark
            set background=light
        else
            set background=dark
        endif
    else
        " compare against start_dark first, as it is lower
        if current_time >= start_dark && current_time < start_light
            set background=dark
        else
            set background=light
        endif
    endif
endfunction"}

" AutoSolarize if plugin is not disabled
if !exists("g:auto_solarize_disabled")
    " auto_solarize
    call AutoSolarize()

    " make sure to AutoSolarize during save
    if g:auto_solarize_check_on_save == 1 && has('autocmd')
        autocmd bufwritepost * call AutoSolarize()
    endif
endif

