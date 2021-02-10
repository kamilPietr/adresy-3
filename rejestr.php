<head>
<link rel="stylesheet" href="main.css">

</head>



<h1>Dodaj dane osobowe</h1></br></br>
<body style="background-color: grey; color: white">

<form action="rejestr.php" method="post">
imię:
<input type="text" name="imie" /><br /><br />
Nazwisko:
<input type="text" name="nazwis" /><br /><br />
Data Urodzenia:
<input type="date" name="dataur" /><br /><br />
Adres:
<input type="text" name="adr" /><br /><br />
Numer telefonu:
<input type="int" name="num" /><br /><br />
Płeć:
<input type="text" name="plec" /><br /><br />
<input type="submit" value="dodaj" />
<?php
require 'dbconnect.php';
error_reporting(E_ALL ^ E_NOTICE);


$imie = $_POST['imie'];
$nazwis = $_POST['nazwis'];
$dataur = $_POST['dataur'];
$adr = $_POST['adr'];
$num = $_POST['num'];
$plec = $_POST['plec'];

if($imie and $nazwis and $dataur and $adr and $plec) {
    
    
    $polaczenie = mysqli_connect($host, $user, $pass, $db) or die('Brak połączenia z serwerem MySQL');

    
    
    $instrukcja = "INSERT INTO osoby SET name='$imie', surname='$nazwis', bdate='$dataur', adres='$adr', num='$num', sex='$plec'";
    $rezultat = $polaczenie->query($instrukcja);
    
    
    if($rezultat) echo "</br><br /></br><br />Rekord został dodany poprawnie!";
    else echo "Błąd nie udało się dodać nowego rekordu";
    
    
}

?>
<footer>
</br></br></br></br>
<a style="color: #39a5f1" href= 'index.php'> POWRÓT DO SPISU </a>
</footer>