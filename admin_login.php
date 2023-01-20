<html>
<body style=" background-image: url(adminlogin.png);
    height: 100%; 
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;">
<div align="center">
<h2 style="color: GhostWhite;">
<?php 
session_start();



if($_POST["uid"]=='admin' AND $_POST["password"]=='admin' )
{
$_SESSION["admin_login"]=True;
}

if($_SESSION["admin_login"]==True)
{
echo " <br><a href=\"http://localhost/railway/insert_into_stations.php\"> Show All Stations </a><br> ";
echo " <br><a href=\"http://localhost/railway/show_trains.php\"> Show All Trains </a><br> ";
echo " <br><a href=\"http://localhost/railway/show_users.php\"> Show All Users </a><br> ";
echo " <br><a href=\"http://localhost/railway/insert_into_train_3.php\"> Enter New Train </a><br> ";
echo " <br><a href=\"http://localhost/railway/insert_into_classseats_3.php\"> Enter Train Schedule </a><br> ";
echo " <br><a href=\"http://localhost/railway/booked.php\"> View all booked tickets </a><br> ";
echo " <br><a href=\"http://localhost/railway/cancelled.php\"> View all cancelled tickets </a><br> ";
//echo " <br><a href=\"http://localhost/railway/logout.php\"> Logout </a><br> ";
}
else 
{

echo "
<form action=\"admin_login.php\" method=\"post\">
User ID: <input type=\"text\" name=\"uid\" required><br>
Password: <input type=\"password\" name=\"password\" required><br>
<input type=\"submit\">
</form>
";
}


?>
</h2>
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

<br><h2><a href="http://localhost/railway/index.htm">Go to Home Page!!!</a></h2>
</div>
</body>
</html>
