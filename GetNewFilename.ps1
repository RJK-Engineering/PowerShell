

function GetNewFilename( $file ) {
    if (! (Test-Path $file)) {
        $file
        return
    }
    $file = Get-Item $file

    if ($file.PSIsContainer) {
        $newname = $file
        $i = 1
        while (Test-Path $newname) {
            $newname = "$file-$i"
            $i++
        }
        $newname
        return
    }

    $dir = $file.Directory.FullName
    $basename = $file.BaseName
    $extension = $file.Extension

    $newname = "$dir\$basename$extension"
    $i = 1
    while (Test-Path $newname) {
        $newname = "$dir\$basename-$i$extension"
        $i++
    }
    $newname
}

$file = "1"
GetNewFilename $file

$file = "GetNewFilename.ps1"
GetNewFilename $file

$file = Get-Item "GetNewFilename.ps1"
GetNewFilename $file

$file = $PSScriptRoot
GetNewFilename $file
