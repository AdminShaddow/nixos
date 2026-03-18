{pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    # Installers / Wrappers / Packager / etc..
    /*
    cargo-tauri
    cargo
    rustc
    uv
    nodejs_24
    */
    cmake
    gcc
    gdb
    pkg-config
    git
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
    codeblocks
    # Customization
    fastfetch
    lolcat
    gnome-themes-extra
    #
    pulseaudio
    pavucontrol
    brightnessctl
    dunst
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
    ffmpeg
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
    gammastep
    obsidian

    # Partitioning
    parted
    tparted
    xfsprogs
    dosfstools
    exfatprogs
    e2fsprogs

    # Yazi-Stuff
    wl-clipboard
    trash-cli
    _7zz-rar

    # Storage Hosting
    copyparty
    cloudflared
    ];
}
