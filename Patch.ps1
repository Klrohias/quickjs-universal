Write-Host "Coping sources..."
rm -Recurse PatchedSources/
rm -Recurse OriginalSources/
git clone https://github.com/bellard/quickjs OriginalSources
cp -Recurse OriginalSources/ PatchedSources/

Write-Host "Patching sources..."
cp Patches/Polyfill.h PatchedSources/
git apply --reject --whitespace=fix Patches/quickjs-patches.patch
