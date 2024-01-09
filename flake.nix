{
	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
		home-manager.url = "github:nix-community/home-manager";
	};

	outputs = { self, nixpkgs, ...}@inputs : 
	let 
		arch = "x86_64-linux";
		host_name = "beta";
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
	};
}
