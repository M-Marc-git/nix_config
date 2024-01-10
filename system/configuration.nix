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

	hardware.pulseaudio = {
		enable = true;
		support32Bit = true;
	};

	systemd.tmpfiles.rules = [
		"L+    /opt/rocm/hip   -    -    -    -    ${pkgs.rocmPackages.clr}"
	];

	hardware.opengl = {
		extraPackages = with pkgs; [
			rocmPackages.clr.icd
		];
		driSupport = true;
		driSupport32Bit = true;
	};

	services = {
		xserver = {
			enable = true;
			videoDrivers = [ "amdgpu" ];
			displayManager.startx.enable = true;
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
		extraGroups = [ "wheel" "audio" ];
	};

	# Enable flakes
	nix.settings.experimental-features = [ "nix-command" "flakes" ];
	system.stateVersion = "23.11";
}

