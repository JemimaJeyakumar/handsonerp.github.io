<?php
include('header_template.php');
?>

    <div class="page-header">
         <h1>HR Management<small> payroll management</small></h1>
    </div>
   	<ul class="nav nav-tabs" style="font-size:14px">
      <li role="presentation"><a href="payroll.php">Staff Salary Records</a></li>
      <li role="presentation"><a href="salaryreport.php">Salary Reports</a></li>
      <li role="presentation"><a href="ot.php">Daily, Hourly Salary and OT calculation</a></li>
      <li role="presentation" class="active"><a href="epf.php">EPF, ETF Report</a></li>
      <li role="presentation"><a href="alldec.php">Allowances and Deductions Report</a></li>
	</ul>


<?php 
include('footer_template.php');
?>