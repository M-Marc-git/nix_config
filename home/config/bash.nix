{inputs, config, pkgs, arch, host_name, user, ...} :
{
	programs.bash = {
		enable = true;
		bashrcExtra = ''
		export DOTNET_ROOT="${pkgs.dotnet-sdk_8}"
		'';
	};
}

