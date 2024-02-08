{ config, lib, pkgs, arch, host_name, ... }:
{
	time.timeZone = "Europe/Paris";
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
	system.stateVersion = "unstable";
}

