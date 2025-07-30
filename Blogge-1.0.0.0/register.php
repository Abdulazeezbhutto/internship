<?php
include_once("includes/header.php");

?>

<div class="container d-flex justify-content-center align-items-center min-vh-100">
  <div class="border rounded shadow p-4 bg-white" style="width: 500px; height: 500px;">
    <h4 class="mb-4 text-center">Sign up</h4>
    <form>
      <div class="mb-3">
        <label for="inputEmail3" class="form-label">Email address</label>
        <input type="email" class="form-control" id="inputEmail3" placeholder="name@example.com">
      </div>

      <div class="mb-3">
        <label for="inputPassword3" class="form-label">Password</label>
        <input type="password" class="form-control" id="inputPassword3" placeholder="••••••••">
      </div>

      <div class="form-check mb-3">
        <input class="form-check-input" type="checkbox" id="gridCheck1">
        <label class="form-check-label" for="gridCheck1">
          Remember me
        </label>
      </div>

      <button type="submit" class="btn btn-primary w-100">Sign in</button>
    </form>
    <p class="mt-3 mb-0 text-center">
    <small class="text-muted">
        already have a account? <a href="login.php" class="text-decoration-none">login here</a>
    </small>
    </p>
  </div>
</div>





