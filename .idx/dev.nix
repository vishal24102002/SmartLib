{ pkgs }:
{
  channel = "stable-24.05";

  packages = [
    pkgs.jdk17
    pkgs.unzip

    # Flutter Linux desktop deps
    pkgs.clang
    pkgs.cmake
    pkgs.ninja
    pkgs.pkg-config
    pkgs.glib
    pkgs.pcre
    pkgs.libepoxy
    pkgs.xorg.libX11
    pkgs.xorg.libXi
    pkgs.xorg.libXcursor
    pkgs.xorg.libXrandr
    pkgs.xorg.libXtst
    pkgs.xorg.libXrender
    pkgs.xorg.libXcomposite
    pkgs.xorg.libXdamage
    pkgs.xorg.libXfixes
    pkgs.xorg.libXext
  ];

  idx.extensions = [ ];

  idx.previews = {
    previews = {
      web = {
        command = [
          "flutter" "run" "--machine"
          "-d" "web-server"
          "--web-hostname" "0.0.0.0"
          "--web-port" "$PORT"
        ];
        manager = "flutter";
      };

      android = {
        command = [
          "flutter" "run"
          "--machine"
          "-d" "android"
        ];
        manager = "flutter";
      };
    };
  };
}
