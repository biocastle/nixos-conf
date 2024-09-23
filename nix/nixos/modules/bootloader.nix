{ pkgs, ... }: {

  # SystemD EFI
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  # AMD 
  boot.initrd.kernelModules = [ "amdgpu" ];
  # Kernel
  boot.kernelPackages = pkgs.linuxPackages_cachyos;
  chaotic.scx.enable = true;
  
}