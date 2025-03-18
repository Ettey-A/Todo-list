<?php
//connection to database
$dbhostname = 'sql8.freesqldatabase.com';
$dbdatabase = 'sql8768410';
$dbuser = 'sql8768410';
$dbpass = 'pkNnx1eJar';

$conn = new mysqli($dbhostname, $dbuser, $dbpass, $dbdatabase);
if($conn ->connect_error) {
    die("Could not connect to DB server on $dbhostname" .$conn->connect_error);
}
else {
    echo 'Connected to the database';
}
?>