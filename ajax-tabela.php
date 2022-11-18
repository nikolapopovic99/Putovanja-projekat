<?php
require "konekcijaSaBazom.php";
require "models/tura.php";

$tip = trim($_GET['tip']);
$datum = trim($_GET['datum']);

$ture = Tura::vratiTure($tip, $datum, $konekcija);
?>

<table class="table">
    <thead>
        <tr style="background-color: rgb(32, 47, 68); color: white;">
            <th>Destinacija</th>
            <th>Drzava</th>
            <th>Tip aranžmana</th>
            <th>Datum</th>
            <th>Cena</th>
        </tr>
    </thead>
    <tbody>
 <?php

foreach ($ture as $tura){
    ?>
    <tr>
        <td><?= $tura->nazivDestinacije?></td>
        <td><?= $tura->drzava?></td>
        <td><?= $tura->nazivTipa?></td>
        <td><?= $tura->datum?></td>
        <td><?= $tura->cena . " EUR"?></td>
    </tr>
<?php
}
?>
    </tbody>
</table>

