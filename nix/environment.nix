{ config, lib, pkgs, ... }:
{
  environment = {
    sessionVariables.NIXOS_OZONE_WL = "1";
    systemPackages = with pkgs; [
      neovim
      alacritty
      rofi-wayland
      (microsoft-edge.override {
        commandLineArgs = [
	        "--gtk-version=4"
 	        "--enable-wayland-ime"
      ];
    })
      vscode
      nodejs 
      gtk4
      xdg-utils
      qq
      fastfetch
      zsh-powerlevel10k
      git
      hyprpaper
      telegram-desktop
    ];
   };
}
