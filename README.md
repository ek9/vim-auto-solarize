vim-auto-solarize
=================

[vim-auto-solarize][0] plugin automatically starts solarized dark or solarized
light theme based on time of the day.

## Install

Install `vim-colors-solarized` and `vim-auto-solarize` using Vundle or
Pathogen:

```vim
Bundle 'altercation/vim-colors-solarized'
Bundle 'ek9/vim-auto-solarize'
```

## Usage

You have the following configuration options:

- **g:auto_solarize_start_light** (Default: *'0700'*) - controls the time when
  light background will be activated. Format is HHMM (HH - hours (0-23); MM-
  minutes (0-59)). To disable, set to `2400`. Example:

   ```vim
   let g:auto_solarize_start_light = '0700'
   ```

   You can set the time to any value, even higher than
   `g:auto_solarize_start_dark`. Plugin is smart enough to work correctly with
   different time configurations.

- **g:auto_solarize_start_dark** (Default: *'1850'*) - controls the time when
  dark background will be activated. Format is HHMM (HH - hours (0-23); MM-
  minutes (0-59)). To disable, set to `2400`. Example:

     ```vim
    let g:auto_solarize_start_dark = '1850'
    ```

   You can set the time to any value, even lower than
   `g:auto_solarize_start_light`. Plugin is smart enough to work correctly with
   different time configurations.


- **g:auto_solarize_togglebg_key** (Default: *'<F8>'*) - allows you to change
  key for toggling background between light and dark. Example:

    ```vim
    let g:auto_solarize_togglebg_key = '<F8>'
    ```

- **g:auto_solarize_check_on_save** (Default: *1*) - allows you to control
  if AutoSolarize checks should be applied upon file save. Set to *0* to
  disable. Example:

    ```vim
    let g:auto_solarize_check_on_save = 0
    ```
## Authors

Copyright (c) 2015-2017 ek9 <dev@ek9.co> (https://ek9.co).

## License

Licensed under [MIT License](LICENSE).

