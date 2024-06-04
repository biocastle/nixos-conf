{ config, ... }: {

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    dotDir = ".config/zsh";
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases =
    let
            flakeDir = "~/nix"; 
    in {
      
      ll = "ls -l";
      rb = "sudo nixos-rebuild switch --flake ${flakeDir}";
      upd = "sudo nix flake update ${flakeDir}";
      upg = "sudo nixos-rebuild switch --upgrade --flake ${flakeDir}";
      ff = "fastfetch";
      hms = "home-manager switch --flake ${flakeDir}";
    };

    initExtra = ''
      eval "$(zoxide init zsh)"
      eval "$(starship init zsh)"
    '';

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";

    oh-my-zsh = {
      enable = true;
      plugins = [ "git" "sudo" ];
      theme = "agnoster"; # blinks is also really nice
    };
  };
}
