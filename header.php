<?php
require 'config/config.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>WonderLab</title>
  <link rel="stylesheet" href="<?= ROOT_URL ?>assets/style.css?v=<?=filemtime('assets/style.css')?>"/>  <title>WonderLab</title>
  <!-- <script src="script/script.js"></script> -->
</head>
<body>
<script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
  <header>
    <a href="" class="logo">Wonder lab</a>
    <div class="group">
      <ul class="navigation">
        <li>
          <ion-icon name="home-outline" class="icons"></ion-icon>
          <a href="<?= ROOT_URL ?>home.php">Home</a>
        </li>
        <li>
          <ion-icon name="compass-outline" class="icons"></ion-icon>
          <a href="<?= ROOT_URL ?>category.php">categories</a>
        </li>
        <li>
          <ion-icon name="person-circle-outline" class="icons"></ion-icon>
          <a href="<?= ROOT_URL ?>edit_user.php">Profile</a>
        </li>
        <li><ion-icon name="log-out-outline" class="icons"></ion-icon>
          <a href="<?= ROOT_URL ?>authn/logout.php">Logout</a>
        </li>
      </ul>
      <div class="search">
        <form id="searchForm" action="<?= ROOT_URL ?>search.php" method="GET">
          <span class="icon">
            <ion-icon name="search-outline" class="searchBtn"></ion-icon>
            <ion-icon name="close-outline" class="closeBtn"></ion-icon>
          </span>
    </div>
      <ion-icon name="menu-outline" class="menuToggle"></ion-icon>
    </div>
    <div class="searchBox">
      <input type="text" name="searchtext" placeholder="Search here . . .">
      <button type="submit" name="submit" class="hidden"></button>
    </div>
    </form>
  </header>

</body>
<script>
let searchButton = document.querySelector('.searchBtn');
  let closeButton = document.querySelector('.closeBtn');
  let searchBox = document.querySelector('.searchBox');
  let navigation = document.querySelector('.navigation');
  let menuToggle = document.querySelector('.menuToggle');
  let header = document.querySelector('header');
  searchButton.onclick = function() {
    searchBox.classList.add('active');
    closeButton.classList.add('active');
    searchButton.classList.add('active');
    menuToggle.classList.add('hide');
    header.classList.remove('open');
  }
  closeButton.onclick = function() {
    searchBox.classList.remove('active');
    closeButton.classList.remove('active');
    searchButton.classList.remove('active');
    menuToggle.classList.remove('hide');
  }
  menuToggle.onclick = function() {
    header.classList.toggle('open');
    searchBox.classList.remove('active');
    closeButton.classList.remove('active');
    searchButton.classList.remove('active');
  }
 
// lancer la recherche par le click entré dans le clavier
  searchInput.addEventListener('keydown', function(event) {
    if (event.keyCode === 13) { // Si la touche enfoncée est la touche "Entrée"
      event.preventDefault(); // Empêcher le comportement par défaut de la touche "Entrée"
      document.querySelector('#searchForm').submit(); // Soumettre le formulaire
    }
  });
</script>