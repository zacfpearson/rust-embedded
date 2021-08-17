let
  moz_overlay = import (builtins.fetchTarball https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz);
  pkgs = import <nixpkgs> { overlays = [ moz_overlay ]; };
  channel = pkgs.rustChannelOf {
      channel = "stable";
  };
  rust = (channel.rust.override {
    targets = ["thumbv7em-none-eabihf" ];
  });
in
  with pkgs;
  stdenv.mkDerivation {
    name = "moz_overlay_shell";
    buildInputs = [
      rust
      gcc
    ];
  }
