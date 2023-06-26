<?php
define('ROOT_URL','http://localhost/wonderlab/');
session_destroy();
header('location: ' . ROOT_URL);
die();