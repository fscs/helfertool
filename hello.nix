{ pkgs, python, ... }:
with builtins;
with pkgs.lib;
let
  pypi_fetcher_src = builtins.fetchTarball {
    name = "nix-pypi-fetcher-2";
    url = "https://github.com/DavHau/nix-pypi-fetcher-2/tarball/f83bd320cf92d2c3fcf891f16195189aab0db8fe";
    # Hash obtained using `nix-prefetch-url --unpack <url>`
    sha256 = "sha256-y7YGrGcH/RuoEG4LNLghOeecnVYS1lNhhso9NFSA2WA=";
  };
  pypiFetcher = import pypi_fetcher_src { inherit pkgs; };
  fetchPypi = pypiFetcher.fetchPypi;
  fetchPypiWheel = pypiFetcher.fetchPypiWheel;
  pkgsData = fromJSON ''{"astroid": {"name": "astroid", "ver": "2.11.7", "build_inputs": [], "prop_build_inputs": ["setuptools", "wrapt", "lazy-object-proxy", "typing-extensions"], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "astroid-2.11.7-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "bump2version": {"name": "bump2version", "ver": "1.0.1", "build_inputs": [], "prop_build_inputs": [], "is_root": true, "provider_info": {"provider": "wheel", "wheel_fname": "bump2version-1.0.1-py2.py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "cfgv": {"name": "cfgv", "ver": "3.3.1", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "cfgv-3.3.1-py2.py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "dill": {"name": "dill", "ver": "0.3.6", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "dill-0.3.6-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "distlib": {"name": "distlib", "ver": "0.3.6", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "distlib-0.3.6-py2.py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "filelock": {"name": "filelock", "ver": "3.12.0", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "filelock-3.12.0-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "identify": {"name": "identify", "ver": "2.5.24", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "identify-2.5.24-py2.py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "isort": {"name": "isort", "ver": "5.12.0", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "isort-5.12.0-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "lazy-object-proxy": {"name": "lazy-object-proxy", "ver": "1.9.0", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "lazy_object_proxy-1.9.0-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "mccabe": {"name": "mccabe", "ver": "0.7.0", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "mccabe-0.7.0-py2.py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "nodeenv": {"name": "nodeenv", "ver": "1.8.0", "build_inputs": [], "prop_build_inputs": ["setuptools"], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "nodeenv-1.8.0-py2.py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "platformdirs": {"name": "platformdirs", "ver": "3.5.1", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "platformdirs-3.5.1-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "pre-commit": {"name": "pre-commit", "ver": "2.21.0", "build_inputs": [], "prop_build_inputs": ["identify", "pyyaml", "virtualenv", "nodeenv", "cfgv"], "is_root": true, "provider_info": {"provider": "wheel", "wheel_fname": "pre_commit-2.21.0-py2.py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "pylint": {"name": "pylint", "ver": "2.14.5", "build_inputs": [], "prop_build_inputs": ["mccabe", "astroid", "dill", "isort", "platformdirs", "tomlkit", "tomli", "typing-extensions"], "is_root": true, "provider_info": {"provider": "wheel", "wheel_fname": "pylint-2.14.5-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "pylint-celery": {"name": "pylint-celery", "ver": "0.3", "build_inputs": [], "prop_build_inputs": ["pylint", "astroid", "pylint-plugin-utils"], "is_root": true, "provider_info": {"provider": "sdist", "wheel_fname": null, "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "pylint-django": {"name": "pylint-django", "ver": "2.5.3", "build_inputs": [], "prop_build_inputs": ["pylint", "pylint-plugin-utils"], "is_root": true, "provider_info": {"provider": "wheel", "wheel_fname": "pylint_django-2.5.3-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "pylint-plugin-utils": {"name": "pylint-plugin-utils", "ver": "0.8.2", "build_inputs": [], "prop_build_inputs": ["pylint"], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "pylint_plugin_utils-0.8.2-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "pyyaml": {"name": "pyyaml", "ver": "6.0", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "PyYAML-6.0-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_12_x86_64.manylinux2010_x86_64.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "setuptools": {"name": "setuptools", "ver": "57.2.0", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "nixpkgs", "wheel_fname": null, "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "tomli": {"name": "tomli", "ver": "2.0.1", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "tomli-2.0.1-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "tomlkit": {"name": "tomlkit", "ver": "0.11.8", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "tomlkit-0.11.8-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "typing-extensions": {"name": "typing-extensions", "ver": "4.6.2", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "typing_extensions-4.6.2-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "virtualenv": {"name": "virtualenv", "ver": "20.23.0", "build_inputs": [], "prop_build_inputs": ["platformdirs", "distlib", "filelock"], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "virtualenv-20.23.0-py3-none-any.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}, "wrapt": {"name": "wrapt", "ver": "1.15.0", "build_inputs": [], "prop_build_inputs": [], "is_root": false, "provider_info": {"provider": "wheel", "wheel_fname": "wrapt-1.15.0-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl", "url": null, "hash": null}, "extras_selected": [], "removed_circular_deps": [], "build": null}}'';
  isPyModule = pkg:
    isAttrs pkg && hasAttr "pythonModule" pkg;
  normalizeName = name: (replaceStrings ["_"] ["-"] (toLower name));
  depNamesOther = [
    "depsBuildBuild"
    "depsBuildBuildPropagated"
    "nativeBuildInputs"
    "propagatedNativeBuildInputs"
    "depsBuildTarget"
    "depsBuildTargetPropagated"
    "depsHostHost"
    "depsHostHostPropagated"
    "depsTargetTarget"
    "depsTargetTargetPropagated"
    "checkInputs"
    "installCheckInputs"
  ];
  depNamesAll = depNamesOther ++ [
    "propagatedBuildInputs"
    "buildInputs"
  ];
  removeUnwantedPythonDeps = pythonSelf: pname: inputs:
    # Do not remove any deps if provider is nixpkgs and actual dependencies are unknown.
    # Otherwise we risk removing dependencies which are needed.
    if pkgsData."${pname}".provider_info.provider == "nixpkgs"
        &&
        (pkgsData."${pname}".build_inputs == null
            || pkgsData."${pname}".prop_build_inputs == null) then
      inputs
    else
      filter
        (dep:
          if ! isPyModule dep || pkgsData ? "${normalizeName (get_pname dep)}" then
            true
          else
            trace "removing dependency ${dep.name} from ${pname}" false)
        inputs;
  updatePythonDeps = newPkgs: pkg:
    if ! isPyModule pkg then pkg else
    let
      pname = normalizeName (get_pname pkg);
      newP =
        # All packages with a pname that already exists in our overrides must be replaced with our version.
        # Otherwise we will have a collision
        if newPkgs ? "${pname}" && pkg != newPkgs."${pname}" then
          trace "Updated inherited nixpkgs dep ${pname} from ${pkg.version} to ${newPkgs."${pname}".version}"
          newPkgs."${pname}"
        else
          pkg;
    in
      newP;
  updateAndRemoveDeps = pythonSelf: name: inputs:
    removeUnwantedPythonDeps pythonSelf name (map (dep: updatePythonDeps pythonSelf dep) inputs);
  cleanPythonDerivationInputs = pythonSelf: name: oldAttrs:
    mapAttrs (n: v: if elem n depNamesAll then updateAndRemoveDeps pythonSelf name v else v ) oldAttrs;
  override = pkg:
    if hasAttr "overridePythonAttrs" pkg then
        pkg.overridePythonAttrs
    else
        pkg.overrideAttrs;
  nameMap = {
    pytorch = "torch";
  };
  get_pname = pkg:
    let
      res = tryEval (
        if pkg ? src.pname then
          pkg.src.pname
        else if pkg ? pname then
          let pname = pkg.pname; in
            if nameMap ? "${pname}" then nameMap."${pname}" else pname
          else ""
      );
    in
      toString res.value;
  get_passthru = pypi_name: nix_name:
    # if pypi_name is in nixpkgs, we must pick it, otherwise risk infinite recursion.
    let
      python_pkgs = python.pkgs;
      pname = if hasAttr "${pypi_name}" python_pkgs then pypi_name else nix_name;
    in
      if hasAttr "${pname}" python_pkgs then
        let result = (tryEval
          (if isNull python_pkgs."${pname}" then
            {}
          else
            python_pkgs."${pname}".passthru));
        in
          if result.success then result.value else {}
      else {};
  allCondaDepsRec = pkg:
    let directCondaDeps =
      filter (p: p ? provider && p.provider == "conda") (pkg.propagatedBuildInputs or []);
    in
      directCondaDeps ++ filter (p: ! directCondaDeps ? p) (map (p: p.allCondaDeps) directCondaDeps);
  tests_on_off = enabled: pySelf: pySuper:
    let
      mod = {
        doCheck = enabled;
        doInstallCheck = enabled;
      };
    in
    {
      buildPythonPackage = args: pySuper.buildPythonPackage ( args // {
        doCheck = enabled;
        doInstallCheck = enabled;
      } );
      buildPythonApplication = args: pySuper.buildPythonPackage ( args // {
        doCheck = enabled;
        doInstallCheck = enabled;
      } );
    };
  pname_passthru_override = pySelf: pySuper: {
    fetchPypi = args: (pySuper.fetchPypi args).overrideAttrs (oa: {
      passthru = { inherit (args) pname; };
    });
  };
  mergeOverrides = with pkgs.lib; foldl composeExtensions (self: super: {});
  merge_with_overr = enabled: overr:
    mergeOverrides [(tests_on_off enabled) pname_passthru_override overr];
  select_pkgs = ps: [
    ps."bump2version"
    ps."pre-commit"
    ps."pylint"
    ps."pylint-celery"
    ps."pylint-django"
  ];
  overrides' = manylinux1: autoPatchelfHook: merge_with_overr false (python-self: python-super: let all = {
    "astroid" = python-self.buildPythonPackage {
      pname = "astroid";
      version = "2.11.7";
      src = fetchPypiWheel "astroid" "2.11.7" "astroid-2.11.7-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "astroid" "astroid") // { provider = "wheel"; };
      propagatedBuildInputs = with python-self; [ lazy-object-proxy setuptools typing-extensions wrapt ];
    };
    "bump2version" = python-self.buildPythonPackage {
      pname = "bump2version";
      version = "1.0.1";
      src = fetchPypiWheel "bump2version" "1.0.1" "bump2version-1.0.1-py2.py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "bump2version" "bump2version") // { provider = "wheel"; };
    };
    "cfgv" = python-self.buildPythonPackage {
      pname = "cfgv";
      version = "3.3.1";
      src = fetchPypiWheel "cfgv" "3.3.1" "cfgv-3.3.1-py2.py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "cfgv" "cfgv") // { provider = "wheel"; };
    };
    "dill" = python-self.buildPythonPackage {
      pname = "dill";
      version = "0.3.6";
      src = fetchPypiWheel "dill" "0.3.6" "dill-0.3.6-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "dill" "dill") // { provider = "wheel"; };
    };
    "distlib" = python-self.buildPythonPackage {
      pname = "distlib";
      version = "0.3.6";
      src = fetchPypiWheel "distlib" "0.3.6" "distlib-0.3.6-py2.py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "distlib" "distlib") // { provider = "wheel"; };
    };
    "filelock" = python-self.buildPythonPackage {
      pname = "filelock";
      version = "3.12.0";
      src = fetchPypiWheel "filelock" "3.12.0" "filelock-3.12.0-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "filelock" "filelock") // { provider = "wheel"; };
    };
    "identify" = python-self.buildPythonPackage {
      pname = "identify";
      version = "2.5.24";
      src = fetchPypiWheel "identify" "2.5.24" "identify-2.5.24-py2.py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "identify" "identify") // { provider = "wheel"; };
    };
    "isort" = python-self.buildPythonPackage {
      pname = "isort";
      version = "5.12.0";
      src = fetchPypiWheel "isort" "5.12.0" "isort-5.12.0-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "isort" "isort") // { provider = "wheel"; };
    };
    "lazy-object-proxy" = python-self.buildPythonPackage {
      pname = "lazy-object-proxy";
      version = "1.9.0";
      src = fetchPypiWheel "lazy-object-proxy" "1.9.0" "lazy_object_proxy-1.9.0-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "lazy-object-proxy" "lazy-object-proxy") // { provider = "wheel"; };
      nativeBuildInputs = [ autoPatchelfHook ];
      autoPatchelfIgnoreMissingDeps = true;
      propagatedBuildInputs = with python-self; manylinux1 ++ [  ];
    };
    "mccabe" = python-self.buildPythonPackage {
      pname = "mccabe";
      version = "0.7.0";
      src = fetchPypiWheel "mccabe" "0.7.0" "mccabe-0.7.0-py2.py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "mccabe" "mccabe") // { provider = "wheel"; };
    };
    "nodeenv" = python-self.buildPythonPackage {
      pname = "nodeenv";
      version = "1.8.0";
      src = fetchPypiWheel "nodeenv" "1.8.0" "nodeenv-1.8.0-py2.py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "nodeenv" "nodeenv") // { provider = "wheel"; };
      propagatedBuildInputs = with python-self; [ setuptools ];
    };
    "platformdirs" = python-self.buildPythonPackage {
      pname = "platformdirs";
      version = "3.5.1";
      src = fetchPypiWheel "platformdirs" "3.5.1" "platformdirs-3.5.1-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "platformdirs" "platformdirs") // { provider = "wheel"; };
    };
    "pre-commit" = python-self.buildPythonPackage {
      pname = "pre-commit";
      version = "2.21.0";
      src = fetchPypiWheel "pre-commit" "2.21.0" "pre_commit-2.21.0-py2.py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "pre-commit" "pre-commit") // { provider = "wheel"; };
      propagatedBuildInputs = with python-self; [ cfgv identify nodeenv pyyaml virtualenv ];
    };
    "pylint" = python-self.buildPythonPackage {
      pname = "pylint";
      version = "2.14.5";
      src = fetchPypiWheel "pylint" "2.14.5" "pylint-2.14.5-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "pylint" "pylint") // { provider = "wheel"; };
      propagatedBuildInputs = with python-self; [ astroid dill isort mccabe platformdirs tomli tomlkit typing-extensions ];
    };
    "pylint-celery" = override python-super."pylint-celery" ( oldAttrs:
      # filter out unwanted dependencies and replace colliding packages
      let cleanedAttrs = cleanPythonDerivationInputs python-self "pylint-celery" oldAttrs; in cleanedAttrs // {
        pname = "pylint-celery";
        version = "0.3";
        passthru = (get_passthru "pylint-celery" "pylint-celery") // { provider = "sdist"; };
        buildInputs = with python-self; (cleanedAttrs.buildInputs or []) ++ [  ];
        propagatedBuildInputs =
          (cleanedAttrs.propagatedBuildInputs or [])
          ++ ( with python-self; [ astroid pylint pylint-plugin-utils ]);
        src = fetchPypi "pylint-celery" "0.3";
      }
    );
    "pylint-django" = python-self.buildPythonPackage {
      pname = "pylint-django";
      version = "2.5.3";
      src = fetchPypiWheel "pylint-django" "2.5.3" "pylint_django-2.5.3-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "pylint-django" "pylint-django") // { provider = "wheel"; };
      propagatedBuildInputs = with python-self; [ pylint pylint-plugin-utils ];
    };
    "pylint-plugin-utils" = python-self.buildPythonPackage {
      pname = "pylint-plugin-utils";
      version = "0.8.2";
      src = fetchPypiWheel "pylint-plugin-utils" "0.8.2" "pylint_plugin_utils-0.8.2-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "pylint-plugin-utils" "pylint-plugin-utils") // { provider = "wheel"; };
      propagatedBuildInputs = with python-self; [ pylint ];
    };
    "pyyaml" = python-self.buildPythonPackage {
      pname = "pyyaml";
      version = "6.0";
      src = fetchPypiWheel "pyyaml" "6.0" "PyYAML-6.0-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_12_x86_64.manylinux2010_x86_64.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "pyyaml" "pyyaml") // { provider = "wheel"; };
      nativeBuildInputs = [ autoPatchelfHook ];
      autoPatchelfIgnoreMissingDeps = true;
      propagatedBuildInputs = with python-self; manylinux1 ++ [  ];
    };
    "tomli" = python-self.buildPythonPackage {
      pname = "tomli";
      version = "2.0.1";
      src = fetchPypiWheel "tomli" "2.0.1" "tomli-2.0.1-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "tomli" "tomli") // { provider = "wheel"; };
    };
    "tomlkit" = python-self.buildPythonPackage {
      pname = "tomlkit";
      version = "0.11.8";
      src = fetchPypiWheel "tomlkit" "0.11.8" "tomlkit-0.11.8-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "tomlkit" "tomlkit") // { provider = "wheel"; };
    };
    "typing-extensions" = python-self.buildPythonPackage {
      pname = "typing-extensions";
      version = "4.6.2";
      src = fetchPypiWheel "typing-extensions" "4.6.2" "typing_extensions-4.6.2-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "typing-extensions" "typing-extensions") // { provider = "wheel"; };
    };
    "virtualenv" = python-self.buildPythonPackage {
      pname = "virtualenv";
      version = "20.23.0";
      src = fetchPypiWheel "virtualenv" "20.23.0" "virtualenv-20.23.0-py3-none-any.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "virtualenv" "virtualenv") // { provider = "wheel"; };
      propagatedBuildInputs = with python-self; [ distlib filelock platformdirs ];
    };
    "wrapt" = python-self.buildPythonPackage {
      pname = "wrapt";
      version = "1.15.0";
      src = fetchPypiWheel "wrapt" "1.15.0" "wrapt-1.15.0-cp39-cp39-manylinux_2_5_x86_64.manylinux1_x86_64.manylinux_2_17_x86_64.manylinux2014_x86_64.whl";
      format = "wheel";
      dontStrip = true;
      passthru = (get_passthru "wrapt" "wrapt") // { provider = "wheel"; };
      nativeBuildInputs = [ autoPatchelfHook ];
      autoPatchelfIgnoreMissingDeps = true;
      propagatedBuildInputs = with python-self; manylinux1 ++ [  ];
    };
  }; in all);
in
{
  inherit select_pkgs;
  overrides = overrides';
}
