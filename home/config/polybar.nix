{inputs, config, pkgs, lib, arch, host_name, user, ...} :
{
	services.polybar = {
		enable = true;
		config = {
			colors = {
				background = "#${config.scheme.base00}";
				background-alt = "#${config.scheme.base01}";
				foreground = "#${config.scheme.base05}";
				primary = "#${config.scheme.base07}";
				secondary = "#${config.scheme.base06}";
				alert = "#${config.scheme.red}";
				disabled = "#${config.scheme.base03}";
			};
		};
		extraConfig = ''${lib.fileContents ./polybar/main.ini}'';
		script = "polybar main &";
	};
}

