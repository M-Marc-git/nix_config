{ config, lib, pkgs, arch, host_name, ... }:
{
	boot.loader.grub = {
		enable = true;
		device = "/dev/sda";
	};
	boot.initrd.kernelModules = [
		"amdgpu"
	];
}

