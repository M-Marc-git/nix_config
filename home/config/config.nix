{inputs, config, pkgs, arch, host_name, user, ...} :
{
	imports = [
		./bspwm.nix
		./nvim.nix
		./polybar.nix
		./rofi.nix
		./git.nix
	];
}
