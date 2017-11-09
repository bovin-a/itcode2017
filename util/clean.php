<?php
    # Удаление текущих исходников на сервере.

    error_reporting(E_ALL);

    shell_exec('rm -r ../src');
    shell_exec('rm ../.htaccess');

    echo 'Cleaned';