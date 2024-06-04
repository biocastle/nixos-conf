{
  imports = [
      ./hardware-configuration.nix
      ./packages.nix
      ./modules/bundle.nix
    ];

  disabledModules = [
      ./modules/xserver.nix
  ];

  networking.hostName = "nixos"; 
 
  time.timeZone = "Asia/Yekaterinburg";

  i18n.defaultLocale = "en_US.UTF-8"; 
 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  system.stateVersion = "24.05";

}

