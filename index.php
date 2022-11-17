<?php

$korisnickoIme="";

session_start();

if (!isset($_SESSION['korisnikID'])) {
    header('Location: prijava.php');
    exit();
}

if (isset($_COOKIE["korisnikIme"])){
    $korisnickoIme=$_COOKIE["korisnikIme"];
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Turistička agencija</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top py-lg-0 px-lg-5">
        <label class="nav-item nav-link" style="color: white !important;"><?= $korisnickoIme;?></label>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav p-lg-0">
                <a href="index.php" class="nav-item nav-link">Početna</a>
                <a href="dodaj.php" class="nav-item nav-link">Dodaj turu</a>
                <a href="izmeni.php" class="nav-item nav-link">Izmena ture</a>
                <a href="obrisi.php" class="nav-item nav-link">Brisanje ture</a>
            </div>
        </div>  
    </nav>
    
    <div class="container-xxl py-5">
        <div class="container">
            <div class="row">
                <div class="col" style="margin-left:-30px; margin-top:100px">
                    <h3>Pretraga tura</h3>
                    
                    <label for="tip">Tip</label>
                    <select class="form-control" id="tip">
                        <option value="SVI_TIPOVI">Svi</option>
                        <option value="1">First minute aranžmani</option>
                        <option value="2">Regularni aranžmani</option>
                        <option value="3">Last minute aranžmani</option>
                    </select>
                    <br>

                    <label for="datum">Datum</label>
                    <select class="form-control" id="datum">
                        <option value="asc">Poređaj rastuće</option>
                        <option value="desc">Poređaj opadajuće</option>
                    </select>
                    <br><br>

                    <button class="BtnFormP" onclick="filtriranaTabela()">Filtriraj</button>
                    <br><br><br><br>
                    
                    <img src="img/plane.png" style="width:40%; margin-left: 80px">

                </div>
                <br><br>
            <div class="col" id="tabela" ></div>
        </div>
    </div>
   
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    
    <script>

        function tabela() {
            let tip = "SVI_TIPOVI";
            let datum = "asc";
            $.ajax({
                url: 'ajax-tabela.php',
                data: {
                    tip: tip,
                    datum: datum
                },
                success: function (podaci) {
                    $("#tabela").html(podaci);
                }
            });
        }
        tabela();
    
        function filtriranaTabela() {
            let tip = $("#tip").val();
            let datum = $("#datum").val();
            $.ajax({
                url: 'ajax-tabela.php',
                data: {
                    tip: tip,
                    datum: datum
                },
                success: function (podaci) {
                    $("#tabela").html(podaci);
                }
            });
        }
        

    </script>

</body>

</html>