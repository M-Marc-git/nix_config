{ config, lib, pkgs, arch, host_name, ... }:
{
	boot.loader.grub.device = "/dev/disk/by-uuid/6C69-DA72";
	boot.initrd.kernelModules = [
		"amdgpu"
	];
}

