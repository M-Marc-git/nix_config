{inputs, config, pkgs, lib, arch, host_name, user, ...} :
{
	programs.neovim = {
		enable = true;
		defaultEditor = true;
		extraLuaConfig = ''
			${lib.fileContents ./nvim/init.lua}
			${lib.fileContents ./nvim/lua/bubbles.lua}
			${lib.fileContents ./nvim/lua/plugin.lua}
			${lib.fileContents ./nvim/lua/setup_global.lua}
			${lib.fileContents ./nvim/lua/setup_lsp.lua}
			${lib.fileContents ./nvim/lua/setup_telescope.lua}
		''
	};
}
