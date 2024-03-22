{ config, lib, pkgs, ... }:
{
  fonts = {
    fontDir.enable = true;
     packages = with pkgs; [
      fira-code-nerdfont
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-emoji
      noto-fonts
      source-han-sans
     ];
     fontconfig = {
       antialias = true;
       hinting.enable = true;
        defaultFonts = {
        emoji = [ "Noto Color Emoji" ];
        sansSerif = [ "Noto Sans CJK SC" ];
        serif = [ "Noto Serif CJK SC" ];
      };
    };
  };
}