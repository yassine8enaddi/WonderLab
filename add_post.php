<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<?php
include 'header.php';

$query = "SELECT * FROM categories";
$categories = mysqli_query($connection, $query);

$title = $_SESSION['add-post-data']['title'] ?? null;
$body = $_SESSION['add-post-data']['body'] ?? null;

unset($_SESSION['add-post-data']);
?>
<link rel="stylesheet" href="<?= ROOT_URL ?>assets/style.css?v=<?= filemtime('assets/style.css') ?>" />
<link rel="shortcut icon" type="image/png" href="<?= ROOT_URL ?>assets/image/Logo.png">


<section class="form_addpost">
    <div class="container_addpost">
        <h2>Add Post</h2>

        <?php if(isset($_SESSION['add-post'])) : ?>

        <div class="alert">
            <p>
                <?= $_SESSION['add-post'];
                unset($_SESSION['add-post']);
                 ?>
            </p>
        </div>

        <?php endif ?>
        <form action="<?= ROOT_URL ?>addpost_process.php" enctype="multipart/form-data" method="POST">
            <input type="text" placeholder="Title" name="title" value="<?= $title ?>">
            <select name="category">

            <?php while($category = mysqli_fetch_assoc($categories)) : ?>
                <option value="<?= $category['id'] ?>"><?= $category['title'] ?></option>
                <?php endwhile ?>
            </select>
            <textarea rows="10" placeholder="Body" name="body"><?= $body ?></textarea>



            <div class="form__control">
  <label for="thumbnail" class="add-thumbnail-btn">
    <i class="fas fa-plus"></i>
    Add Thumbnail
  </label>
  <input type="file" id="thumbnail" name="thumbnail" style="display: none;">
</div>

            <button type="submit" class="btn" name="submit">Add Post</button>

        </form>
    </div>
</section>

<?php 
include 'footer.php';
?>

