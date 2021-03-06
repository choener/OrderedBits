{ mkDerivation, base, bits, criterion, primitive, QuickCheck
, stdenv, tasty, tasty-quickcheck, tasty-th, vector
, vector-algorithms
}:
mkDerivation {
  pname = "OrderedBits";
  version = "0.0.2.0";
  src = ./.;
  libraryHaskellDepends = [
    base bits primitive vector vector-algorithms
  ];
  testHaskellDepends = [
    base QuickCheck tasty tasty-quickcheck tasty-th vector
  ];
  benchmarkHaskellDepends = [ base criterion ];
  homepage = "https://github.com/choener/OrderedBits";
  description = "Efficient ordered (by popcount) enumeration of bits";
  license = stdenv.lib.licenses.bsd3;
}
