<?php
ini_set('display_errors', 1);
error_reporting(~0);
include "connection.php";
    $donoid=$_GET['donoid'];
    $rid=$_GET['rid'];
	$status = 'Accepted';
	$sql = "UPDATE blooddonate SET status = '$status' WHERE donoid = '$donoid'";
    $sql1 = "UPDATE receivers  SET flag = 1 WHERE id = '$rid'";
    mysqli_query($conn, $sql1);
    if (mysqli_query($conn, $sql)) {
	    
        $msg="You have accepted the request.";
    
	header("location:../blooddonate.php?msg=".$msg );
    } else {
    $error= "Error changing status: " . mysqli_error($conn);
    header("location:../blooddonate.php?error=".$error );
    }

    mysqli_close($conn);
?>