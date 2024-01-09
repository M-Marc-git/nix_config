{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		home-manager.url = "github:nix-community/home-manager";
	};

	outputs = { self, nixpkgs, home-manager, ...}@inputs : 
	let 
		arch = "x86_64-linux";
		host_name = "beta";
		user = "marc";
	in {
		nixosConfigurations.${host_name} = nixpkgs.lib.nixosSystem {
			system = arch;
			specialArgs = {
				inherit inputs;
				inherit arch;
				inherit host_name;
			};
			modules = [
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
			};
			modules = [
				./home/home.nix
			];
		};
		packages.${arch}.${user} = self.homeConfigurations.${user}.activationPackage;
	};
}
