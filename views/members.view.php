<?php require('partials/head.php'); ?>

    <h1>Coffee Club Members</h1>


    <table id="users">
    <tr><th>First</th><th>Last</th><th>Email</th><th>Phone</th><th>Edit</th><th>Delete</th></tr>
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

<?php require('partials/foot.php'); ?>