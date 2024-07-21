Write-Host "Coping sources..."
Remove-Item -Recurse PatchedSources/
Copy-Item -Recurse OriginalSources/ PatchedSources/


Write-Host "Patching sources..."
Copy-Item Patches/Polyfill.h PatchedSources/
git apply --reject --whitespace=fix Patches/quickjs-patches.patch
