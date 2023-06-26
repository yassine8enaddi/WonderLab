<?php
require 'config/config.php';

if(isset($_POST['submit'])){
    $author_id = $_SESSION['user-id'];

    $title = $_POST['title'];
    $body = $_POST['body'];
    $category_id = $_POST['category'];
    $thumbnail = $_FILES['thumbnail'];

   
    if(!$title){
        $_SESSION['add-post'] = " Title is required ";
    }elseif(!$category_id){
        $_SESSION['add-post'] = "Select The Post Category";
    }elseif(!$body){
        $_SESSION['add-post'] = "Add The Post Body Content";
    }elseif(!$thumbnail['name']){
        $_SESSION['add-post'] = "Post Thumbnail is required";
    }else{


        $time = time(); 
        $thumbnail_name = $time . $thumbnail['name'];
        $thumbnail_tmp_name = $thumbnail['tmp_name'];
        $thumbnail_destination_path = 'image/' . $thumbnail_name;


        $allowed_files = ['png', 'jpg', 'jpeg', 'webp','gif'];
        $extension = explode('.', $thumbnail_name);
        $extension = end($extension);

        if(in_array($extension, $allowed_files)){

            if($thumbnail['size'] < 1_000_000){
                move_uploaded_file($thumbnail_tmp_name, $thumbnail_destination_path);

            }else{
                $_SESSION['add-post'] = "File Size is too large ";
            }
        }else{
            $_SESSION['add-post'] ="File type is not allowed ";
        }
    }

    if($_SESSION['add-post']){
        $_SESSION['add-post-data'] = $_POST;
        header('location: ' . ROOT_URL . 'add_post.php');
        die();
    }else{

        $query = "INSERT INTO posts (title, body, thumbnail, category_id, author_id) VALUES('$title', '$body', '$thumbnail_name', $category_id, $author_id)";
        $result = mysqli_query($connection, $query);
        if(!mysqli_errno($connection)){
            header('location: ' . ROOT_URL . '/home.php');
            die();
        }
    }

}

header('location: ' . ROOT_URL . 'add_post.php');
die();