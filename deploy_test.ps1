
#Variables
$source = "\\nt9\spencer.obrien$\SHARES\Timesheet\*"
$path1 = "c:\TEST\new1"
$path2= "c:\TEST\new2"

$new1_test = test-path($path1)
$new1_Install = copy-item -path $source -Destination c:\\TEST\new1\
$new2_test = test-path($path2)
$new2_Install = copy-item -path $source -destination c:\\TEST\new2\

if($new1_test){
    $new1_Install
}else {
    if ($new2_test){
        $new2_Install
    }
}