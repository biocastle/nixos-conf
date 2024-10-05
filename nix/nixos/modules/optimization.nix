{ pkgs, ... }: {

  # Ananicy-cpp
  services.ananicy = {
     enable = true;
     package = pkgs.ananicy-cpp;
     rulesProvider = pkgs.ananicy-rules-cachyos;
  };

  # DBus
  services.dbus.implementation = "broker";
  
}