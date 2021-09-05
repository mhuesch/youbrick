{ mkDerivation, base, brick, bytestring, containers, directory
, exceptions, feed, filepath, hpack, http-conduit, http-types
, ixset-typed, lib, microlens-platform, process, tagsoup, text
, time, vty
}:
mkDerivation {
  pname = "youbrick";
  version = "0.1.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  libraryToolDepends = [ hpack ];
  executableHaskellDepends = [
    base brick bytestring containers directory exceptions feed filepath
    http-conduit http-types ixset-typed microlens-platform process
    tagsoup text time vty
  ];
  prePatch = "hpack";
  homepage = "https://github.com/florentc/youbrick#readme";
  description = "Terminal feed aggregator and launcher for Youtube channels";
  license = lib.licenses.gpl3Plus;
}
