<?php

$conn = mysqli_connect('localhost' , 'root' , '' , 'hangman');

// this is for bulgarian letters

mysqli_set_charset($conn,"utf8");