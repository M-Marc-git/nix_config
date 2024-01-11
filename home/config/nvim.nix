{inputs, config, pkgs, arch, host_name, user, ...} :
{
	programs.neovim = {
		enable = true;
		defaultEditor = true;
		extraLuaConfig = lib.fileContents ./nvim/init.lua;
	};
}
