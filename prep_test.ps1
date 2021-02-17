
#Variables
$source1 = "c:\TEST\new1"
$source1contents = "c:\TEST\new1\*"
$source2 = "c:\TEST\new2"
$source2contents = "c:\TEST\new2\*"
$dest = "\\nt9\spencer.obrien$\SHARES\"

$source1_test = test-path($source1)
$source2_test = test-path($source2)

# If source1 exists, then copy the files.
if($source1_test){
    copy-item -path $source1contents -destination $dest

# Otherwise, if source 2 exists copy the files there.
}elseif ($source2_test){
    copy-item -path $source2contents -destination $dest

# Otherwise alert the user.
} else {
    Write-Output "Neither ${source1} nor ${source2} exist!"
}