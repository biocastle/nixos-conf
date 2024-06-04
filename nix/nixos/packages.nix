{ pkgs, ... }: {
  nixpkgs.config = {
    allowUnfree = true;
  };

  environment.systemPackages = with pkgs; [
     # Desktop
     google-chrome
     telegram-desktop
     kitty
     obs-studio
     rofi-wayland
     mpv
     vesktop
     obsidian
     gnome.nautilus     

     # Coding
     zed-editor
     jdk22
     jetbrains.idea-community-bin

     # CLI
     fastfetch
     btop
     swww
     ranger
     wget
     curl
     cava
     git
     nix-index
     tree
     file
     lux
     ffmpeg
     unzip
     p7zip

     # GUI
     imv
     mako

     # Wayland
     xwayland
     wl-clipboard
     cliphist

     # GPU
     amdvlk

     # Screenshot
     hyprshot

     # Other
     home-manager
     starship
     zoxide
     polkit_gnome
     efibootmgr
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
