{ config, pkgs, ... }:

{
	home.username = "agonie";
	home.homeDirectory = "/home/agonie";
	home.packages = with pkgs;[
	neovim
	];
       	programs.git = {
    	enable = true;
   	userName = "Agonie";
    	userEmail = "woshiliuziao@gmail.com";
	};
	xsession.windowManager.bspwm.enable = true;
	#xsession.windowManager.bspwm.extraConfig = /home/agonie/.config/bspwm/sxhkd
	services.sxhkd.enable = true;
	#services.sxhkd.extraConfig = /home/agonie/.config/bspwm/sxhkdrc
	programs.kitty.enable = true;
	home.stateVersion = "24.11";
	programs.home-manager.enable = true;

}
