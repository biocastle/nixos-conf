{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };
 
  environment.systemPackages = with pkgs; [
    git
    home-manager
    btop
    zoxide
    starship
    pfetch-rs
    gnome-tweaks
    qbittorrent-enhanced
    vesktop
    materialgram
    vscode
    neovim
  ];

  fonts.packages = with pkgs; [
    jetbrains-mono
    noto-fonts
    noto-fonts-emoji
    twemoji-color-font
    font-awesome
    powerline-fonts
    powerline-symbols
    (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];
}
