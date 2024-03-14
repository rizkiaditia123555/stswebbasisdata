<?php
include_once("database.php");
session_start();
if (isset($_POST["login"])) {
  $username = $_POST["username"];
  if (cek_login($_POST['username'], $_POST['password'])) {
    $_SESSION['username'] = $username;
    $_SESSION['status'] = "login";
    if ($_SESSION['role'] == "admin") {
      header("location:admin.php");
    } else {
      header("location:user.php");
    }
  } else {
    header("location:login.php?msg=gagal");
  }
}
?>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- Bootstrap CSS -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <title>Login</title>
</head>
<style>
    body {
        background-color: gray;
    }
    .kotak{
    margin-top: 70px;
    margin-left: 450px;
    
}
.h1{
    text-align: center;
}
.sp{
    color: slateblue;
    
}
</style>
<body>
  
  <br><br><br><br>
  <div class="kotak">
    <div class="card" style="width: 25rem;">
      <ul class="list-group list-group-flush">
        <li class="list-group-item">
          <h1 class="h1"><span class="sp"> LOGIN</span></h1>
        </li>
        <li class="list-group-item">
          <form action="" method="POST">
            <div class="mb-3">
              <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="username"
                placeholder="username" name="username">
            </div>
            <div class="mb-3">
              <input type="password" class="form-control" id="password" placeholder="password" name="password">
            </div>
            <div class="mb-3 form-check"></div>
            <button name="login" type="submit" class="btn btn-dark w-100">Login</button>
          </form>
        </li>
      </ul>
    </div>
  </div>

  
  <!-- Optional JavaScript; choose one of the two! -->

  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
    crossorigin="anonymous"></script>
</body>

</html>
