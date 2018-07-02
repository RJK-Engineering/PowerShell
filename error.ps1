$path = "C:\lajshfjskhfd"
# $path = "C:\"
$dir = Resolve-Path $path -ErrorAction stop
# $dir = Resolve-Path $path -ErrorAction SilentlyContinue
if (! $dir) {
    $Record = $error[0]
    "Exception = " + $Record.Exception.Message
    "Reason    = " + $Record.CategoryInfo.Reason
    "Target    = " + $Record.CategoryInfo.TargetName
    "Script    = " + $Record.InvocationInfo.ScriptName
    "Line      = " + $Record.InvocationInfo.ScriptLineNumber
    "Column    = " + $Record.InvocationInfo.OffsetInLine
} else {
    $dir.drive | select *
}
