<?php

// This is a very basic snippet for connecting to MySQL using PDO

$conf = [
  'mysql_host' => 'localhost',
  'mysql_db'   => '',
  'mysql_user' => '',
  'mysql_pass' => ''
];

try {
    $dbconn = new PDO("mysql:host=" . $conf['mysql_host']
                        . ";dbname=" . $conf['mysql_db']
                        . ";charset=utf8mb4;",
                      $conf['mysql_user'], $conf['mysql_pass']);
} catch (PDOException $e) {
    die('Error. No MySQL connection: ' . $e->getMessage());
}

?>
