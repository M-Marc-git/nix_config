{inputs, config, pkgs, lib, arch, host_name, user, ...} :
{
	programs.alacritty = {
		enable = true;
		settings = {
			colors = {
				primary = {
					background = "#${config.scheme.base00}";
					foreground = "#${config.scheme.base07}";
				};
				cursor = {
					text = "#${config.scheme.base02}";
					cursor = "#${config.scheme.base07}";
				};
				normal = {
					black = "#${config.scheme.base00}";
					white = "#${config.scheme.base07}";
					blue = "#${config.scheme.blue}";
					cyan = "#${config.scheme.cyan}";
					green = "#${config.scheme.green}";
					magenta = "#${config.scheme.magenta}";
					red = "#${config.scheme.red}";
					yellow = "#${config.scheme.yellow}";
				};
				bright = {
					black = "#${config.scheme.base00}";
					white = "#${config.scheme.base07}";
					blue = "#${config.scheme.blue}";
					cyan = "#${config.scheme.cyan}";
					green = "#${config.scheme.green}";
					magenta = "#${config.scheme.magenta}";
					red = "#${config.scheme.red}";
					yellow = "#${config.scheme.yellow}";
				};
				dim = {
					black = "#${config.scheme.base00}";
					white = "#${config.scheme.base07}";
					blue = "#${config.scheme.blue}";
					cyan = "#${config.scheme.cyan}";
					green = "#${config.scheme.green}";
					magenta = "#${config.scheme.magenta}";
					red = "#${config.scheme.red}";
					yellow = "#${config.scheme.yellow}";
				};
			};
		};
	};
}
