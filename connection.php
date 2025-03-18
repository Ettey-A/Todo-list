<?php
//connection to database
$dbhostname = 'localhost';
$dbdatabase = 'db_todo';
$dbuser = 'root';
$dbpass = '';

$conn = new mysqli($dbhostname, $dbuser, $dbpass, $dbdatabase);
if($conn ->connect_error) {
    die("Could not connect to DB server on $dbhostname" .$conn->connect_error);
}
else {
    echo 'Connected to the database';
}
?>