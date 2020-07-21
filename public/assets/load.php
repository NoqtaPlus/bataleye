<?php
$host="127.0.0.1";
$user="bataleye_batal";
$password="bataleye_batal";
$db="bataleye_batal";
$mysqli = new mysqli($host, $user,$password, $db);
$result = $mysqli->query(" SELECT * FROM contacts ");
echo $result->num_rows;

?>