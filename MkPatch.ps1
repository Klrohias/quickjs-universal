Remove-Item PatchedSources/Polyfill.h

$patchFileRaw = "Patches/quickjs-patches-raw.patch";
$patchFile = "Patches/quickjs-patches.patch";

git diff OriginalSources/ PatchedSources/ | Set-Content $patchFileRaw
Get-Content -Raw $patchFileRaw | % {$_ -replace "`r", ""} | Set-Content -NoNewline $patchFile

Remove-Item $patchFileRaw