Remove-Item -Recurse PatchedSources/
Remove-Item -Recurse OriginalSources/

Copy-Item -Recurse DevSources/ OriginalSources
Copy-Item -Recurse DevPatches/ PatchedSources