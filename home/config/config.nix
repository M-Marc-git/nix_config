{inputs, config, pkgs, arch, host_name, user, ...} :
{
	imports = [
		./alacritty.nix
		./bash.nix
		./bspwm.nix
		./dunst.nix
		./nvim.nix
		./polybar.nix
		./rofi.nix
		./git.nix
		./hyprland.nix
	];
}
