<?php 
include 'header.php';

$query = "SELECT * FROM posts ORDER BY date_time DESC";
$posts = mysqli_query($connection, $query);
?>
<link rel="shortcut icon" type="image/png" href="assets/Logo.png">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<a href="<?= ROOT_URL ?>add_post.php" class="add-post-btn">  <i class="fas fa-plus"></i></a>
<link rel="stylesheet" href="<?= ROOT_URL ?>assets/style.css?v=<?= filemtime('assets/style.css') ?>" />
<link rel="shortcut icon" type="image/png" href="<?= ROOT_URL ?>assets/image/Logo.png">

<section class="posts">
    <div class="container posts__container">
        <?php while ($post = mysqli_fetch_assoc($posts)) : ?>
            <article class="post">
                <div class="post__author">

                    <?php
                    $author_id = $post['author_id'];
                    $author_query = "SELECT * FROM users WHERE id=$author_id";
                    $author_result = mysqli_query($connection, $author_query);
                    $author = mysqli_fetch_assoc($author_result);
                    ?>
                    
                    <div class="post__author-avatar">
                        <img src="./image/<?= $author['avatar'] ?>" alt="avatar">
                    </div>
                    <div class="post__author-info">
                        <h5><?= "{$author['firstname']} {$author['lastname']}" ?></h5>
                        <small>
                            <?= date("M d, Y - H:i", strtotime($post['date_time'])) ?>
                        </small>
                    </div>
                </div>
                <div class="post__thumbnail">
                    <img src="./image/<?= $post['thumbnail'] ?>" alt="blog">
                </div>
                <h3 class="post__title">
                    <a href="<?= ROOT_URL ?>post.php?id=<?= $post['id'] ?>">
                        <?= $post['title'] ?>
                    </a>
                </h3>

                <p class="post__body">
                    <?= substr($post['body'], 0, 150) ?>
                    <br />
                    <a href="<?= ROOT_URL ?>post.php?id=<?= $post['id'] ?>">
                        Read More...
                    </a>
                </p>
 
                <div class="post__info">
                </div>
            </article>
        <?php endwhile ?>
    </div>
</section>


<?php 
include 'footer.php';
?>