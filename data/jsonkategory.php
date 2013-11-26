<?php
$dns ="mysql:dbname=jsonarticlar;host=localhost";
$myPDO = new PDO($dns , "root", "");

//$myPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );

$statement = $myPDO -> prepare("select 
	catid, catnamn from category");
$statement -> execute();

//print_r($statement ->errorInfo());


$array = $statement -> fetchAll(PDO::FETCH_ASSOC);
$array = json_encode($array );
echo $array;
echo "string";
?>