<?php
		$emID = $_POST['emID'];
		$pwd = $_POST['pwd'];
		
		if($emID == 'admin' && $pwd == '123'){
			header('Location: http://localhost/EAD/adminhome.php');
		}else if($emID == 'user' && $pwd == '456'){
			header('Location: http://localhost/EAD/userhome.php');
		}else{
			echo '<script type="text/javascript">alert(\'Entered wrong User Name or Password!!!\');
			
					window.location = "http://localhost/EAD/login.php";
					
					</script>';	
			}
?>