{inputs, config, pkgs, lib, arch, host_name, user, ...} :
{
	programs.neovim = {
		enable = true;
		defaultEditor = true;
		extraLuaConfig = lib.fileContents ./nvim/init.lua;
	};
}
