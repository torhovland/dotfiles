{ pkgs, ... }:

with pkgs;
{
  home.packages = with pkgs; [
    # MISC
    cachix
    appimage-run
    appimagekit
    arandr
    tmate

    # TERMINAL
    any-nix-shell
    gotop
    htop
    neofetch
    cava
    zip
    unrar
    unzip
    escrotum
    tree
    gnupg
    aria2
    imagemagick
    feh

    # DEVELOPMENT
    nixfmt
    conda
    gcc
    m4
    gnumake
    binutils
    gdb
    rustup

    # DEFAULT
    pavucontrol
    (callPackage ./sigma-file-explorer.nix { })
    kotatogram-desktop
    signal-desktop
    spotify
    blueman
    wineWowPackages.stable
    obs-studio
  ];

}
