<?php 
    session_start();
    $userid = $_SESSION['userid'];
    include "db_connection.php";
    $productid = $_GET['productid'];

    // $sql = "DELETE FROM `cart` WHERE `cart`.`cart_p_id` = 'SELECT * FROM `cart` WHERE `p_id` = $productid'";
    // $result = mysqli_query($conn,$sql);
    if(isset($_GET['request']) && $_GET['request'] == "delete"){
        $sql = "SELECT * FROM `cart` WHERE `p_id` = $productid";
        $result = mysqli_query($conn,$sql);
        $row = mysqli_fetch_assoc($result);
        $cartProductId = $row['cart_p_id'];
        $sql1 = "DELETE FROM `cart` WHERE `cart`.`cart_p_id` = $cartProductId";
        $result1 = mysqli_query($conn,$sql1);
    }
    if(isset($_GET['request']) && $_GET['request'] == "update"){
        
    }

  

    header("Location: /Baby Choice/cart.php?usercart=$userid");
?>