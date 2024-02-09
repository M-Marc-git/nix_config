{inputs, config, pkgs, arch, host_name, user, ...} :
{
	xsession.windowManager.bspwm.monitors = {
		DisplayPort-0 = [
			"一"
			"二"
			"三"
			"四"
			"五"
		];
		DisplayPort-1 = [
			"六"
			"七"
			"八"
			"九"
			"十"
		];
	};
}

