<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Members</title>
</head>
<body>
    <h1>Coffee Club Members</h1>

    <table>
    <tr><th>First</th><th>Last</th><th>Email</th><th>Phone</th></tr>
    <?php foreach ($users as $user) : ?>
        
       <tr>
           <td><?= $user->first_name; ?></td>
            <td><?= $user->last_name; ?></td>
            <td><?= $user->email; ?></td>
            <td><?= $user->phone ?></td>
            <td>[Edit]</td>
            <td>[Delete]</td>
        </tr>
    <?php endforeach; ?>

    </table>
</body>
</html>