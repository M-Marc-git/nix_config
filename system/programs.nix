{ config, lib, pkgs, arch, host_name, ... }:
{
	environment.systemPackages = with pkgs; [
		git
		neovim
		firefox

		# Csharp
		dotnet-sdk_8
		mono
		msbuild
		csharp-ls
	];

	environment.variables = {
		DOTNET_ROOT = "${pkgs.dotnet-sdk_8}";
	};
}
