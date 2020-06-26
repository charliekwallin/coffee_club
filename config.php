<?php

return [
    'database' => [
        'name' => 'ccdb',
        'username' => 'charlie',
        'password' => 'web250secret',
        'connection' => 'mysql:host=127.0.0.1',
        'options' => [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        ]
    ]
    ];