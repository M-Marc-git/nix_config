{ config, lib, pkgs, arch, host_name, ... }:
{
	boot.loader.systemd-boot.enable = true;
	boot.initrd.kernelModules = [
		"amdgpu"
	];
	boot.kernelParams = [
		"video=DP-1:1920x1080@165"
		"video=DP-2:1920x1080@165"
	];

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
}

