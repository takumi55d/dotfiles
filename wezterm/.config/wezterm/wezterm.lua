local wezterm = require("wezterm")
local act = wezterm.action

local config = {} -- Create an empty configuration table

config.font = wezterm.font_with_fallback({
	"JetBrains Mono",
	"Fira Code",
	"Noto Sans",
	"Noto Sans CJK SC",
	"Noto Sans Symbols",
})

config.warn_about_missing_glyphs = false

config.color_scheme = "Catppuccin Mocha" -- Set the color scheme to Catppuccin Mocha
config.window_background_opacity = 0.6

-- Hide the title bar and borders
config.window_decorations = "NONE"

-- Set the initial window size to leave a 2 cm margin around the screen
local dpi = 96 -- Assuming a standard DPI of 96
local cm_to_inch = 0.393701
local margin_cm = 2
local margin_inch = margin_cm * cm_to_inch
local margin_pixels = margin_inch * dpi

-- Adjust the initial size to consider the padding
config.initial_cols = 180
config.initial_rows = 40

-- Hide the tab bar when only one tab is open
config.hide_tab_bar_if_only_one_tab = true

-- Define key bindings within the config table
config.keys = {
	{ key = "t", mods = "CTRL", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = "w", mods = "CTRL", action = act.CloseCurrentTab({ confirm = true }) },
	{ key = "5", mods = "CTRL", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "/", mods = "CTRL", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
}

return config
