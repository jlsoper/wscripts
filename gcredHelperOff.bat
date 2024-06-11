@ECHO OFF

GOTO //////////////////////////////////////////////////

::  system wide property (credential helper)
git config --system --set credential.helper=helper-selector

://////////////////////////////////////////////////

::  set system wide property (no credential helper)
git config --system --unset credential.helper

