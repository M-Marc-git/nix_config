{ config, lib, pkgs, arch, host_name, ... }:
{
	time.timeZone = "Europe/Paris";
	networking.hostName = host_name;
	networking.networkmanager.enable = true;

	hardware.pulseaudio = {
		enable = true;
		support32Bit = true;
	};
	
	environment.systemPackages = with pkgs; [
		firefox
		git
		vim
	];

	users.users.marc = {
		isNormalUser = true;
		home = "/home/marc";
		extraGroups = [ "wheel" "audio" ];
	};

	# Enable flakes
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	system.stateVersion = "unstable";
}

