<?php
$dns ="mysql:dbname=osterslatts;host=localhost";
$myPDO = new PDO($dns , "root", "");

//$myPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

$statement = $myPDO -> prepare("select 
	c_id, c_name from category");
$statement -> execute();

//print_r($statement ->errorInfo());


$array = $statement -> fetchAll(PDO::FETCH_ASSOC);
$array = json_encode($array );
echo $array;
?>