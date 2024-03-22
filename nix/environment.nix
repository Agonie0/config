{ config, lib, pkgs, inputs, ... }:
{
  environment = {
    sessionVariables.NIXOS_OZONE_WL = "1";
    systemPackages = with pkgs; [
      neovim
      kitty
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
      (pkgs.wrapOBS {
        plugins = with pkgs.obs-studio-plugins; [
          wlrobs
          obs-backgroundremoval
          obs-pipewire-audio-capture
      ];
    })
      inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
      gtk4
      xdg-utils
      qq
      fastfetch
      zsh-powerlevel10k
      git
      hyprpaper
      telegram-desktop
      yesplaymusic
      xdg-user-dirs
      xdg-desktop-portal-hyprland
      hyprpaper
      nil
      yazi
      axel
      mako
      alejandra
    ];
   };
}
