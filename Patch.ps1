Write-Host "Coping sources..."
Remove-Item -Recurse PatchedSources/
Remove-Item -Recurse OriginalSources/
git clone https://github.com/bellard/quickjs OriginalSources
Copy-Item -Recurse OriginalSources/ PatchedSources/

Write-Host "Patching sources..."
Copy-Item Patches/Polyfill.h PatchedSources/
git apply --reject --whitespace=fix Patches/quickjs-patches.patch
