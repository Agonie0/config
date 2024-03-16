{ config, lib, pkgs, ... }:
{
  users = {
      defaultUserShell = pkgs.zsh;
      users.agonie = {
       isNormalUser = true;
       home = "/home/agonie";
       extraGroups = [ "wheel" "networkmanager" "adbusers"];
   };
  };
}

