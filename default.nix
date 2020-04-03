{ stdenv, fetchFromGitHub, cmake }:
stdenv.mkDerivation rec {
  pname = "NGT";
  version = "v1.9.0";
  nativeBuildInputs = [ cmake ];
  buildInputs = [ ];
  #cmakeFlags = "-DNGTQ_DISTANCE_ANGLE=1";
  #NGTQ_DISTANCE_ANGLE=1;
  NIX_ENFORCE_NO_NATIVE=false;
  __AVX2__=1;

  src = ./. ;
  # src = fetchFromGitHub {
  #   owner = "yahoojapan";
  #   repo = "NGT";
  #   rev = version;
  #   sha256 = "19796e45c6921be8e1ebeadc75f4d648600e3a505337484ff17966350b7913cc";
  # };
}
