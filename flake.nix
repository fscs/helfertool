{
  inputs = {
    dream2nix.url = "github:nix-community/dream2nix";
    nixpkgs.follows = "dream2nix/nixpkgs";
    mach-nix.url = "github:DavHau/mach-nix";
  };

  outputs =
    { self
    , mach-nix
    , dream2nix
    , nixpkgs
    ,
    }:
    let
      eachSystem = nixpkgs.lib.genAttrs [
        "aarch64-darwin"
        "aarch64-linux"
        "x86_64-darwin"
        "x86_64-linux"
      ];
    in
    {
      packages = eachSystem (system: {
        mach = mach-nix.buildPythonPackage {
          src = ./.;
          format = "pyproject";
          buildInputs = [ nixpkgs.openldap nixpkgs.openssl_legacy nixpkgs.python311Packages.python-ldap ];
        };
        default = dream2nix.lib.evalModules {
          # 
          packageSets.nixpkgs = nixpkgs.legacyPackages.${system};
          modules = [
            ./default.nix # 
            {
              paths.projectRoot = ./.;
              paths.projectRootFile = "flake.nix";
              paths.package = ./.;
            }
          ];
        };
      });
    };
}
