# Pizzeria Website

Welkom bij de repository voor de Pizzeria Website! Deze website biedt een gebruiksvriendelijke interface voor klanten om pizza's te bekijken, te selecteren en te bestellen. De code is opgesteld volgens het MVC-patroon.

## Inhoud

- Overzicht
- Functionaliteiten
- Installatie
- Gebruik

## Overzicht

Deze website bevat de volgende secties:
- **Navigatiebalk**: Bevat links naar Menu, Promoties en Over Ons.
- **Menu-pagina**: Geeft een overzicht van alle beschikbare pizza's. Klanten kunnen pizza's selecteren en toevoegen aan hun winkelmand.
- **Winkelmand**: Altijd zichtbaar en bevat een knop om af te rekenen. Klanten kunnen pizza's uit de winkelmand verwijderen.
- **Afrekenen**: Bezoekers die zijn aangemeld met een bestaand account gaan rechtstreeks naar de afrekenpagina. Niet-aangemelde bezoekers krijgen de optie om in te loggen of een nieuw account aan te maken.
- **Promoties-pagina**: Geeft een overzicht van de lopende acties.
- **Over Ons-pagina**: Bevat een korte omschrijving van de pizzeria en de openingsuren.

## Functionaliteiten

- **Navigatiebalk**: Toegang tot Menu, Promoties en Over Ons.
- **Menu-pagina**: Overzicht van alle pizza's met de mogelijkheid om pizza's toe te voegen aan de winkelmand.
- **Winkelmand**: Altijd zichtbaar, met de mogelijkheid om items te verwijderen en af te rekenen.
- **Afrekenen**:
  - **Ingelogde gebruikers**: Direct naar de afrekenpagina.
  - **Niet-ingelogde gebruikers**: Krijgen de keuze tussen inloggen of een nieuw account aanmaken.
    - **Inloggen**: Invoervak voor e-mail en wachtwoord.
    - **Nieuw account aanmaken**: Invoervakken voor naam, voornaam, adres, postcode, gemeente, telefoonnummer en een selectievak om een nieuw account aan te maken.
- **Afrekenpagina**: Overzicht van de bestelling met totaalprijs. Thuisbezorging is alleen mogelijk voor postcodes in de database. Opties om adresgegevens of inhoud van de winkelmand te wijzigen.
- **Promoties-pagina**: Overzicht van lopende acties.
- **Over Ons-pagina**: Korte omschrijving van de pizzeria en de openingsuren.

## Installatie

1. Clone de repository:
    ```bash
    git clone https://github.com/jouw-gebruikersnaam/pizzeria-website.git
    ```
2. Navigeer naar de projectmap:
    ```bash
    cd pizzeria-website
    ```
3. Installeer de vereiste dependencies:
    ```bash
    npm install
    ```

## Gebruik

1. Start de ontwikkelserver:
    ```bash
    npm start
    ```
2. Open je browser en ga naar `http://localhost:3000` om de website te bekijken.
