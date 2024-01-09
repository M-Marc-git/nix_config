{config, pkgs, ...}
{
	home.programs = with pkgs; [
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
		nvim

		# Utils
		clang-format
		clang-tools
		doxygen
		pkg-config
		jetbrains.clion
		discord
	];
}
