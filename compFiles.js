function triggerFileInput() {
    document.getElementById('fileElem').click();
  }
  
  function handleFiles(files) {
    const fileList = document.getElementById('fileList');
    fileList.innerHTML = ''; // Efface la liste précédente
  
    for (const file of files) {
      const li = document.createElement('li');
      li.textContent = file.name;
      fileList.appendChild(li);
      const form = document.getElementById('uploadForm');
    }
  
    // Ici, vous pouvez ajouter du code pour envoyer le ou les fichiers vers le serveur
    // (par exemple, en utilisant l'objet FormData et la fonction fetch).
  }