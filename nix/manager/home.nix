{ config, pkgs, ... }:

{
  # 注意修改这里的用户名与用户目录
  home.username = "agonie";
  home.homeDirectory = "/home/agonie";

  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 172;
  };

  
  home.packages = with pkgs;[
  ];


  programs.git = {
    enable = true;
    userName = "Agonie0";
    userEmail = "woshiliuziao@gmail.com";
  };
  gtk = {
    enable = true;
#   gtk3.extraConfig = "$XDG_CONFIG_HOME.config/gtk-3.0/settings.ini";
    gtk2.configLocation = "${config.xdg.configHome}/gtk-2.0/gtkrc";
#    gtk3.configLocation = "/home/agonie/.config/gtk-3.0/settings.ini";
    theme = {
      package = pkgs.orchis-theme;
      name = "Orchis";
    };
  iconTheme = {
    package = pkgs.papirus-icon-theme;
    name = "Papirus";
  };
};

  xdg.configFile."gtk-3.0/settings.ini".text = "$XDG_CONFIG_HOME.config/gtk-3.0/settings.ini";

  home.stateVersion = "24.05";

  programs.home-manager.enable = true;
}