{ config, lib, pkgs, ... }:
{
  i18n = {
    defaultLocale = "zh_CN.UTF-8";
    inputMethod = {
      enabled = "fcitx5";
        fcitx5.addons = with pkgs; [
        fcitx5-mozc
        fcitx5-gtk
        fcitx5-nord
      	fcitx5-chinese-addons
   	  ];
    };
  };	
}
