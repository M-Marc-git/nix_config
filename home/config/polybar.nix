{inputs, config, pkgs, lib, arch, host_name, user, ...} :
{
	services.polybar = {
		enable = true;
		extraConfig = ''${lib.fileContents ./polybar/main.ini}'';
		script = "polybar main &";
	};
}

