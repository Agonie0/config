{ config, lib, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./nvidia.nix
      ./fcitx5.nix
      ./environment.nix
      ./fonts.nix
      ./hyprland.nix
      ./network.nix
      ./omz.nix
      ./user.nix
      ./kernel.nix
      ./pipewire.nix
    ];
  nix.gc = {
    automatic = true;
    options = "--delete-older-than 5d";
    dates = "Sun 19:00";
  };
  nix.optimise.automatic = true;
  programs.adb.enable = true;
  nix.optimise.dates = [ "03:45" ];

  nix.settings.substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];
  services.gvfs.enable = true;
  nixpkgs.config.allowUnfree = true; 
services.udev.packages = [ pkgs.android-udev-rules ];
  programs.nix-ld.enable = true;

  programs.dconf.enable = true;

  services.v2raya.enable = true;

  time.timeZone = "Asia/Shanghai";

  system.stateVersion = "24.05"; 

}

