{config, pkgs, arch, host_name, user, ...}
{
	home.username = user;
	home.homeDirectory = "/home/${user}";

	imports = [
		./programs.nix
	];

	programs.home-manager.enable = true;
}
