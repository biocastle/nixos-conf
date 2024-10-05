{ config, pkgs, ... }: {

        imports = [
          ./zsh.nix
        ];

        # GNOME APPS ISSUE #
          
        targets.genericLinux.enable = true;
        xdg.mime.enable = true;
        xdg.systemDirs.data = [ "${config.home.homeDirectory}/.nix-profile/share/applications" ];
        
        ####################        

        home = {
                username = "castle";
                homeDirectory = "/home/castle";
                stateVersion = "24.11";
        };
}
