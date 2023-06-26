<?php
include 'header.php';

?>
<title>WonderLab</title>
<meta charset="UTF-8" />
<link rel="shortcut icon" type="image/png" href="<?= ROOT_URL ?>assets/image/Logo.png">
<link rel="shortcut icon" type="image/png" href="assets/Logo.png">
<link rel="stylesheet" href="<?= ROOT_URL ?>assets/style.css?v=<?=filemtime('assets/style.css')?>"/>


<section class="category__buttons">
    <div class="container category__buttons-container">

    <?php 
        $all_categories_query = "SELECT * FROM categories";
        $all_categories = mysqli_query($connection, $all_categories_query);
    ?>

    <?php while ($category = mysqli_fetch_assoc($all_categories)) : ?>
        <a href="<?= ROOT_URL ?>category_post.php?id=<?= $category['id'] ?>" class="category__button"><?= $category['title'] ?></a>
    <?php endwhile ?>
    </div>
</section>

<?php 
include 'footer.php';
?>



