{inputs, config, pkgs, arch, host_name, user, ...} :
{
	programs.git = {
		enable = true;
		userEmail = "moutarde.marc@gmail.com";
		userName = "Marc M";
	};
}
