<?php

$dns ="mysql:dbname=bookstore;host=localhost";
$myPDO = new PDO($dns , "root", "");


$statement = $myPDO->prepare('INSERT INTO books (book_delivery, stock, price, shelf) 
	VALUES (?, ?, ?, ?, ?) WHERE isbn=$isbn');

$antal=0;

$isbn =$_POST['isbn'];
$mydate =$_POST['mydate'];
$antal =$_POST['antal'];
$sprice =$_POST['spris'];
$hylla =$_POST['hylla'];

//print_r($category);
$data = array($mydate, $antal,  $sprice, $hylla);

$statement->execute($data);

// Go back to leverans.html
header('Location: ../leverans.html');

?>

