<?php
include('header_template.php');
?>


    <form action="checklogin.php" method="post" autocomplete="on" class="well" id="myTemForm">
      <h3 style="margin:0px 0px 10px;padding:0px;color:red;"> Log in... </h3>
      <div id="message"></div>
      <div class="form-group">
        <label for="EmployeeID">Employee ID</label>
        <input type="text" name="emID" class="form-control" id="EmployeeIDLogin" placeholder="Enter Your Employee ID">
      </div>
      <div class="form-group">
        <label for="Password1">Password</label>
        <input type="password" name="pwd" class="form-control" id="Password" placeholder="Password">
      </div>
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me!!
        </label>
      </div>
      <button type="submit" class="btn btn-primary">Login</button>
    </form>


<?php 
include('footer_template.php');
?>