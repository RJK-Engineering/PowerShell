$dir = "c:\temp"
$filter = "*.avi"

Get-ChildItem $dir | where { $_.Name -like $filter } | %{ $_.Name }

Get-ChildItem $dir -filter $filter | %{ $_.Name }

$packages = Get-ChildItem $dir -filter $filter
foreach ($package in $packages) {
    $package.Name
}
