<?php

class QueryBuilder
{

    protected $pdo;

    public function __construct(PDO $pdo)
    {
        $this->pdo = $pdo;
    }

    public function selectAll($table)
    {
        // why does it need $this?
        $statement = $this-> pdo->prepare("SELECT * FROM {$table}");
        $statement->execute();
        // We now need to set this value for the $intoClass variable
        // This gets set in the  index.php file.
        return $statement->fetchAll((PDO::FETCH_CLASS));
    }

}