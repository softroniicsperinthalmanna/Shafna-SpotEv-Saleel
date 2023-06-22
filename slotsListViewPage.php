<?php
include 'connect.php';
$id=$_POST['station_id'];
$sql=mysqli_query($con, "SELECT * FROM slot_tb where station_id='$id'");
$list=array();
if($sql->num_rows>0){
    while($rows=mysqli_fetch_assoc($sql)){
        $myarray['result']='Success';
        $myarray['connector_type']=$rows['connector_type'];
        $myarray['power_capacity']=$rows['power_capacity'];
        $myarray['price']=$rows['price'];
        array_push($list,$myarray);
    
    }
}
    else{
        $myarray['rusult']='Failed';
        array_push($list,$myarray);

    }

echo json_encode($list);
?>