{inputs, config, pkgs, ...} :
{
	home.packages = with pkgs; [
		(hiPrio dotnet-sdk_8)
		msbuild
		csharp-ls
	];

	home.sessionVariables.DOTNET_ROOT = pkgs.dotnet-sdk_8;
}

