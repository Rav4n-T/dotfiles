local wezterm = require("wezterm")
local platform = require("utils.platform")

local font = "CodeNewRoman Nerd Font Mono"
local font_type = { weight = "Regular", italic = true }
local font_size = platform().is_linux and 14 or 9

return {
	font = wezterm.font(font, font_type),
	font_size = font_size,

	--ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
	freetype_load_target = "Normal", ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
	freetype_render_target = "Normal", ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
