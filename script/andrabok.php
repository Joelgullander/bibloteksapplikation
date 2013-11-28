<?php

$dns ="mysql:dbname=bookstore;host=localhost";
$myPDO = new PDO($dns , "root", "");

$isbn =$_POST['isbn'];
$mydate =$_POST['mydate'];
$antal =$_POST['antal'];
$sprice =$_POST['sprice'];
$hylla =$_POST['hylla'];

$statement = $myPDO->prepare("UPDATE books SET book_delivery = '".$mydate."', stock='".$antal."', price='".$sprice."', shelf='".$hylla."' WHERE isbn='".$isbn."'");                

$data = array($isbn, $mydate, $antal,  $sprice, $hylla);

$statement->execute($data);

// Go back to leverans.html
header('Location: ../leverans.html');
?>

