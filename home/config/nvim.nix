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
			vim.api.nvim_set_hl(0, "FloatBorder", {bg="#${config.scheme.base00}"})
			vim.api.nvim_set_hl(0, "NormalFloat", {bg="#${config.scheme.base00}"})
			vim.api.nvim_set_hl(0, "TelescopeNormal", {bg="#${config.scheme.base00}"})
			vim.api.nvim_set_hl(0, "TelescopeBorder", {bg="#${config.scheme.base00}"})
			local colors = {
				black = '#${config.scheme.base00}',
				dark_gray = '#${config.scheme.base01}',
				gray = '#${config.scheme.base02}',
				light_gray = '#${config.scheme.base03}',
				white = '#${config.scheme.base07}',
				red = '#${config.scheme.red}',
				green = '#${config.scheme.green}',
				yellow = '#${config.scheme.yellow}',
				blue = '#${config.scheme.blue}',
				cyan = '#${config.scheme.cyan}',
				magenta = '#${config.scheme.magenta}'
			}
			${lib.fileContents ./nvim/plugin.lua}
			${lib.fileContents ./nvim/setup_global.lua}
			${lib.fileContents ./nvim/setup_lsp.lua}
			${lib.fileContents ./nvim/setup_telescope.lua}
			${lib.fileContents ./nvim/lualine.lua}
			${lib.fileContents ./nvim/autopairs.lua}
		'';
	};
}
