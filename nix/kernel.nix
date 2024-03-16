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
        efiSysMountPoint = "/boot/efi";
      };
      grub = {
        efiSupport = true;
        gfxmodeEfi = "1920x1080";
        device = "nodev";
   };
  };
 };
}
