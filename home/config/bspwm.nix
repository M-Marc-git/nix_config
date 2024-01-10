{inputs, config, pkgs, arch, host_name, user, ...} :
{
	xsession.windowManager.bspwm = {
		enable = true;
		monitors = {
			DP-1 = [
				"I"
				"II"
				"III"
				"IV"
				"V"
			];
			DP-2 = [
				"VI"
				"VII"
				"VIII"
				"IX"
				"X"
			];
		};

		settings = {
			split_ratio = 0.5;
		};

		extraConfig = ''
			pgrep -x sxhkd > /dev/null || sxhkd &
		'';
	};

	services.sxhkd = {
		enable = true;
		keybindings = {
			"super + alt + {q,r}" = "bspc {quit,vm-r}";
			"super + shift + w"   = "bspc node -c";
			"super + shfit + {h,j,k,l}" = "bspc node -s {west,south,north,east}";
			"super + {h,j,k,l}" = "bspc node -f {west,south,north,east}";
			"super + {1-9,0}" = "bspc desktop -f '^{1-9,10}'";
			"super + shift + {1-9,0" = "bspc node -d '^{1-9,10}'";
			"super + shift + f" = "bspc node -t fullscreen";
			"super + Return" = "exec alacritty";
			"super + @d" = "exec rofi -show drun";
		};
	};
}
