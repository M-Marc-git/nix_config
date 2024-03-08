{ config, lib, pkgs, arch, host_name, ... }:
{
	environment.systemPackages = with pkgs; [
		# Bureautique
		firefox
		chromium
		thunderbird
		onlyoffice-bin
		libreoffice-qt
		hunspell
		hunspellDicts.en_US
		xournal
		calibre

		# Image
		feh
		gimp
		krita

		# 3d
		blender

		# Build system
		autoconf
		autoconf-archive
		automake
		cmake
		gnumake
		meson
		ninja
		
		# Compiler
		gcc
		binutils
		(hiPrio clang)
		llvmPackages.bintools
		lldb
		gdb
		rustup

		# Interpretor
		python3

		# Utils
		qemu
		libvirt
		virt-manager
		clang-tools
		doxygen
		pkg-config
		discord
		i3lock
		git
		nvim
		rofi
		polybar
		alacritty
	];

	environment.systemPackages = with pkgs; [
		dotnet-sdk_8
		mono
		msbuild
		csharp-ls
	];

	environment.variables = {
		DOTNET_ROOT = "${pkgs.dotnet-sdk_8}";
	};
}
