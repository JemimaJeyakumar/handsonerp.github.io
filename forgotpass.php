<?php
include('header_template.php');
?>

    <form autocomplete="on" class="well" id="myTemForm">
      <h3 style="margin:0px 0px 10px;padding:opx;color:red;"> Forgot Password... </h3>
      <div class="form-group">
        <label for="EmployeeID">Employee ID</label>
        <input type="text" class="form-control" id="EmployeeIDLogin" placeholder="Enter Your Employee ID">
      </div>
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me!!
        </label>
      </div>
      <button type="submit" class="btn btn-primary" style="font-size:17px;">send</button>
    </form>


<?php 
include('footer_template.php');
?>