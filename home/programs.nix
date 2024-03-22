{inputs, config, pkgs, ...} :
{
	home.packages = with pkgs; [
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
		clang-tools
		doxygen
		pkg-config
		discord
		i3lock
		vscodium

		jetbrains.clion
		jetbrains.idea-community

		gnupg
		pinentry
	];
}
