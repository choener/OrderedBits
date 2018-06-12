with (import <nixpkgs> {});
with haskell.lib;

rec {
  hsPkgs = haskellPackages.extend (packageSourceOverrides {
  });
  hsShell = with hsPkgs; shellFor {
    packages = p: [ p.OrderedBits ];
    withHoogle = true;
    buildInputs = [
      cabal-install ghc
    ];
  };
}