{


               description = "poopie flake";

              # inputs.hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";

               inputs = {
                       nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
                       nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-24.05";                       

                       home-manager = {
                               url = "github:nix-community/home-manager";
                               inputs.nixpkgs.follows = "nixpkgs";
                       };
                       hyprland.url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
               };

               outputs = { self, nixpkgs, nixpkgs-stable, home-manager,  ... }@inputs: 
                       let
                               system = "x86_64-linux"; 
                       in {
                    
                       nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      specialArgs = {
        pkgs-stable = import nixpkgs-stable {
          inherit system;
          config.allowUnfree = true;
        };
        inherit inputs system;
      };
      modules = [
        ./nixos/configuration.nix
      ];
    };

                       homeConfigurations.cursesntax = home-manager.lib.homeManagerConfiguration {
                               pkgs = nixpkgs.legacyPackages.${system};
                               modules = [ ./home-manager/home.nix ];
                       };
               };



}
