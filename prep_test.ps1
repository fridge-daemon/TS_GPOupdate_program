
#Variables
$source1 = "c:\TEST\new1"
$source1contents = "c:\TEST\new1\*"
$source2 = "c:\TEST\new2"
$source2contents = "c:\TEST\new2\*"
$dest = "\\nt9\spencer.obrien$\SHARES\"

$source1_test = test-path($source1)
$source1_Install = copy-item -path $source1contents -destination $dest
$source2_test = test-path($source2)
$source2_Install = copy-item -path $source2contents -destination $dest

if($source1_test){
    $source1_Install
}else {
    if ($source2_test){
        $source2_Install
    }
}