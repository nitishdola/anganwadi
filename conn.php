<?php

$conn = ($GLOBALS["___mysqli_ston"] = mysqli_connect("localhost",  "root",  ""));

if(!$conn) die("Couldn't connect to mysql");

$db = mysqli_select_db( $conn, 'aat'); 

if(!$db) die("Couldn't select Database");

?>