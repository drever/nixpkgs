{ buildPythonPackage
, fetchPypi
, lib
, cachetools
}:

buildPythonPackage rec {
  pname = "asyncache";
  version = "0.1.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "c741b3ccef2c5291b3da05d97bab3cc8d50f2ac8efd7fd79d47e3d7b6a3774de";
  };

  propagatedBuildInputs = [ cachetools ];

  meta = with lib; {
    description = "Helpers to use cachetools with asyncio.";
    homepage = "https://github.com/hephex/asyncache";
    license = licenses.mit;
    maintainers = with maintainers; [ drever ];
  };
}
