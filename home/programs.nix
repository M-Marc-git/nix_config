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

		# Editor
		neovim

		# Utils
		qemu
		libvirt
		virt-manager
		clang-tools
		doxygen
		pkg-config
		jetbrains.clion
		discord
		alacritty
	];
}
