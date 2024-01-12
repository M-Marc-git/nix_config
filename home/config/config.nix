{inputs, config, pkgs, arch, host_name, user, ...} :
{
	imports = [
		./alacritty.nix
		./bspwm.nix
		./nvim.nix
		./polybar.nix
		./rofi.nix
		./git.nix
	];
}
