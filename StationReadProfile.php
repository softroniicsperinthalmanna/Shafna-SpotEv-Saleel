<?php
include 'connect.php';
$log_id=$_POST['login_id'];
$sql1=mysqli_query($con, "SELECT  station_tb.name,station_tb.mobile_no,station_tb.location,login_tb.email,login_tb.password FROM station_tb INNER JOIN login_tb on login_tb.login_id=station_tb.login_id where station_tb.login_id='$log_id'");
$list=array();
if($sql1->num_rows>0){
    while($rows=mysqli_fetch_assoc($sql1)){
        $myarray['result']='Success';
        $myarray['name']=$rows['name'];
        $myarray['mobile_no']=$rows['mobile_no'];
        $myarray['email']=$rows['email'];
        $myarray['location']=$rows['location'];
        $myarray['password']=$rows['password'];
        array_push($list,$myarray);
    }
}
else{
    $myarray['result']='failed';
    array_push($list,$myarray);
}
echo json_encode($list);

?>