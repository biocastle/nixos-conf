{

        imports = [
          ./shells/bundle.nix
          ./modules/bundle.nix
          ./theme/gtk.nix
        ];  

        home = {
                username = "cursesntax";
                homeDirectory = "/home/cursesntax";
                stateVersion = "24.05";
        };
}
