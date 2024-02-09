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
		vscodium
	];
}
