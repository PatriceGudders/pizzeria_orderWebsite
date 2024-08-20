<?php

declare(strict_types=1);

?>

<!DOCTYPE HTML>
<html>

<head>
    <meta charset=utf-8>
    <title>Il Forno Magico</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/overons.css">
</head>

<body>
    <?php include('includes/header.php') ?>
    <?php include('includes/caddy.php') ?>

    <div class="wrapper">
        <h1 class="title">Over Ons</h1>
        <article id="about">
            <h2>
                Welkom bij Pizzeria Il Forno Magico in het hart van Genk! Sinds onze oprichting in 1999,
                brengen wij de authentieke smaken van Italië naar uw tafel. Wij bereiden elke pizza met passie en de beste ingrediënten.
                Bij ons geniet u van een warme, gastvrije sfeer en een menu vol heerlijke, ambachtelijke pizza’s.
                Kom langs en proef de traditie en liefde die in elke hap te vinden is.
            </h2>
            <h2>
                Onze pizzaiolo? <span id="chef"> Don Pepperoni </span> natuurlijk
            </h2>
        </article>

        <h1 class="title"><b>Openingsuren</b></h1>
        <article id="openingsUren">
            <div class="openingHelft">
                <h2>Maandag & Dinsdag GESLOTEN</h2>
                <h2>Woensdag 10.00 - 21.00</h2>
                <h2>Donderdag 10:00 - 21:00</h2>
            </div>
            <div class="openingHelft">
                <h2>Vrijdag 10:00 - 21:00</h2>
                <h2>Zaterdag 10:00 - 21:00</h2>
                <h2>Zondag 17:00 - 20:00</h2>
            </div>
        </article>
    </div>
    </div>
    <?php include('includes/footer.php') ?>
</body>

</html>