# DFAU Coding Standard

:1st_place_medal: DFAU coding standard configuration.

## Installation & usage

Install this package:

    composer require --dev dfau/coding-standard

## Phar usage

To create the phar, you need to install `humbug/box`:

    brew tap humbug/box
    brew install box

Install the dependencies

    composer install --optimize-autoloader -n

Create the phar file

    box build -c box.json

The newly created phar file can be used just like the `ecs` binary is used:

    ecs-standalone.phar --help
