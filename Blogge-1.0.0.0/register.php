<?php
include_once("includes/header.php");

?>

<div class="container d-flex justify-content-center align-items-center min-vh-100">
  <div class="border rounded shadow p-4 bg-white" style="width: 500px; height: 600px;">
    <h4 class="mb-4 text-center">Sign up</h4>
    <form method = "POST" action = "process.php" enctype = "form/data">

      <!--First name-->
      <div class="mb-3">
        <label for="inputEmail3" class="form-label">First Name</label>
        <input type="text" class="form-control" id="inputEmail3" placeholder="jhon example" name ="first_name"> 
      </div>


      <!--Middle name-->
      <div class="mb-3">
        <label for="inputEmail3" class="form-label">Middle Name</label>
        <input type="text" class="form-control" id="inputEmail3" placeholder="remy example" name ="middle_name"> 
      </div>


      <!--Last name-->
      <div class="mb-3">
        <label for="inputEmail3" class="form-label">last Name</label>
        <input type="text" class="form-control" id="inputEmail3" placeholder="santos example" name ="last_name"> 
      </div>


      <!--Email-->
      <div class="mb-3">
        <label for="inputEmail3" class="form-label">Email address</label>
        <input type="email" class="form-control" id="inputEmail3" placeholder="name@example.com" name ="email"> 
      </div>

      <!--password-->
      <div class="mb-3">
        <label for="inputPassword3" class="form-label">Password</label>
        <input type="password" class="form-control" id="inputPassword3" placeholder="••••••••" name = "password">
      </div>

      <!--Image uploader-->
      <div class="mb-3">
        <label for="inputPassword3" class="form-label">Upload your image</label>
        <input type="file" class="form-control" id="inputPassword3" name = "profile">
      </div>

      

      <button type="submit" class="btn btn-primary w-100" name = "register" value = "register">Sign in</button>
    </form>
    <p class="mt-3 mb-0 text-center">
    <small class="text-muted">
        already have a account? <a href="login.php" class="text-decoration-none">login here</a>
    </small>
    </p>
  </div>
</div>





