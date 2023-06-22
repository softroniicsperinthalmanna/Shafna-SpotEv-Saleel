<?php
include 'connect.php';
$place=$_POST['place'];
$loc=$_POST['location'];
$lat=$_POST['lattitude'];
$long=$_POST['longitude'];
$id=$_POST['station_id'];

$sql1=mysqli_query($con,"UPDATE location_tb set place='$place',location='$loc',lattitude='$lat',longitude='$long' WHERE station_id='$id'");
$sql2=mysqli_query($con,"UPDATE station_tb set location='$loc',lattitude='$lat',longitude='$long' WHERE login_id='$id'");
if($sql1 && $sql2){
    $myarray['result']='Success';
}
else{
    $myarray['result']='Failed';
}
echo json_encode($myarray);
?>