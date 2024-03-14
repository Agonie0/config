{ config, lib, pkgs, ... }:
{
  boot = {
    kernel = {
      sysctl = { "vm.swappiness" = 10; };
    };
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot/efi"; # ← use the same mount point here.
      };
      grub = {
        efiSupport = true;
        #efiInstallAsRemovable = true; # in case canTouchEfiVariables doesn't work for your system
        gfxmodeEfi = "1920x1080";
        device = "nodev";
   };
  };
 };
}
