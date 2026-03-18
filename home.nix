{ config, pkgs, inputs, ... }:
/*
let
  # directory of dotfiles
  dir-df = "/home/marcelb/dotfiles";

  df-vesktop = "${dir-df}/vesktop/settings.json";
  df-vencord = "${dir-df}/vesktop/settings/settings.json";

  mkFile = config.lib.file.mkOutOfStoreSymlink;
in
*/
let
  ypl = pkgs.yaziPlugins;
in
{
  imports = [
    inputs.stylix.homeModules.stylix
  ];

/*
  xdg.configFile = {
    "vesktop/settings.json" = {
      source = mkFile df-vesktop;
      force = true;
    };
    "vesktop/settings/settings.json" = {
      source = mkFile df-vencord;
      force = true;
    };
  };
*/

  stylix = {
  	enable = true;
	base16Scheme = "${pkgs.base16-schemes}/share/themes/rose-pine-moon.yaml";
	polarity = "dark";
    targets = {
    waybar.enable = false;
    };
  };

  programs = {
    vesktop.enable = true;
    waybar.enable = true;
    kitty = {
      enable = true;
      shellIntegration.enableFishIntegration = true;
      settings = {
        include = "other.conf";
      };
    };
    rofi = {
      enable = true;
      plugins = with pkgs; [
        rofi-calc
        rofi-nerdy
      ];
    };
    yazi = {
      enable = true;
      enableFishIntegration = true;
      plugins = {
        mount = ypl.mount;
        chmod = ypl.chmod;
        yatline = ypl.yatline;
        recycle-bin = ypl.recycle-bin;
        full-border = ypl.full-border;
        wl-clipboard = ypl.wl-clipboard;
        rich-preview = ypl.rich-preview;
        smart-filter = ypl.smart-filter;
        mediainfo = ypl.mediainfo;
	      sudo = ypl.sudo;
	      compress = ypl.compress;
	      rsync = ypl.rsync;
	      yatline-githead = ypl.yatline-githead;
      };
      package = (pkgs.yazi.override { _7zz = pkgs._7zz-rar; });
      extraPackages = with pkgs; [
        file
        _7zz-rar
        jq
        poppler
        fd
        fzf
        zoxide
        resvg
        imagemagick
        mediainfo
      ];
    };
  };


  home.packages = with pkgs; [
    rofi-screenshot
    rofimoji
  ];

  home.username = "marcelb";
  home.homeDirectory = "/home/marcelb";
  home.stateVersion = "25.05";
}
