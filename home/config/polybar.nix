{inputs, config, pkgs, arch, host_name, user, ...} :
{
	programs.polybar = {
		enable = true;
		extraConfig = lib.fileContents ./polybar/main.ini;
	};
}

