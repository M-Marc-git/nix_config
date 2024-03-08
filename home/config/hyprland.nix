{inputs, config, pkgs, arch, host_name, user, ...} :
{
	programs.wofi.enable = true;

	wayland.windowManager.hyprland = {
		enable = true;
		settings = {
			"$mod" = "SUPER";
			bind = [
				"$mod, Return, exec, alacritty"
				"$mod, D, exec, wofi --show run"
				"$mod Shift, Q, killactive"
				"$mod, L, movefocus, l"
				"$mod, H, movefocus, r"
				"$mod, K, movefocus, u"
				"$mod, J, movefocus, d"
			];
		};
	};
}

