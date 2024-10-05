{ pkgs, ... }: {

  # SystemD EFI
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  # AMD 
  boot.initrd.kernelModules = [ "amdgpu" ];

  boot.kernel.sysctl."vm.max_map_count" = 2147483642;

  hardware.graphics = {
  
  enable = true;
  
  };

  # Kernel
  boot.kernelParams = [ "nowatchdog" "quiet" "splash" ];
  boot.kernelPackages = pkgs.linuxPackages_cachyos;
  chaotic.scx.enable = true;
  
}
