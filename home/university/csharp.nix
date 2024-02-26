{inputs, config, pkgs, ...} :
{
	home.packages = with pkgs; [
		mono
		msbuild
		dotnet-sdk_8
	];
}

