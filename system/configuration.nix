{ config, lib, pkgs, arch, host_name, ... }:
{
	imports = [
		./hardware-configuration.nix
	];

	boot.loader.systemd-boot.enable = true;
	boot.initrd.kernelModules = [
		"amdgpu"
	];
	boot.kernelParams = [
		"video=DP-1:1920x1080@165"
		"video=DP-2:1920x1080@165"
	];
	networking.hostName = host_name;

	services = {
		xserver = {
			enable = true;
			displayManager.gdm.enable = true;
			desktopManager.gnome.enable = true;
		};
	};
	
	environment.systemPackages = with pkgs; [
		firefox
		git
		vim
	];

	users.users.marc = {
		isNormalUser = true;
		home = "/home/marc";
		extraGroups = [ "wheel" ];
	};

	# Enable flakes
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	system.stateVersion = "23.11";
}

