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
    fastfetch
    gnome-tweaks
    qbittorrent-enhanced
    clapper
    bleachbit
    vesktop
    materialgram
    vscode
    neovim
    protonup-qt
    corectrl
    lzip
    python3
    cmake
    # Wine
    wineWowPackages.staging
    wineWowPackages.waylandFull
    winetricks
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
