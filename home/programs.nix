{inputs, config, pkgs, ...} :
{
	home.packages = with pkgs; [
		# Bureautique
		firefox
		thunderbird
		onlyoffice-bin
		libreoffice-qt
		hunspell
		hunspellDicts.en_US
		xournal

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
		lldb

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
	];
}
