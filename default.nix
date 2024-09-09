{ config
, lib
, dream2nix
, ...
}:
let
  pyproject = lib.importTOML (config.mkDerivation.src + /pyproject.toml); # 
in
{
  imports = [
    dream2nix.modules.dream2nix.pip # 
  ];

  deps = { nixpkgs, ... }: {
    python = nixpkgs.python39; # 
    inherit (nixpkgs) openldap
      pkg-config
      cyrus_sasl;
  };

  inherit (pyproject.project) name version; # 

  mkDerivation = {
    src = lib.cleanSourceWith {
      # 
      src = lib.cleanSource ./.;
      filter = name: type:
        !(builtins.any (x: x) [
          (lib.hasSuffix ".nix" name)
          (lib.hasSuffix ".yaml" name)
          (lib.hasPrefix "." (builtins.baseNameOf name))
          (lib.hasSuffix "flake.lock" name)
        ]);
    };
  };

  buildPythonPackage = {
    pyproject = true; # 
    dependencies = with config.deps; [
      openldap
      pkg-config
      cyrus_sasl
    ];
    pythonImportsCheck = [
      # 
      "django"
    ];
  };

  pip = {
    # 
    requirementsList = [
      "django==3.2.*"
      "celery<5.0.0"
      "vine<5.0.0" # added due to celery
      "amqp<5.0.0" # pinned due to celery

      # packages pinned to compatible version
      "django_compressor~=4.1"
      "django_ical~=1.8"
      "django_select2~=7.10"
      "django-axes~=5.39"
      "django-bleach~=3.0"
      "django-bootstrap5~=22.1"
      "django-ckeditor~=6.5"
      "django-countries~=7.3"
      "django-icons~=22.1"
      "django-libsass~=0.9"
      "django-modeltranslation~=0.18"
      "django-multiselectfield~=0.1"
      "csscompressor~=0.9"
      "jmespath~=1.0"
      "mozilla-django-oidc~=2.0"
      "pillow~=9.2"
      "python-dateutil~=2.8"
      "python-magic~=0.4"
      "pyyaml~=6.0"
      "reportlab~=3.6"
      "xlsxwriter~=3.0"
    ];

    flattenDependencies = true; # 

    overrides.click = {
      # 
      buildPythonPackage.pyproject = true;
      mkDerivation.nativeBuildInputs = [ config.deps.python.pkgs.flit-core ];
    };
  };
}
