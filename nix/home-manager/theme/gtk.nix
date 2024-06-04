{ pkgs, ... }: {
  gtk = {
    enable = true;
      theme = {
        name = "Nordic";
        package = pkgs.nordic;
    };
      cursorTheme = {
        name = "Bibata-Modern-Classic";
        package = pkgs.bibata-cursors;
      };
      iconTheme = {
        name = "Papirus-Dark";
        package = pkgs.papirus-icon-theme;
      };
   };
}
