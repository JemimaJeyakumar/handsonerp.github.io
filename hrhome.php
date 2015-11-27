<?php
include('header_template.php');
?>

    <div class="page-header">
     <h1><a href="adminhome.php" title="admin page" style="" id="home_header">Admin Home</a><small> EAD ERP</small></h1>
	</div>
    
    
   	<ul class="nav nav-tabs">
      <li role="presentation"><a href="adminhome.php">Notifications</a></li>
      <li role="presentation"  class="active"><a href="hrhome.php">HR Module</a></li>
      <li role="presentation"><a href="saleshome.php">Sales Module</a></li>
      <li role="presentation"><a href="disthome.php">Distribution Module</a></li>
      <li role="presentation"><a href="finhome.php">Finance Module</a></li>
	</ul>
      <div class="row" style="margin:5% 5% 5%;">
      <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
          <img src="img/payroll_management.jpeg" alt="payroll management">
          <div class="caption">
            <h3 style="text-align:center;font-size:14px;color:#286E77">Payroll Management</h3>
            <p><a href="http://localhost/EAD/payroll.php" class="btn btn-primary" role="button">Goto</a></p>
          </div>
        </div>
      </div>
      
      <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
          <img src="img/staff.png" alt="employee management">
          <div class="caption">
            <h3 style="text-align:center;font-size:14px;color:#286E77">Employee Management</h3>
            <p><a href="http://localhost/EAD/profile.php" class="btn btn-primary" role="button">Goto</a></p>
          </div>
        </div>
      </div>
      
      <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
          <img src="img/Training_ICON.png" alt="training management">
          <div class="caption">
            <h3 style="text-align:center;font-size:14px;color:#286E77">Training Management</h3>
            <p><a href="http://localhost/EAD/training.php" class="btn btn-primary" role="button">Goto</a></p>
          </div>
        </div>
      </div>
      
      <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
          <img src="img/absence_icon.png" alt="attendance management">
          <div class="caption">
            <h3 style="text-align:center;font-size:14px;color:#286E77">Attendance Management</h3>
            <p><a href="#" class="btn btn-primary" role="button">Goto</a></p>
          </div>
        </div>
      </div>
      
      <div class="col-sm-6 col-md-3">
        <div class="thumbnail">
          <img src="img/interview.png" alt="Recruitment Management" style="margin-bottom:3px">
          <div class="caption">
            <h3 style="text-align:center;font-size:14px;color:#286E77">Recruitment Management</h3>
            <p><a href="#" class="btn btn-primary" role="button">Goto</a></p>
          </div>
        </div>
      </div>
    </div>
    
    
<?php 
include('footer_template.php');
?>