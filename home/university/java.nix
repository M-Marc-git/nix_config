{inputs, config, pkgs, ...} :
{
	home.packages = with pkgs; [
		openjdk20
		maven
		jdt-language-server
	];
}

