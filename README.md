# DFAU Coding Standard

:1st_place_medal: DFAU coding standard configuration.

## Installation & usage

Install this package:

    composer require --dev dfau/coding-standard
    
Run coding standard check via (in a typo3 extension context):

    .Build/bin/ecs check -c .Build/vendor/dfau/coding-standard/ecs.php Classes

To fix errors add `--fix` to  

    .Build/bin/ecs check -c .Build/vendor/dfau/coding-standard/ecs.php Classes --fix

