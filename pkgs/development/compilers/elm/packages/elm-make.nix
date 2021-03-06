{ mkDerivation, aeson, ansi-terminal, ansi-wl-pprint, base, binary
, blaze-html, blaze-markup, bytestring, containers, directory
, elm-compiler, elm-package, fetchgit, filepath, mtl
, optparse-applicative, stdenv, text, time, raw-strings-qq
}:
mkDerivation {
  pname = "elm-make";
  version = "0.17";
  src = fetchgit {
    url = "https://github.com/elm-lang/elm-make";
    sha256 = "0ywi6iq2a3rb8a68ryqpq9y22536aa9k71wy7fcmrd5nwkmpwd2r";
    rev = "5f7b74567c43eff341048c7caceb247b51cdb8bb";
  };
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    aeson ansi-terminal ansi-wl-pprint base binary blaze-html
    blaze-markup bytestring containers directory elm-compiler
    elm-package filepath mtl optparse-applicative text time raw-strings-qq
  ];
  jailbreak = true;
  homepage = "http://elm-lang.org";
  description = "A build tool for Elm projects";
  license = stdenv.lib.licenses.bsd3;
}
