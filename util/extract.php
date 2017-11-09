<?php
    # Распаковка архива с исходным кодом.

    error_reporting(E_ALL);

    shell_exec('tar -xf ../itcode2017.tar.gz -C ../');
    shell_exec('rm ../itcode2017.tar.gz');
    shell_exec('mv ../src/public/.htaccess ../.htaccess');

    echo 'Extracted';