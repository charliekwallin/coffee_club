<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users</title>
<body>

<ul>
    
    <?php foreach ($users as $user) : ?>
        <li>
            <?= $user->first_name; ?>
        </li>
    <?php endforeach; ?>
</ul>
</body>
</html>