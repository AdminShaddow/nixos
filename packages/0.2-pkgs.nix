{pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    # Installers / Wrappers / Packager / etc..
    /*
    cmake
    cargo-tauri
    cargo
    rustc
    uv
    nodejs_24
    */
    pkg-config
    git
    eget
    # Games
    (prismlauncher.override {
      jdks = [
        javaPackages.compiler.temurin-bin.jdk-21
        javaPackages.compiler.temurin-bin.jdk-8
        javaPackages.compiler.temurin-bin.jdk-17
      ];
    })
    umu-launcher
    nero-umu
    (wineWow64Packages.stable.override { waylandSupport = true;})
    winetricks
    # Apps
    gimp
    lorien
    libreoffice-still
    lmms
    # Programmieren
    dotnet-sdk_9
    dotnet-runtime_9
    # Customization
    fastfetch
    lolcat
    gnome-themes-extra
    #
    pulseaudio
    pavucontrol
    brightnessctl
    dunst
    volctl
    qimgv
    # For Hyprland / Wayland
    hyprshot
    hyprlock
    hyprcursor
    font-awesome
    swww
    wl-clicker
    # For IP-Camera
    mpv
    # X11 / Debugging / Tools
    btop
    xclicker
    acpi
    udisks
    # Networking
    arp-scan
    # Packaging / Formatting / Disk
    #rpi-imager
    kdePackages.isoimagewriter
    # Testing
    #discordchatexporter-desktop
    howl
    #clipse
    #slides
    (ungoogled-chromium.override { enableWideVine = true; })
    starship
    neovim
    gammastep
    obsidian

    # tparted
    parted
    tparted
    xfsprogs
    dosfstools
    exfatprogs
    e2fsprogs

    wl-clipboard
    trash-cli
    _7zz-rar

    copyparty
    cloudflared
    ];
}
