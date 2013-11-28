<?php

$dns ="mysql:dbname=bookstore;host=localhost";
$myPDO = new PDO($dns , "root", "");

$statement = $myPDO->prepare("INSERT INTO books (isbn, title, author, book_delivery, stock, fprice, price, shelf, c_id) 
	VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");




$antal=0;

$isbn =$_POST['isbn'];
$titel = $_POST['titel'];
$forfattare = $_POST['forfattare'];
$mydate =$_POST['mydate'];
$antal =$_POST['antal'];
$fprice =$_POST['fpris'];
$sprice =$_POST['sprice'];
$forfattare=$_POST['forfattare'];
$hylla =$_POST['hylla'];
$category=$_POST['kat'];


if ($category=="Deckare")
	{$category=1;}
if ($category=="Skonlitteratur")
	{$category=2;}
if ($category=="Student")
	{$category=3;}
if ($category=="Barnbocker")
	{$category=4;}

$data = array($isbn, $titel, $forfattare, $mydate, $antal, $fprice, $sprice, $hylla, $category);

$statement->execute($data);

// Go back to leverans.html
header('Location: ../leverans.html');

?>