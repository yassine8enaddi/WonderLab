<?php

session_start();

define('ROOT_URL','http://localhost/wonderlab/');

// se connecter a la base de données

$connection = new mysqli('localhost', 'root', '', 'wonderlab');

if(mysqli_errno($connection)){
    die(mysqli_error($connection));
}