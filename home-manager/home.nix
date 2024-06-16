{ config, pkgs, ... }:

{
  imports = [
    ./packages/git.nix
    ./packages/nvim.nix
    ./packages/fish.nix
    ./packages/tmux.nix
    ./packages/alacritty.nix
    ./packages/hyprland.nix
  ];

  nix.package = pkgs.nix;

  home.username = "sombrer01";
  home.homeDirectory = "/home/sombrer01";

  home.packages = let
    nerdfonts = pkgs.nerdfonts.override {
      fonts = [
        "Ubuntu"
        "UbuntuMono"
        "CascadiaCode"
        "FantasqueSansMono"
        "FiraCode"
      ];
    };
  in [nerdfonts];

  home.sessionVariables = {
    EDITOR = "nvim";
    # SHELL = "${pkgs.nushell}/bin/nu";
    NIXPKGS_ALLOW_UNFREE = "1";
    NIXPKGS_ALLOW_INSECURE = "1";
    BAT_THEME = "base16";
    GOPATH = "${config.home.homeDirectory}/.local/share/go";
    GOMODCACHE = "${config.home.homeDirectory}/.cache/go/pkg/mod";
  };

  nix.settings = {
    experimental-features = ["nix-command" "flakes"];
    warn-dirty = false;
  };


  # This value determines the Home Manager release that your configuration is
  # compatible with. This helps avoid breakage when a new Home Manager release
  # introduces backwards incompatible changes.
  #
  # You should not change this value, even if you update Home Manager. If you do
  # want to update the value, then make sure to first check the Home Manager
  # release notes.
  home.stateVersion = "23.11"; # Please read the comment before changing.

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
