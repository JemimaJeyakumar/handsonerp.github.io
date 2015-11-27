<?php
include('header_template.php');
?>

    <div class="page-header">
         <h1><a href="adminhome.php" title="admin page" style="" id="home_header">Admin Home</a><small> EAD ERP</small></h1>
    </div>

   	<ul class="nav nav-tabs">
      <li role="presentation"><a href="adminhome.php">Notifications</a></li>
      <li role="presentation"><a href="hrhome.php">HR Module</a></li>
      <li role="presentation"><a href="saleshome.php">Sales Module</a></li>
      <li role="presentation" class="active"><a href="disthome.php">Distribution Module</a></li>
      <li role="presentation"><a href="finhome.php">Finance Module</a></li>
	</ul>


<?php 
include('footer_template.php');
?>