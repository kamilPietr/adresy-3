<head>
<link rel="stylesheet" href="main.css">
<h1> Dane Osoby </h1>
</head>
<body style="background-color: grey; color: white">

<?php 

require_once 'dbconnect.php';
$polaczenie = mysqli_connect($host, $user, $pass, $db);
$id_osoby = $_GET['osoba'];
$daneOs = "SELECT * FROM osoby WHERE id = $id_osoby";
$rezultat = $polaczenie->query($daneOs);
$ile_znalezionych = $rezultat->num_rows;
$wiersz = $rezultat->fetch_assoc();
$osoba = $wiersz['name'].' '.$wiersz['surname'].'</br>'.'Data urodzenia: '.$wiersz['bdate'].'</br>Miejsce zamieszkania: ulica '.$wiersz['adres'].'</br>Płeć: '.$wiersz['sex'];
echo $osoba;
?>





</body>
<footer>
</br></br></br></br>
<a style="color: #39a5f1" href= 'index.php'> POWRÓT DO SPISU </a>
</footer>
