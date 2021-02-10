
<head>

<link rel="stylesheet" href="main.css">
<h1> Książka Adresowa </h1>
</head>

<body style="background-color: grey; color: white">

<?php

require 'dbconnect.php';
$polaczenie = mysqli_connect($host, $user, $pass, $db);
if(!$polaczenie){
    echo "Błąd połączenia z bazą danych.</br></br>";
}
else{
    echo "Połączenie z bazą danych: uzyskane!</br></br>";
}

$zapytanie = "SELECT id, name, surname FROM osoby";
$rezultat = $polaczenie->query($zapytanie);
$ile_znalezionych = $rezultat->num_rows;


for ($i=0; $i <$ile_znalezionych; $i++)
        {
                $wiersz = $rezultat->fetch_assoc();
                $osoba = $wiersz['id'].'. '.$wiersz['name'].' '.$wiersz['surname'].'</br>';
                echo "<a style='color: white' href = 'inf.php?osoba=" . $wiersz['id'] . "'>";
                echo $osoba;
                echo '</a>';
        }

?>
</br><br />
<a style="color: #39a5f1" href= 'rejestr.php'> DODAJ OSOBĘ DO BAZY </a>
</br><br /></br><br />


</form>


</body>



