{ config, lib, pkgs, inputs, ... }:
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
    (vscode.override {
        commandLineArgs = [
	        "--gtk-version=4"
 	        "--enable-wayland-ime"
      ];
    })
      inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
      nodejs 
      gtk4
      xdg-utils
      qq
      fastfetch
      zsh-powerlevel10k
      git
      hyprpaper
      telegram-desktop
      nwg-look
      xdg-user-dirs
      unzip
      xdg-desktop-portal-hyprland
      hyprpaper
      nil
      yazi
      dolphin
      ark
      axel
    ];
   };
}
