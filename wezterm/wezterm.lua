local wezterm = require("wezterm")
local rose_pine = require("lua/rose-pine")
local font = wezterm.font("SF Mono", { weight = "Regular", stretch = "Normal", style = "Normal" })
local window_frame = rose_pine.window_frame()
window_frame.font = font
window_frame.font_size = 13
local colors = rose_pine.colors()
colors.tab_bar.active_tab = { bg_color = colors.background, fg_color = colors.foreground }
colors.tab_bar.inactive_tab_hover = colors.tab_bar.active_tab
colors.tab_bar.inactive_tab_edge = colors.background

return {
  initial_cols = 165,
  initial_rows = 40,
  window_frame = window_frame,
  window_padding = {
    left = 20,
    right = 20,
    top = 10,
    bottom = 10,
  },
  window_decorations = "INTEGRATED_BUTTONS|RESIZE|MACOS_FORCE_ENABLE_SHADOW",
  window_background_opacity = 0.999,
  adjust_window_size_when_changing_font_size = false,
  colors = colors,
  use_fancy_tab_bar = true,
  show_tabs_in_tab_bar = true,
  show_new_tab_button_in_tab_bar = false,
  show_tab_index_in_tab_bar = true,
  font_size = 13,
  font = font,
  font_rules = {
    {
      italic = true,
      font = font,
    },
    {
      intensity = "Bold",
      italic = false,
      font = font,
    },
    {
      intensity = "Bold",
      italic = true,
      font = font,
    },
  },
  line_height = 1.2,
  freetype_render_target = "Light",
  send_composed_key_when_left_alt_is_pressed = true,
  keys = {
    {
      key = "t",
      mods = "CMD|SHIFT",
      action = wezterm.action.ShowTabNavigator,
    },
  },
}
