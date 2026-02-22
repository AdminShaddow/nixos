{pkgs, lib, ...}:
{
  programs.steam = {
      enable = true;
      package = pkgs.steam;
      extraCompatPackages = with pkgs; [
        proton-ge-bin
      ];
      remotePlay.openFirewall = true;
      dedicatedServer.openFirewall = true;
      localNetworkGameTransfers.openFirewall = true;
      protontricks.enable = false;
      #extest.enable = true;
    };
}
