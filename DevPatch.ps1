Write-Host "Coping sources..."
rm -Recurse PatchedSources/
cp -Recurse OriginalSources/ PatchedSources/


Write-Host "Patching sources..."
cp Patches/Polyfill.h PatchedSources/
git apply --reject --whitespace=fix Patches/quickjs-patches.patch
