{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.enableNixpkgsReleaseCheck = false;
  home.username = "random";
  home.homeDirectory = "/home/random";

  # Packages that should be installed to the user profile.
  home.packages = [
    pkgs.vscodium
    pkgs.gruvbox-gtk-theme
    pkgs.neovim
    pkgs.vim
    pkgs.htop
    pkgs.fortune
    pkgs.git
    pkgs.alacritty
    pkgs.waybar
    pkgs.gnome-tweaks
    pkgs.fastfetch
    pkgs.rofi
    pkgs.font-awesome
    pkgs.xorg.xinit
    pkgs.hyprland
    pkgs.hyprcursor
    pkgs.hyprpaper
    pkgs.wofi
    pkgs.nerd-fonts.jetbrains-mono
    pkgs.nwg-look
    pkgs.catppuccin-gtk
    pkgs.wlogout
    pkgs.nerd-fonts.iosevka-term
    pkgs.filezilla
    pkgs.kitty
    pkgs.rofi
    pkgs.ly
    pkgs.nautilus
    pkgs.curl
    pkgs.starship
    pkgs.conky
    pkgs.cava
    pkgs.obs-studio
    pkgs.fish
    pkgs.teams
    pkgs.vscode
    pkgs.ghostty
    pkgs.emacsPackages.doom
    pkgs.lazygit
    pkgs.gnumake42
    pkgs.libgccjit
    pkgs.rocmPackages.hipcc
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  programs.emacs = {
    enable = true;
    extraPackages = epkgs: [
      epkgs.nix-mode
      epkgs.magit
    ];
  };

  services.gpg-agent = {
    enable = true;
    defaultCacheTtl = 1800;
    enableSshSupport = true;
  };
}
