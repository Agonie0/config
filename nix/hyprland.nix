{ config, lib, pkgs, ... }:
{
  programs={
      hyprland = {
      	enable = true;
      	xwayland.enable = true;
    };
      waybar.enable = true;
  };
}
