<?php
require 'config/config.php';

$firstname = $_SESSION['signup-data']['firstname'] ?? null;
$lastname = $_SESSION['signup-data']['lastname'] ?? null;
$username = $_SESSION['signup-data']['username'] ?? null;
$email = $_SESSION['signup-data']['email'] ?? null;
$createpassword = $_SESSION['signup-data']['createpassword'] ?? null;
$confirmpassword = $_SESSION['signup-data']['confirmpassword'] ?? null;
 
unset($_SESSION['signup-data']);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>WonderLab</title>
    <meta charset="UTF-8" />
    <link rel="stylesheet" href="<?= ROOT_URL ?>assets/style.css?v=<?=filemtime('assets/style.css')?>"/>
    <link rel="stylesheet" href="<?= ROOT_URL ?>assets/style1.css?v=<?=filemtime('assets/style1.css')?>"/>

    <link rel="shortcut icon" type="image/png" href="<?= ROOT_URL ?>assets/image/Logo.png">
</head>

<body>
<section class="form__section">
    <div class="container form__section-container">

    
    <div class="text_box">
    <img src="./assets/image/Logo.png"  class="logo_index">
    <h4 class="title_index">The Ultimate destination for science</h4></br><h4 class="title_index">enthusiasts</h4>
    </div>
            <!-- la forme de registration -->
            
            <form action="<?= ROOT_URL ?>authn/signup_process.php"  method="POST">
           
            <!-- afficher les alerts message-->

            <?php if(isset($_SESSION['signup'])) : ?>
              <div class="alert">
                <p>
                    <?= $_SESSION['signup'];
                        unset($_SESSION['signup']);                        
                    ?>
                </p>
              </div>
            <?php endif ?>

         <!-- fin des alretes message -->
                <input type="text" placeholder="First Name" name="firstname" value="<?= $firstname ?>" />
                <input type="text" placeholder="Last Name" name="lastname" value="<?= $lastname ?>"/>
                <input type="text" placeholder="Username" name="username" value="<?= $username ?>" />
                <input type="email" placeholder="Email" name="email" value="<?= $email ?>"/>
                <input type="password" placeholder="Enter Password" name="createpassword" value="<?= $createpassword ?>"/>
                <input type="password" placeholder="Confirm Password" name="confirmpassword" value="<?= $confirmpassword ?>"/>
                <button type="submit" class="btn" name="submit">Sign Up</button>
                <small>Already Have an Account ? <a href="authn/login.php">Sign In</a></small>
            </form>
        </div>
    </section>
</body>
</html>
