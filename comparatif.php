<?php
include 'connexion.php'; 

// Récupérer les données du formulaire
$modele = $_POST['modele'];
$autonomie = $_POST['autonomie'];
$acceleration = $_POST['acceleration'];
$puissance = $_POST['puissance'];
$prix = $_POST['prix'];
$batterie = $_POST['batterie'];

// Préparer la requête SQL (pour éviter les injections SQL, c'est très important !)
$stmt = $db->prepare("INSERT INTO voitures (modele, autonomie, acceleration, puissance, prix, batterie) VALUES (:modele, :autonomie, :acceleration, :puissance, :prix, :batterie)");

// Lier les paramètres
$stmt->bindValue(':modele', $modele, PDO::PARAM_STR);
$stmt->bindValue(':autonomie', $autonomie, PDO::PARAM_INT);
$stmt->bindValue(':acceleration', $acceleration, PDO::PARAM_INT);
$stmt->bindValue(':puissance', $puissance, PDO::PARAM_INT);
$stmt->bindValue(':prix', $prix, PDO::PARAM_INT);
$stmt->bindValue(':batterie', $batterie, PDO::PARAM_INT);

// Exécuter la requête
$stmt->execute();

// Rediriger l'utilisateur (facultatif)
header('Location: page_de_confirmation.html'); // Remplacez page_de_confirmation.html par l'URL de la page que vous voulez afficher après l'enregistrement
?>