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
    ];

  nix.gc = {
                automatic = true;
                dates = "weekly";
                options = "--delete-older-than 7d";
        };
  nix.settings.substituters = [ "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store" ];
  nixpkgs.config.allowUnfree = true; 
  programs.nix-ld.enable = true;
  services.v2raya.enable = true;
  time.timeZone = "Asia/Shanghai";

  system.stateVersion = "24.05"; 

}

