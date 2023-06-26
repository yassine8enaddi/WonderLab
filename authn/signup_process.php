<?php
require '../config/config.php';

// récupérer les données de la registaration
if(isset($_POST['submit'])){
    
    $firstname = $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $username = $_POST['username'];
    $email = $_POST['email'];
    $createpassword = $_POST['createpassword'];
    $confirmpassword = $_POST['confirmpassword'];
 
    //vérifier le remplissage complet champs
    
    if(!$firstname){
        $_SESSION['signup']="Please Enter Your First Name";
    }elseif(!$lastname){
        $_SESSION['signup']="Please Enter Your Last Name";
    }elseif(!$username){
        $_SESSION['signup']="Please Enter Your UserName";
    }elseif(!$email){
        $_SESSION['signup']="Please Enter Your  Email Address";
    }elseif(!$createpassword){
        $_SESSION['signup']="Please Enter Your Password";
    }elseif(!$confirmpassword){
        $_SESSION['signup']="Please Confirm Your  Password";    
    }elseif(strlen($createpassword) < 8 || strlen($confirmpassword) <8){
        $_SESSION['signup']="Password Should be 8 Characters at least";
    }else{
        // vérifier si le mot de passe est correspendant
        if($createpassword !== $confirmpassword){
            $_SESSION['signup'] = "Password Do Not Match";
        }else{
            // vérifier si l'email/ username xiste déja  
            $user_check_query = "SELECT * FROM users WHERE username='$username' OR email='$email'";
            $user_check_result = mysqli_query($connection, $user_check_query);
            if(mysqli_num_rows($user_check_result) > 0){
                $_SESSION['signup'] ="Username or email already Exists";
            }
       }
    } 
    if(isset($_SESSION['signup'])){
        $_SESSION['signup-data'] = $_POST;
        header('location: ' . ROOT_URL . 'index.php');
        die();
    }
    else{
        $insert_user_query = "INSERT INTO users SET firstname='$firstname', lastname='$lastname', username='$username', email='$email', password='$createpassword', avatar='user'";
        $insert_user_result = mysqli_query($connection, $insert_user_query);
        if(!mysqli_errno($connection)){
          $_SESSION['signup-success'] = "Register Successful. Please Login..!";
          header('location: ' . ROOT_URL . 'authn/login.php');
          die();
        }
    }
}

