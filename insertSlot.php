<?php
include 'connect.php';
$station_id=$_POST['station_id'];

$connector=$_POST['connector_type'];
$power=$_POST['power_capacity'];
$price=$_POST['price'];

$sql=mysqli_query($con, "INSERT INTO slot_tb (station_id,connector_type,power_capacity,price) values
 ('$station_id','$connector','$power','$price')");

if($sql){
    $myarray['result']='Success';
}
else{
    $myarray['result']='Failed';
}
echo json_encode($myarray);

?>