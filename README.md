# DFAU Coding Standard

:1st_place_medal: DFAU coding standard configuration.

## Installation & usage

Install this package:

    composer require --dev dfau/coding-standard
    
    
### [ECS (Easy Coding Standard)](https://github.com/symplify/easy-coding-standard)  
Run coding standard check via (in a typo3 extension context):

    .Build/bin/ecs check -c .Build/vendor/dfau/coding-standard/ecs.php Classes

To fix errors add `--fix` to  

    .Build/bin/ecs check -c .Build/vendor/dfau/coding-standard/ecs.php Classes --fix
    
### [TypoScript Lint](https://github.com/martin-helmich/typo3-typoscript-lint)
Run typo3-typoscript-lint via:

    .Build/bin/typo3-typoscript-lint  ./**/*.typoscript

