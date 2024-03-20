{ config, lib, pkgs, arch, host_name, ... }:
{
	environment.systemPackages = with pkgs; [
		git
		neovim
		firefox

		# Csharp
		mono
		msbuild
		csharp-ls
		omnisharp-roslyn
		fsautocomplete
	];

	environment.variables = {
		DOTNET_ROOT = "${pkgs.mono}/lib/mono/4.8-api";
	};
}
