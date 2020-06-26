<?php

$app = [];

$app['config'] = require 'config.php';
// returns the array $config


require 'core/Router.php';
require 'core/Request.php';
require 'core/database/Connection.php';
require 'core/database/QueryBuilder.php';

// $pdo = Connection::make();
//$query = new QueryBuilder($pdo);
// can also get rid of the $pdo 
//$query = new QueryBuilder(Connection::make());

// Then this line can become explicit and we can just return it
// When we do this we need the bootstrap to hold the returned value.

$app['database'] = new QueryBuilder(Connection::make($app['config']['database']));