<?php

$host = 'localhost';
$dbname = 'inventory';
$user = 'root';
$password = 'root';
$port = 3307;

try {
    $db = new PDO("mysql:host=$host;port=$port;dbname=$dbname", $user, $password); // Correction: on utilise $port dans le DSN
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION); // Ajout: pour afficher les erreurs SQL
    $db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC); // Ajout: pour récupérer les résultats sous forme de tableaux associatifs (plus facile à utiliser)
} catch (PDOException $e) {
    die("Erreur de connexion : " . $e->getMessage()); // Amélioration du message d'erreur
}

?>