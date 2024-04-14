local wezterm = require("wezterm")
--local platform = require('utils.platform')()
local act = wezterm.action

local mod = {}
mod.SUPER = "CTRL"
mod.SUPER_REV = "SHIFT|CTRL"

-- if platform.is_mac then
--    mod.SUPER = 'SUPER'
--    mod.SUPER_REV = 'SUPER|CTRL'
-- elseif platform.is_win then
--    mod.SUPER = 'ALT' -- to not conflict with Windows key shortcuts
--    mod.SUPER_REV = 'ALT|CTRL'
-- end

local keys = {
	{ key = "Enter", mods = "ALT", action = act.ToggleFullScreen },
	{ key = "=", mods = mod.SUPER, action = act.IncreaseFontSize },
	{ key = "-", mods = mod.SUPER, action = act.DecreaseFontSize },
	{ key = "C", mods = mod.SUPER_REV, action = act.CopyTo("Clipboard") },
	{ key = "V", mods = mod.SUPER_REV, action = act.PasteFrom("Clipboard") },
	{ key = "Copy", mods = "NONE", action = act.CopyTo("Clipboard") },
	{ key = "Paste", mods = "NONE", action = act.PasteFrom("Clipboard") },
	{ key = "M", mods = mod.SUPER_REV, action = act.ActivateCommandPalette },

	{
		key = "P",
		mods = mod.SUPER_REV,
		action = act.ActivateKeyTable({
			name = "pane",
			one_shot = false,
		}),
	},
	{
		key = "T",
		mods = mod.SUPER_REV,
		action = act.ActivateKeyTable({
			name = "tab",
			one_shot = false,
		}),
	},
	{
		key = "H",
		mods = mod.SUPER_REV,
		action = act.ActivateKeyTable({
			name = "history",
			one_shot = false,
		}),
	},
}

local key_tables = {
	tab = {
		{ key = "n", action = act.SpawnTab("CurrentPaneDomain") },
		{ key = "x", action = act.CloseCurrentTab({ confirm = true }) },
		{ key = "l", action = act.ActivateTabRelative(1) },
		{ key = "h", action = act.ActivateTabRelative(-1) },
		{ key = "Enter", action = "PopKeyTable" },
	},
	pane = {
		{ key = "d", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "r", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "h", action = act.ActivatePaneDirection("Left") },
		{ key = "l", action = act.ActivatePaneDirection("Right") },
		{ key = "k", action = act.ActivatePaneDirection("Up") },
		{ key = "j", action = act.ActivatePaneDirection("Down") },
		{ key = "x", action = act.CloseCurrentPane({ confirm = true }) },
		{ key = "LeftArrow", action = act.AdjustPaneSize({ "Left", 2 }) },
		{ key = "RightArrow", action = act.AdjustPaneSize({ "Right", 2 }) },
		{ key = "UpArrow", action = act.AdjustPaneSize({ "Up", 2 }) },
		{ key = "DownArrow", action = act.AdjustPaneSize({ "Down", 2 }) },
		{ key = "Enter", action = "PopKeyTable" },
	},
	history = {
		{ key = "PageUp", action = act.ScrollByPage(-1) },
		{ key = "PageDown", action = act.ScrollByPage(1) },
		{ key = "k", action = act.ScrollByPage(-0.5) },
		{ key = "j", action = act.ScrollByPage(0.5) },
		{ key = "Escape", action = "PopKeyTable" },
	},
}

local mouse_bindings = {}

return {
	disable_default_key_bindings = true,
	disable_default_mouse_bindings = true,
	leader = { key = "Space", mods = "CTRL|SHIFT" },
	keys = keys,
	key_tables = key_tables,
	mouse_bindings = mouse_bindings,
}
