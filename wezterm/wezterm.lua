local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

config.color_scheme = "Catppuccin Mocha"
config.window_decorations = "RESIZE"
config.enable_wayland = false
config.enable_tab_bar = false
config.font = wezterm.font("RecMonoCasual NF", { weight = "Regular", italic = true })
config.font_size = 16
config.harfbuzz_features = { "calt=1", "clig=1", "liga=1" }
config.hide_mouse_cursor_when_typing = true
config.default_cursor_style = "BlinkingBar"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.disable_default_key_bindings = true

-- config.keys = {
--
--
-- 	{ key = "X", mods = "SHIFT|CTRL", action = act.ActivateCopyMode },
-- 	{ key = "Z", mods = "SHIFT|CTRL", action = act.TogglePaneZoomState },
-- 	{ key = "v", mods = "SHIFT|CTRL", action = act.PasteFrom("Clipboard") },
-- 	{ key = "phys:Space", mods = "SHIFT|CTRL", action = act.QuickSelect },
-- }

config.keys = {
	{ key = "Enter", mods = "ALT", action = act.ToggleFullScreen },
	{ key = "=", mods = "CTRL", action = act.IncreaseFontSize },
	{ key = "-", mods = "CTRL", action = act.DecreaseFontSize },
	{ key = "C", mods = "SHIFT|CTRL", action = act.CopyTo("Clipboard") },
	{ key = "V", mods = "SHIFT|CTRL", action = act.PasteFrom("Clipboard") },
	{ key = "Copy", mods = "NONE", action = act.CopyTo("Clipboard") },
	{ key = "Paste", mods = "NONE", action = act.PasteFrom("Clipboard") },
	{ key = "M", mods = "SHIFT|CTRL", action = act.ActivateCommandPalette },

	{
		key = "P",
		mods = "CTRL|SHIFT",
		action = act.ActivateKeyTable({
			name = "pane",
			one_shot = false,
		}),
	},
	{
		key = "T",
		mods = "CTRL|SHIFT",
		action = act.ActivateKeyTable({
			name = "tab",
			one_shot = false,
		}),
	},
	{
		key = "H",
		mods = "CTRL|SHIFT",
		action = act.ActivateKeyTable({
			name = "history",
			one_shot = false,
		}),
	},
}

config.key_tables = {
	tab = {
		{ key = "n", action = act.SpawnTab("CurrentPaneDomain") },
		{ key = "x", action = act.CloseCurrentTab({ confirm = true }) },
		{ key = "l", action = act.ActivateTabRelative(1) },
		{ key = "h", action = act.ActivateTabRelative(-1) },
		{ key = "Escape", action = "PopKeyTable" },
	},
	pane = {
		{ key = "d", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "r", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "h", action = act.ActivatePaneDirection("Left") },
		{ key = "l", action = act.ActivatePaneDirection("Right") },
		{ key = "k", action = act.ActivatePaneDirection("Up") },
		{ key = "j", action = act.ActivatePaneDirection("Down") },
		{ key = "LeftArrow", action = act.AdjustPaneSize({ "Left", 1 }) },
		{ key = "RightArrow", action = act.AdjustPaneSize({ "Right", 1 }) },
		{ key = "UpArrow", action = act.AdjustPaneSize({ "Up", 1 }) },
		{ key = "DownArrow", action = act.AdjustPaneSize({ "Down", 1 }) },
		{ key = "Escape", action = "PopKeyTable" },
	},
	history = {
		{ key = "PageUp", action = act.ScrollByPage(-1) },
		{ key = "PageDown", action = act.ScrollByPage(1) },
		{ key = "k", action = act.ScrollByPage(-0.5) },
		{ key = "j", action = act.ScrollByPage(0.5) },
		{ key = "Escape", action = "PopKeyTable" },
	},
}

return config
