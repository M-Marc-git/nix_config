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
}

