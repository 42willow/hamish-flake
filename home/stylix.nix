{inputs, ...}: {
  imports = [
    inputs.stylix.nixosModules.stylix
  ];
  stylix.targets.zen-browser.enable = false;
}
