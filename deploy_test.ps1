
#Variables
$source = "\\nt9\spencer.obrien$\SHARES\Timesheet\*"
$path1 = "c:\TEST\new1"
$path2= "c:\TEST\new2"

# Check if the test paths exists.
$new1_test = test-path($path1)
$new2_test = test-path($path2)

# If the first path exists, copy the files to it.
if($new1_test){
    copy-item -path $source -Destination $path1

# Otherwise, if the second path exists- copy the files there.
}elseif ($new2_test){
    copy-item -path $source -destination $path2

# Otherwise alert the user.
} else {
    Write-Output "Neither ${path1} nor ${path2} exist!"
}