# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  imports = [ inputs.stable.nixosModules.notDetected ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/c171b746-473a-4093-8e13-8f70e6f1ffc4";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/376fd50c-fec3-499a-97e7-a28e992134bc"; }
    ];

  boot = { 
    initrd.availableKernelModules = [ "ehci_pci" "ahci" "xhci_pci" "usb_storage" "sd_mod" "sdhci_pci" ];
    initrd.kernelModules = [ ];
    kernelModules = [ "kvm-intel" ];
    extraModulePackages = [ ];
    boot.loader.grub = {
      enable = true;
      version = 2;
      device = "/dev/sda";
    };
  };

  networking = {
    hostName = "thinkpad-x220";
    networkmanager.enable = true;
  };

  nix.maxJobs = lib.mkDefault 4;
  nixpkgs.config.allowUnfree = true;
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";

  hardware = {
    bluetooth.enable = true;
    pulseaudio.package = pkgs.pulseaudioFull;
    enableRedistributableFirmware = true;
    cpu.intel.updateMicrocode = true;
  };

}