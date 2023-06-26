<?php
require '../config/config.php';

$username_email = $_SESSION['signin-data']['username_email'] ?? null;
unset($_SESSION['signin-data']);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>WonderLab</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="<?= ROOT_URL ?>assets/style.css?v=<?= filemtime('../assets/style.css') ?>"/>
    <link rel="stylesheet" href="<?= ROOT_URL ?>assets/style1.css?v=<?=filemtime('../assets/style1.css')?>"/>
    <link rel="shortcut icon" type="image/png" href="<?= ROOT_URL ?>assets/image/Logo.png">
</head>

<body>
    <section class="form__section">
        <div class="container form__section-container">
        
        <div class="text_box">
    <img src="../assets/image/Logo.png"  class="logo_index">
    <h4 class="title_index">The Ultimate destination for science</h4></br><h4 class="title_index">enthusiasts</h4>
    </div>
            <form action="<?= ROOT_URL ?>authn/login_process.php" method="POST">
            
            <!-- afficher les alerts/succes message -->
            <?php if(isset($_SESSION['signup-success'])) : ?>
            
            <div class="success">
                <p>
              <?= $_SESSION['signup-success'];
              unset($_SESSION['signup-success']);
              ?>
                </p>
            </div>
            
            <?php elseif(isset($_SESSION['signin'])) : ?>

            <div class="alert">
                <p>
                    <?= $_SESSION['signin'];
              unset($_SESSION['signin']);
              ?>
                </p>
            </div>
            <?php endif ?>
                <input type="text" placeholder="Username or Email" name="username_email" value="<?= $username_email ?>" />
                <input type="password" placeholder="Enter Password" name="password" />
                <button type="submit" class="btn" name="submit">Sign In</button>
                <small>Don't Have an Account ? <a href="../index.php">Sign Up</a></small>
            </form>
        </div>
    </section>
</body>

</html>


