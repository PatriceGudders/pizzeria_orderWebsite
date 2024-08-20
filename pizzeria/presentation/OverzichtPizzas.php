<?php

declare(strict_types=1);

?>

<!DOCTYPE HTML>
<html>

<head>
    <meta charset=utf-8>
    <title>Il Forno Magico</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/home.css">

</head>

<body>
    <?php include('includes/header.php') ?>
    <?php include('includes/caddy.php') ?>

    <div class="wrapper">
        <h1>Welke pizza kies jij vandaag?</h1>
        <section class="pizzamenu">
            <div class="pizzaDeelEen">
                <?php
                foreach ($lijst_pizzas as $pizza) {
                    if ($pizza->getId() <= (round(count($lijst_pizzas) / 2))) {
                        echo '<div class="menu-item" data-id="' . $pizza->getId() . '" data-naam="' . $pizza->getNaam() . '" data-prijs="' . $pizza->getPrijs() . '" class="pizza-info">';
                        echo '<div class="menu-item-text">';
                        echo '<h3 class="menu-item-heading">';
                        echo '<span class="menu-item-name">' . $pizza->getNaam() . '</span>';
                        echo '<span class="menu-item-price">€ ' . $pizza->getPrijs() . '</span></h3>';
                        echo '<p class="menu-item-desc">Ingrediënten: ' . $pizza->getIngdienten() . '</p>';
                        echo '</div>';
                        echo '<img src="assets/icoonToevoegen.png" data-id="' . $pizza->getId() . '" data-naam="' . $pizza->getNaam() . '" data-prijs="' . $pizza->getPrijs() . '" class="icoonToevoegen">';
                        echo '</div></br>';
                    }
                }
                ?>
            </div>
            <div class="pizzaDeelTwee">
                <?php
                foreach ($lijst_pizzas as $pizza) {
                    if ($pizza->getId() > (round(count($lijst_pizzas) / 2))) {
                        echo '<div class="menu-item" data-id="' . $pizza->getId() . '" data-naam="' . $pizza->getNaam() . '" data-prijs="' . $pizza->getPrijs() . '" class="pizza-info">';
                        echo '<div class="menu-item-text">';
                        echo '<h3 class="menu-item-heading">';
                        echo '<span class="menu-item-name">' . $pizza->getNaam() . '</span>';
                        echo '<span class="menu-item-price">€ ' . $pizza->getPrijs() . '</span></h3>';
                        echo '<p class="menu-item-desc">Ingrediënten: ' . $pizza->getIngdienten() . '</p>';
                        echo '</div>';
                        echo '<img src="assets/icoonToevoegen.png" data-id="' . $pizza->getId() . '" data-naam="' . $pizza->getNaam() . '" data-prijs="' . $pizza->getPrijs() . '" class="icoonToevoegen">';
                        echo '</div></br>';
                    }
                }
                ?>
            </div>
        </section>
    </div>
    
    <?php include('includes/footer.php') ?>

</body>

</html>