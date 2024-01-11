{inputs, config, pkgs, arch, host_name, user, ...} :
{
	imports = [
		./bspwm.nix
		./nvim.nix
		./rofi.nix
	];
}
