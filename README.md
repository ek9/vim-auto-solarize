# vim-auto-solarize

```vim
Bundle 'altercation/vim-colors-solarized'
Bundle 'file:///vim-auto-solarize'
```

## Configuration

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

