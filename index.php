<?php

// We need $query here because of the return value in the bootstrap.php file
$query = require 'core/bootstrap.php';

require Router::load('routes.php')
    ->direct(Request::uri());