{pkgs, lib, ...}:
{
  programs.vscode = {
      enable = true;
      package = pkgs.vscode;
      defaultEditor = true;
      extensions = with pkgs.vscode-extensions; [
        # Extensions
        ms-dotnettools.vscode-dotnet-runtime
        ms-vscode.cpptools
        ms-vscode.cmake-tools
        #ms-python.python
        #ms-python.debugpy
        jnoortheen.nix-ide
        alefragnani.project-manager
      ];
    };
}
