<?php
include 'connexion.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_FILES['image']) && $_FILES['image']['error'] === 0) {
      $targetDir = 'Uploads/'; // Dossier où enregistrer les images (assurez-vous qu'il existe et a les permissions d'écriture)
      $targetFile = $targetDir . basename($_FILES['image']['name']);
      $uploadOk = 1;
      $imageFileType = strtolower(pathinfo($targetFile, PATHINFO_EXTENSION));
  
      // Vérifier si le fichier est une image réelle
      $check = getimagesize($_FILES['image']['tmp_name']);
      if ($check !== false) {
        $uploadOk = 1;
      } else {
        echo "Le fichier n'est pas une image.";
        $uploadOk = 0;
      }
  
      // Vérifier la taille du fichier (optionnel)
      if ($_FILES['image']['size'] > 500000) {
        echo "Désolé, le fichier est trop volumineux.";
        $uploadOk = 0;
      }
  
      // Vérifier le format du fichier (optionnel)
      if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
      && $imageFileType != "gif") {
        echo "Désolé, seuls les formats JPG, PNG, JPEG et GIF sont autorisés.";
        $uploadOk = 0;
      }
  
      // Si tout est OK, essayer d'uploader le fichier
      if ($uploadOk == 1) {
        if (move_uploaded_file($_FILES['image']['tmp_name'], $targetFile)) {
          echo "Le fichier ". basename( $_FILES['image']['name']). " a été uploadé.";
        } else {
          echo "Désolé, une erreur s'est produite lors de l'upload du fichier.";
        }
      }
    }
  }

?>