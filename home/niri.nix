{
  config,
  lib,
  ...
}: {
  programs.niri.settings = {
    animations.enable = true;

    binds = with config.lib.niri.actions; {
      "Mod+Q" = { repeat = false; action = close-window; };
      "Mod+Return" = { action.spawn = "alacritty"; };
      "Mod+P" = { action.spawn = "fuzzel"; };

      "Mod+Left".action  = focus-column-left;
      "Mod+Down".action  = focus-window-down;
      "Mod+Up".action    = focus-window-up;
      "Mod+Right".action = focus-column-right;
      "Mod+H".action     = focus-column-left;
      "Mod+J".action     = focus-window-down;
      "Mod+K".action     = focus-window-up;
      "Mod+L".action     = focus-column-right;
    };
  };
}
