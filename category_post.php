<?php
include 'header.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $query = "SELECT * FROM posts WHERE category_id=$id ORDER BY date_time DESC";
    $posts = mysqli_query($connection, $query);
} else {
    header('location: ' . ROOT_URL . 'home.php');
    die();
}
?>
<!-- yassine -->
<link rel="stylesheet" href="<?= ROOT_URL ?>assets/style.css?v=<?= filemtime('assets/style.css') ?>" />
<link rel="shortcut icon" type="image/png" href="<?= ROOT_URL ?>assets/image/Logo.png">



<header class="category__title">
    <h2>
        <?php
        $category_id = $id;
        $category_query = "SELECT * FROM categories WHERE id=$id";
        $category_result = mysqli_query($connection, $category_query);
        $category = mysqli_fetch_assoc($category_result);
        echo $category['title']

        ?>
    </h2>
</header>
<!-- End Category -->

<?php if (mysqli_num_rows($posts) > 0) : ?>

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
                  
                    <div class="post__info">
                        <p class="post__body">
                            <?= substr($post['body'], 0, 150) ?>
                            <br />
                            <a href="<?= ROOT_URL ?>post.php?id=<?= $post['id'] ?>">
                                Read More...
                            </a>
                        </p>

                    </div>
                </article>
            <?php endwhile ?>
        </div>
    </section>

<?php else : ?>
    <div class="alert">
        <p>
            No Post Found ..!
        </p>
    </div>
<?php endif ?>


<?php 
include 'footer.php';
?>