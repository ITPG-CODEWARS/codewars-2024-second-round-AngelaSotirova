<?php
session_start();
session_unset();
session_destroy();
header('Location: login.php'); // Пренасочва към страницата за вход
exit;
?>
