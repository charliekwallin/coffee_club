<?php

$users = $app['database']->selectAll('users');
require 'views/members.view.php';