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
      (vscode-with-extensions.override {
        vscodeExtensions = with vscode-extensions; [
          jnoortheen.nix-ide
          ms-ceintl.vscode-language-pack-zh-hans
      ];
    })
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
