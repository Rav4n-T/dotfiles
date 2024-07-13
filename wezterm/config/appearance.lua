-- local wezterm = require('wezterm')
-- local colors = require('colors.custom')
-- local fonts = require('config.fonts')

return {
	harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
	hide_mouse_cursor_when_typing = true,
	term = "xterm-256color",
	animation_fps = 60,
	max_fps = 60,
	--   front_end = 'WebGpu',
	--   webgpu_power_preference = 'HighPerformance',

	-- color scheme
	color_scheme = "Everforest Dark (Gogh)",
	-- color_scheme = "Catppuccin Mocha (Gogh)",
	-- color_scheme = "Catppuccin Mocha",

	-- background
	window_background_opacity = 0.9,
	win32_system_backdrop = "Acrylic",
	-- window_background_gradient = {
	--    colors = { '#121C1C', '#0B1F1F' },
	--    -- Specifices a Linear gradient starting in the top left corner.
	--    orientation = { Linear = { angle = -45.0 } },
	-- },

	-- scrollbar
	enable_scroll_bar = false,
	min_scroll_bar_height = "3cell",
	colors = {
		scrollbar_thumb = "#2A2B3D",
	},

	-- tab bar
	enable_tab_bar = false,
	hide_tab_bar_if_only_one_tab = false,
	use_fancy_tab_bar = true,
	tab_max_width = 25,
	show_tab_index_in_tab_bar = true,
	switch_to_last_active_tab_when_closing_tab = true,

	-- cursor
	default_cursor_style = "BlinkingBar",
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",
	cursor_blink_rate = 700,

	-- window
	adjust_window_size_when_changing_font_size = false,
	window_decorations = "INTEGRATED_BUTTONS|RESIZE",
	integrated_title_button_style = "Windows",
	integrated_title_button_color = "auto",
	integrated_title_button_alignment = "Right",
	initial_cols = 140,
	initial_rows = 70,
	window_padding = {
		left = 4,
		right = 4,
		top = 4,
		bottom = 4,
	},
	window_close_confirmation = "AlwaysPrompt",
	window_frame = {
		active_titlebar_bg = "#0F2536",
		inactive_titlebar_bg = "#0F2536",
		-- font = fonts.font,
		-- font_size = fonts.font_size,
	},
	inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },

	-- wayland
	enable_wayland = false,
}
