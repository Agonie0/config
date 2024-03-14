{ config, lib, pkgs, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
      ohMyZsh = {
      enable = true;
      plugins = [ "git" ];
      theme = "robbyrussell";
      };
    shellAliases = {
      ll = "ls -l";
      update = "sudo nixos-rebuild switch";
    };
    promptInit = "source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
  };
}