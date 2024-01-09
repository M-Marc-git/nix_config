{ config, lib, pkgs, arch, host_name, ... }:
{
	imports = [
		./hardware-configuration.nix
	];

	boot.loader.systemd-boot.enable = true;
	boot.initrd.kernelModules = [
		"vfio_pci"
		"vfio"
		"vfio_iommu_type1"
		"vfio_virqfd"
		"amdgpu"
	];
	boot.kernelParams = [
		"amd_iommu=on"
		"vfio-pic.ids=1002:1638,1002:1637"
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

