<?php
include 'connect.php';
$sql=mysqli_query($con,"SELECT user_register_tb.name,complaint_tb.complain_type,complaint_tb.description,complaint_tb.date FROM user_register_tb INNER JOIN complaint_tb on user_register_tb.login_id=complaint_tb.user_id");
$list=array();
if($sql->num_rows>0){
    while($rows=mysqli_fetch_assoc($sql)){
        $myArray['result']='Success';
        $myArray['name']=$rows['name'];
        $myArray['complain_type']=$rows['complain_type'];
        $myArray['description']=$rows['description'];
        $myArray['date']=$rows['date'];
        array_push($list,$myArray);
    }}
    else{
        $myArray['result']='failed';
        array_push($list,$myArray);
    }
    echo json_encode($list);
?>