<?php
    # Распаковка архива с исходным кодом.

    error_reporting(E_ALL);

    shell_exec('unzip ../itcode2017.zip -d ../src');
    shell_exec('rm ../itcode2017.zip');
    echo 'Extracted';