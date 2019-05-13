<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "", "bootstrap");
 $idkelas=$_GET['idkelas'];
// Check connection

if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt delete query execution
$sql = "DELETE FROM kelas WHERE idkelas='$idkelas'";
if(mysqli_query($link, $sql)){
    echo "delete berhasil.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 include 'kelas.php';
// Close connection
mysqli_close($link);
?>