# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, ... }:

{
  #imports =
  #  [ <nixpkgs/nixos/modules/installer/scan/not-detected.nix>
  #  ];

  boot.initrd.availableKernelModules = [ "ehci_pci" "ahci" "xhci_pci" "usb_storage" "sd_mod" "sdhci_pci" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "tank/system/root";
      fsType = "zfs";
    };

  fileSystems."/var" =
    { device = "tank/system/var";
      fsType = "zfs";
    };

  fileSystems."/nix" =
    { device = "tank/local/nix";
      fsType = "zfs";
    };

  fileSystems."/home" =
    { device = "tank/user/home";
      fsType = "zfs";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/9FA9-15AC";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/53dcf950-408d-41e0-bd23-5f725b69d9ff"; }
    ];

  nix.maxJobs = lib.mkDefault 4;
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}