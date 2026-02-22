{pkgs, lib, ... }:
{
  services = {
    dbus.implementation = "broker";
    #
    lact.enable = true;
    #
    bpftune.enable = true;
    #
    ananicy = {
      enable = true;
      package = pkgs.ananicy-cpp;
      rulesProvider = pkgs.ananicy-rules-cachyos;
    };
    #
    scx = {
      enable = true;
      scheduler = "scx_lavd";
    };
  };
#-----
  nix = {
    optimise = {
      automatic = true;
      persistent = true;
    };
  };
#-----

  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 200;
    priority = 10;
    swapDevices = 1;
  };

#-----
  powerManagement = {
    enable = true;
    powertop.enable = true;
    cpuFreqGovernor = "performance";
    scsiLinkPolicy = "max_performance";
  };
#-----
  hardware = {
    amdgpu.overdrive.enable = true;
    bluetooth.enable = false;
  };
#-----
  systemd.oomd.enable = false;
#-----
}
