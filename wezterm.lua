local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font = wezterm.font("Hack Nerd Font")
config.font_size = 16
config.color_scheme = "Catppuccin Mocha"
config.window_decorations = "TITLE|RESIZE"
config.enable_tab_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
--config.window_background_opacity = 0.8

-- MacOs
config.macos_window_background_blur = 30

-- Windows
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	-- return { "powershell.exe" }
	config.default_prog =
		{ "powershell", "-NoExit", "-Command", "starship init powershell | out-string | Invoke-Expression" }
end
config.win32_system_backdrop = "Acrylic"

-- Linux https://github.com/wezterm/wezterm/issues/4962
config.enable_wayland = false

return config
