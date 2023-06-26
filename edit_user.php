
<?php
include 'header.php';
$id = $_SESSION['user-id'];
$query = "SELECT * FROM users WHERE id=$id";
$result = mysqli_query($connection, $query);
$result = mysqli_fetch_assoc($result); 
if (isset($_POST['submit'])) {
  $firstname =$_POST['first-name'];
  $lastname =$_POST['last-name'];
  $username =$_POST['username'];
  $email =$_POST['email'];
  $password =$_POST['password'];
  if(strlen($password) < 8 || strlen($password) <8){
    $_SESSION['edit']="Password Should be 8 Characters at least";
    header('location: ' . ROOT_URL . 'edit_user.php');
    die();
}else{
  $user_check_query = "SELECT * FROM users WHERE (username='$username' OR email='$email') AND id!='$id'";
  $user_check_result = mysqli_query($connection, $user_check_query);
  if(mysqli_num_rows($user_check_result) > 0){
      $_SESSION['edit'] ="Username or Email already Exists";
      header('location: ' . ROOT_URL . 'edit_user.php');
      die();
  }else{
  $sql = "UPDATE users SET firstname='$firstname', lastname='$lastname', username='$username', email='$email',password='$password' WHERE id='$id'";
  mysqli_query($connection, $sql);
  $_SESSION['edit-success']="User information updated successfully";
  }
  if (isset($_FILES['avatar'])) {
    $avatar = $_FILES['avatar'];
    $avatar_name = $time . $avatar['name'];
    $avatar_tmp_name = $avatar['tmp_name'];
    $avatar_destination_path = 'image/' . $avatar_name; 
    $allowed_files = ['png', 'jpg', 'jpeg', 'webp']; 
    $extention = explode('.', $avatar_name);
    $extention = end($extention);
    if (in_array($extention, $allowed_files)) {
        if ($avatar['size'] < 1000000) {
            move_uploaded_file($avatar_tmp_name, $avatar_destination_path); 
            $sql = "UPDATE users SET avatar='$avatar_name' WHERE id='$id'";
            mysqli_query($connection, $sql);
        } else {
        }
    } else {
    }
    header('location: ' . ROOT_URL . 'edit_user.php');
    die();
}
}
header('location: ' .ROOT_URL . 'edit_user.php'); 
}
?>


<!DOCTYPE html>
<html>
  <head>
    <title>WonderLab</title>
    <link rel="stylesheet" href="<?= ROOT_URL ?>assets/style.css?v=<?=filemtime('assets/style.css')?>"/>
    <link rel="shortcut icon" type="image/png" href="<?= ROOT_URL ?>assets/image/Logo.png">

  </head>
  <body>
    <div class="container_edituser">
      <div class="profile">
        <div class="profile-img">
          <img src="<?= ROOT_URL . 'image/' . $result['avatar'] ?>" alt="profile"/>
          <button class="edit-btn">Edit</button>
        </div>
        <form action="" method="post" enctype="multipart/form-data" class="profile-form">
          <!-- afficher les alerts/succes message -->
          <?php if(isset($_SESSION['edit-success'])) : ?>
            <div class="success">
                <p>
                    <?= $_SESSION['edit-success'];
              unset($_SESSION['edit-success']);
              ?>
                </p>
            </div>
            
            <?php elseif(isset($_SESSION['edit'])) : ?>

            <div class="alert">
                <p>
                    <?= $_SESSION['edit'];
              unset($_SESSION['edit']);
              ?>
                </p>
            </div>
            <?php endif ?>
          <input type="file" id="avatar" name="avatar" style="display: none;"/>
          <label for="first-name">First Name</label>
          <input type="text" id="first-name" name="first-name" value="<?php echo $result['firstname']; ?>" />

          <label for="last-name">Last Name</label>
          <input type="text" id="last-name" name="last-name" value="<?php echo $result['lastname']; ?>" />

          <label for="username">Username</label>
          <input type="text" id="username" name="username" value="<?php echo $result['username']; ?>" />

          <label for="email">Email</label>
          <input type="email" id="email" name="email" value="<?php echo $result['email']; ?>" />

          <label for="password">Password</label>
          <input type="password" id="password" name="password" value="<?php echo $result['password']; ?>" />

          <input type="submit" name="submit" value="Save Changes" />
        </form>
      </div>
    </div>
  </body>
</html>

<!-- rendre le boutton edit aui importe les fichier au lieu "input (type file)"-->
<script>
const editBtn = document.querySelector('.edit-btn');
const avatarInput = document.querySelector('#avatar');
editBtn.addEventListener('click', () => {
  avatarInput.click();
});
</script>
     