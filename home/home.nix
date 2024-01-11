{inputs, config, pkgs, arch, host_name, user, ...} :
{
	home.username = user;
	home.homeDirectory = "/home/${user}";

	imports = [
		./config/config.nix
		./programs.nix
	];

	home.packages = with pkgs; [
		(nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
	];

	programs.home-manager.enable = true;
	home.stateVersion = "24.05";
}
