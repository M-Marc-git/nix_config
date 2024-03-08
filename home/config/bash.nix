{inputs, config, pkgs, arch, host_name, user, ...} :
{
	programs.bash = {
		enable = true;
		sessionVariables = {
			DOTNET_SDK = "${pkgs.dotnet-sdk_8}"
		}
	};
}

