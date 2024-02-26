{inputs, config, pkgs, arch, host_name, user, ...} :
{
	imports = [
		./java.nix
		./csharp.nix
	];
}

