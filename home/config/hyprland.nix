{inputs, config, pkgs, arch, host_name, user, ...} :
{
	programs.wofi.enable = true;

	programs.waybar = {
		enable = true;
		settings = {
			main = {
				layer = "top";
				position = "top";
				height = 30;

				output = [
					"DP-1"
				];

				modules-left = [
					"hyprland/workspaces"
				];

				modules-center = [
					"hyprland/window"
				];

				modules-right = [
					"pulseaudio"
					"network"
					"memory"
					"cpu"
					"clock"
				];

				memory = {
					interval = 30;
					format = "RAM: {}%";
					max-length = 10;
				};

				cpu = {
					interval = 30;
					format = "CPU: {}%";
					max-length = 12;
				};

				clock = {
					interval = 1;
					format = "{:%H:%M:%S}";
					max-length = 25;
				};

				network = {
					format = "{ifname}";
					format-wifi = "{essid} {signalStrength}%";
					format-ethernet = "{ipaddr}";
					format-disconnected = "";
					max-length = 50;
				};

				pulseaudio = {
					format = "{volume}%";
				};
			};
		};
	};

	wayland.windowManager.hyprland = {
		enable = true;
		settings = {
			"$mod" = "SUPER";
			"exec-once" = "waybar";

			bind = [
				"$mod, Return, exec, alacritty"
				"$mod, D, exec, wofi --show run"
				"$mod Shift, Q, killactive"
				"$mod, L, movefocus, l"
				"$mod, H, movefocus, r"
				"$mod, K, movefocus, u"
				"$mod, J, movefocus, d"
				"$mod, F, fullscreen,"
				"$mod Shift, 1, movetoworkspace, 1"
				"$mod Shift, 2, movetoworkspace, 2"
				"$mod Shift, 3, movetoworkspace, 3"
				"$mod Shift, 4, movetoworkspace, 4"
				"$mod Shift, 5, movetoworkspace, 5"
				"$mod Shift, 6, movetoworkspace, 6"
				"$mod Shift, 7, movetoworkspace, 7"
				"$mod Shift, 8, movetoworkspace, 8"
				"$mod Shift, 9, movetoworkspace, 9"
				"$mod Shift, 0, movetoworkspace, 10"
				"$mod, 1, workspace, 1"
				"$mod, 2, workspace, 2"
				"$mod, 3, workspace, 3"
				"$mod, 4, workspace, 4"
				"$mod, 5, workspace, 5"
				"$mod, 6, workspace, 6"
				"$mod, 7, workspace, 7"
				"$mod, 8, workspace, 8"
				"$mod, 9, workspace, 9"
				"$mod, 0, workspace, 10"
			];
		};
	};
}

