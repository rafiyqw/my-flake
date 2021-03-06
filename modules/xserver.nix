{ config, lib, pkgs, inputs, ... }: {
 
  services.xserver = {
    enable = true;
    displayManager.lightdm.enable = true;
    displayManager.lightdm.autoLogin = {
      enable = true;
      user = "rafiyq";
    };
    displayManager.session = [{
      manage = "desktop";
      name = "xsession";
      start = "exec $HOME/.xsession";
    }];
    displayManager.defaultSession = "xsession";
    # https://vid.bina.me/tools/nixos/breaking-down-the-nixos-gui-setup/
    displayManager.job.logToJournal = true;
    
    libinput.enable = true;
  };

  services.picom = {
    enable = true;
    # inactiveOpacity = "0.8";
    backend = "glx";
    vSync = true;
    settings = {
      glx-swap-method = 2;
      paint-on-overlay = true;
      glx-no-stencil = true;
      glx-no-rebind-pixmap = true;
    };
  };

}
