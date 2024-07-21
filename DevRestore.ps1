Remove-Item -Recurse -Force PatchedSources/
Remove-Item -Recurse -Force OriginalSources/

Copy-Item -Recurse DevSources/ OriginalSources
Copy-Item -Recurse DevPatches/ PatchedSources