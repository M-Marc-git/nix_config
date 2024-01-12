{inputs, config, pkgs, lib, arch, host_name, user, scheme, ...} :
{
	programs.neovim = {
		enable = true;
		defaultEditor = true;
		plugins = [
			(pkgs.vimPlugins.base16-vim.overrideAttrs (old:
				let schemeFile = config.scheme inputs.base16-vim;
				in { patchPhase = ''cp ${schemeFile} colors/base16-scheme.vim'';}
		))];
		extraConfig = ''
			set termguicolors background=dark
			let base16colorspace=256
			colorscheme base16-scheme
		'';
		extraLuaConfig = ''
			${lib.fileContents ./nvim/init.lua}
			${lib.fileContents ./nvim/lua/plugin.lua}
			${lib.fileContents ./nvim/lua/bubbles.lua}
			${lib.fileContents ./nvim/lua/setup_global.lua}
			${lib.fileContents ./nvim/lua/setup_lsp.lua}
			${lib.fileContents ./nvim/lua/setup_telescope.lua}
		'';
	};
}
