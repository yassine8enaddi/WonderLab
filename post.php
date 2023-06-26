<?php
include 'header.php';

if (isset($_GET['id'])){
    $id = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);
    $query = "SELECT * FROM posts WHERE id=$id";
    $result = mysqli_query($connection, $query);
    $post = mysqli_fetch_assoc($result);
} else{
    header('location: ' . ROOT_URL . 'home.php');
    die();
}
?>
<link rel="stylesheet" href="<?= ROOT_URL ?>assets/style.css?v=<?= filemtime('assets/style.css') ?>" />




<section class="blog-post">
    <div class="blog-post__container">
        <h2 class="blog-post__title"><?= $post['title'] ?></h2>

        <div class="blog-post__author">
            <?php
            $author_id = $post['author_id'];
            $author_query = "SELECT * FROM users WHERE id=$author_id";
            $author_result = mysqli_query($connection, $author_query);
            $author = mysqli_fetch_assoc($author_result);
            ?>
            <div class="blog-post__author-avatar">
                <img src="./image/<?= $author['avatar'] ?>" alt="avatar">
            </div>
            <div class="blog-post__author-info">
                <h5><?= "{$author['firstname']} {$author['lastname']}" ?></h5>
                <small><?= date("M d, Y - H:i", strtotime($post['date_time'])) ?></small>
            </div>
        </div>

        <div class="blog-post__thumbnail">
            <img src="./image/<?= $post['thumbnail'] ?>" alt="wildlife">
        </div>

        <div class="blog-post__content">
            <p><?= $post['body'] ?></p>
        </div>
    </div>
</section>
<?php 
include 'footer.php';
?>


