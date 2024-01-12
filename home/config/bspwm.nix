{inputs, config, pkgs, arch, host_name, user, ...} :
{
	xsession.windowManager.bspwm = {
		enable = true;
		monitors = {
			DisplayPort-0 = [
				"I"
				"II"
				"III"
				"IV"
				"V"
			];
			DisplayPort-1 = [
				"VI"
				"VII"
				"VIII"
				"IX"
				"X"
			];
		};

		settings = {
			normal_border_color = "#${config.scheme.base04}";
			focused_border_color = "#${config.scheme.base07}";
			urgent_border_color = "#${config.scheme.red}";
			border_width = 2;
			split_ratio = 0.5;
		};

		extraConfig = ''
			xsetroot -cursor_name left_ptr
			xsetroot -solid "#${config.scheme.base00}"
			pgrep -x sxhkd > /dev/null || sxhkd &
			polybar main &
		'';
	};

	services.sxhkd = {
		enable = true;
		keybindings = {
			"super + alt + {q,r}" = "bspc {quit,vm-r}";
			"super + shift + q"   = "bspc node -c";
			"super + shfit + {h,j,k,l}" = "bspc node -s {west,south,north,east}";
			"super + {h,j,k,l}" = "bspc node -f {west,south,north,east}";
			"super + {1-9,0}" = "bspc desktop -f '^{1-9,10}'";
			"super + shift + {1-9,0}" = "bspc node -d '^{1-9,10}'";
			"super + f" = "bspc window -t \\~fullscreen";
			"super + Return" = "exec alacritty";
			"super + @d" = "exec rofi -show drun";
		};
	};
}
