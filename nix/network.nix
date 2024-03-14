{ config, lib, pkgs, ... }:
{
  networking = {
    hostName = "cat";
    networkmanager.enable = true;
  };
}