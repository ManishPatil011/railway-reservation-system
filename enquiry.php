<html>
<body style=" background-image: url(user_login1.png);
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;" >

<?php

session_start();
$_SESSION=array();
session_destroy();

?>
<div align="center"> 
<form action="enquiry_result.php" method="post">
<h1 style="color: GhostWhite;">
<marquee direction="right">Kindly enter your credentials!!!</h1></marquee>
<h2 style="color: GhostWhite;">
Starting Point: <select id="sp" name="sp" required>
        
<?php

require "db.php";
            
            $cdquery="SELECT sname FROM station";
            $cdresult=mysqli_query($conn,$cdquery);
        
	
            echo " <option value = \"\" >
                    
                </option>";

            while ($cdrow=mysqli_fetch_array($cdresult)) {
            $cdTitle=$cdrow['sname'];

            echo " <option value = \"$cdTitle\" >
                    $cdTitle
                </option>";
            
            }
?>
    
</select>
<br><br>
   
Destination Point: <select id="dp" name="dp" required>
        
<?php

require "db.php";
            
            $cdquery="SELECT sname FROM station";
            $cdresult=mysqli_query($conn,$cdquery);
        
            echo " <option value = \"\" >
                    
                </option>";

            while ($cdrow=mysqli_fetch_array($cdresult)) {
            $cdTitle=$cdrow['sname'];

            echo " <option value = \"$cdTitle\" >
                    $cdTitle
                </option>";
            
            }
?>
    
</select>
<style>
a:link {
  color: green;
  background-color: transparent;
  text-decoration: none;
}
a:visited {
  color: pink;
  background-color: transparent;
  text-decoration: none;
}
a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}
a:active {
  color: yellow;
  background-color: transparent;
  text-decoration: underline;
}
</style>
<br><br>
     
Date of Journey: <input type="date" name="doj" required><br>
<input type="submit">
</h2>
</form>
<br><br><h2><a href="http://localhost/railway/index.htm">Go to Home Page</a></h2>
</body>
</html>
