<?php

return [
    'database' => [
        'name' => 'ccdb',
        'username' => 'ccuser',
        'password' => 'ccsecret',
        'connection' => 'mysql:host=127.0.0.1',
        'options' => [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION
        ]
    ]
    ];