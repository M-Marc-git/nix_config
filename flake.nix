{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		home-manager.url = "github:nix-community/home-manager";
		base16.url = "github:SenchoPens/base16.nix";
		base16-schemes = {
			url = "github:base16-project/base16-schemes";
			flake = false;
		};
		base16-vim = {
			url = "github:base16-project/base16-vim";
			flake = false;
		};
	};

	outputs = { self, nixpkgs, home-manager, ...}@inputs : 
	let 
		arch = "x86_64-linux";
		host_name = "alpha";
		user = "marc";
		theme = "catppuccin-frappe";
		scheme = "${inputs.base16-schemes}/${theme}.yaml";
	in {
		nixosConfigurations.${host_name} = nixpkgs.lib.nixosSystem {
			system = arch;
			specialArgs = {
				inherit inputs;
				inherit arch;
				inherit host_name;
			};
			modules = [
				./system/${host_name}/hardware-configuration.nix
				./system/${host_name}/specific.nix
				./system/configuration.nix
			];
		};

		homeConfigurations.${user} = home-manager.lib.homeManagerConfiguration {
			pkgs = import nixpkgs { 
				system = arch;
				config = { allowUnfree = true; };
			};
			extraSpecialArgs = {
				inherit inputs;
				inherit arch;
				inherit host_name;
				inherit user;
				inherit scheme;
			};
			modules = [
				inputs.base16.nixosModule {
					scheme = "${inputs.base16-schemes}/${theme}.yaml";
				}
				./home/home.nix
			];
		};
		packages.${arch}.${user} = self.homeConfigurations.${user}.activationPackage;
	};
}
