<?php

$dns ="mysql:dbname=osterslattsdb;host=localhost";
$myPDO = new PDO($dns , "root", "");

$statement = $myPDO->prepare("INSERT INTO boker (titel, bild, c_id, isbn, forfattare, hylla, antal) 
	VALUES (?, ?, ?, ?, ?, ?, ?)");




$antal=0;

$titel = $_POST['titel'];
$bild =$_POST['bild'];
$category=$_POST['kat'];

if ($category=="Barn")
	{$category=1;}
if ($category=="Data & IT")
	{$category=2;}
if ($category=="Deckare")
	{$category=3;}
if ($category=="Djur & Natur")
	{$category=4;}
if ($category=="Familj")
	{$category=5;}
if ($category=="Hem")
	{$category=6;}
if ($category=="Medicin")
	{$category=7;}
if ($category=="Resor")
	{$category=8;}
$isbn =$_POST['isbn'];
$forfattare=$_POST['forfattare'];
$hylla =$_POST['hylla'];
$antal +=$_POST['antal'];

$data = array($titel, $bild, $category, $isbn,  $forfattare, $hylla, $antal);

$statement->execute($data);


$statement = $myPDO->prepare("INSERT INTO leveransboker (fprice, sprice, leveransData, leveransAntal) 
	VALUES (?, ?, ?, ?)");

$fprice =$_POST['price'];
$sprice=$fprice*1.8;
$leveransData =$_POST['leveransdag'];
$leveransAntal =$_POST['antal'];

//print_r($category);
$data = array($fprice, $sprice, $leveransData, $leveransAntal);

$statement->execute($data);

//Данные с формы считываются следующим образом:
//$s=$_POST["<имя_на_форме>"]; 
?>