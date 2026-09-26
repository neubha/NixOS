sudo nano /etc/nixos/configuration.nix

Uncomment or add

  environment.systemPackages = with pkgs; [
  git
  ];


  nix.settings.experimental-features = [ "nix-command" ];

Now run

sudo nixos-rebuild switch


Now onto a directory that one will never remove

git clone https://github.com/neubha/nixos.git


