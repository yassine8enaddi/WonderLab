<?php 
require '../config/config.php';

if(isset($_POST['submit'])){
    // récupérer les données 
    $username_email = $_POST['username_email'];
    $password =$_POST['password'];

    if(!$username_email){
        $_SESSION['signin'] = "Enter Valid Username Or Email";
    }elseif(!$password){
        $_SESSION['signin'] = "Password Required";

    }else{

        // récupérer les données de la base de données
        $fetch_user_query = "SELECT * FROM users WHERE username = '$username_email' OR email = '$username_email'";
        $fetch_user_result = mysqli_query($connection, $fetch_user_query);
        // vérifier is les données existe déja
        if(mysqli_num_rows($fetch_user_result)==1){

            $user_record = mysqli_fetch_assoc($fetch_user_result);
            $db_password = $user_record['password'];

            if($password==$db_password){

                $_SESSION['user-id'] = $user_record['id'];

                header('location: ' . ROOT_URL . 'home.php');
            }else{
                
            $_SESSION['signin'] = "Incorrect Password!";
        }

        }else{
            $_SESSION['signin'] = "User does not exist!";
        }
    }
    if(isset($_SESSION['signin'])){
        $_SESSION['signin-data']=$_POST;
        header('location: ' . ROOT_URL . 'authn/login.php');
        die();
    }
}else{
    header('location: ' . ROOT_URL . 'authn/login.php');
    die();
}

?>