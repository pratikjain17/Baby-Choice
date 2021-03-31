<?php
include 'db_connection.php';
include 'header.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Baby Choice</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/global.css" rel="stylesheet">
  <link href="css/my_account.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
  <link href="https://fonts.googleapis.com/css?family=Righteous&display=swap" rel="stylesheet">
  <script src="js/jquery-2.1.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>

<body>
  <?php
  if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {


    $userid = $_SESSION['userid'];
    $sql = "SELECT * FROM `user` WHERE `user_id` = $userid";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_assoc($result);
    $fname = $row['fname'];
    $lname = $row['lname'];
    $number = $row['mobile'];
    $address = $row['address'];

    echo '<div class="jumbotron">
    <h3 class="text-5 font-weight-400 d-flex align-items-center mb-4">Personal Details<a href="' . $_SERVER['REQUEST_URI'] . '" data-toggle="modal" class="ml-auto text-2 text-uppercase btn-link"><span class="mr-1"><i class="fa fa-edit"></i></span>Edit</a></h3>
    <hr class="mx-n4 mb-4">

      <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Name:</p>
      <p class="col-sm-9 text-3">' . $fname . '' . $lname . '</p>
      <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Phone Number</p>
      <p class="col-sm-9 text-3">' . $number . '</p>
      <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Address:</p>
      <p class="col-sm-9 text-3">' . $address . '<br>
        San Ditego,<br>
        California - 22434,<br>
        United States.</p>
       <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    </div>';
  }
  else{
    echo 'You are not logged in to view your account info';
  }
  ?>





</body>

</html>

<?php
include 'footer.php';
?>