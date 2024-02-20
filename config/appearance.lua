local wezterm = require('wezterm')

return {

  -- Old Backup --
  -- color_scheme = "Catppuccin Mocha" ,
  -- use_fancy_tab_bar = false,
  -- hide_tab_bar_if_only_one_tab = true,
  -- tab_bar_at_bottom = true,
  -- window_decorations = "RESIZE",
  -- show_new_tab_button_in_tab_bar = false,
  -- window_background_opacity = 0.9,
  -- macos_window_background_blur = 70,
  -- text_background_opacity = 0.9,
  -- adjust_window_size_when_changing_font_size = false,
  -- window_padding = {
  --   left   = 20,
  --   right  = 20,
  --   top    = 20,
  --   bottom = 5,
  -- }

  animation_fps = 120,
  max_fps = 120,
  front_end = 'WebGpu',
  webgpu_power_preference = 'HighPerformance',

  -- color --
  color_scheme = "BlulocoDark",

  -- background --
  window_background_opacity = 0.85,

  -- scroll bar --
  enable_scroll_bar = true,
  min_scroll_bar_height = "3cell",

  -- tab bar --
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = false,
  use_fancy_tab_bar = true,
  tab_bar_at_bottom = true,
  tab_max_width = 30,
  show_tab_index_in_tab_bar = true,
  switch_to_last_active_tab_when_closing_tab = true,

  -- cursor --
  default_cursor_style = "BlinkingBlock",
  cursor_blink_ease_in = "Constant",
  cursor_blink_ease_out = "Constant",
  cursor_blink_rate = 900,
  
  -- window --
  window_decorations = "INTEGRATED_BUTTONS|RESIZE",
  integrated_title_button_style = "Windows",
  integrated_title_button_color = "auto",
  integrated_title_button_alignment = "Right",
  initial_cols = 90,
  initial_rows = 30,
  window_padding = {
     left = 20,
     right = 10,
     top = 12,
     bottom = 5,
  },
  window_close_confirmation = 'AlwaysPrompt',
  window_frame = {
     active_titlebar_bg = '#2e4e7e',
     inactive_titlebar_bg = '#a1afc9',
  },

  inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
}
