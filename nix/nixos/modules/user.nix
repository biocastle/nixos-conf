{ pkgs, ... }: {

  programs.zsh.enable = true;

  users = {
    defaultUserShell = pkgs.zsh;

    users.castle = {
      isNormalUser = true;
      extraGroups = [ "networkmanager" "wheel" "input" "libvirtd" "adbusers" ];
    };
  };
  
}
