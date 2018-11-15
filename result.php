<?php
require 'connection.php';
require 'valid.php';
if(loggedin())
{
	echo 'Welcome '.$_SESSION['user_id'];
	}
else
{
	Header('Location: login.php');	
}
if(isset($_POST['from']))
{
	$from = $_POST['from'];
  $to = $_POST['to'];
  $disabled='';
  
  
}
if(isset($_POST['navbtnplace'])) {
  echo  $_POST['navbtnplace'];
}
?>
<!DOCTYPE html>
<html>

<head>

  <!-- Compiled and minified CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

  <!-- Compiled and minified JavaScript -->


  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
</head>

<body>

  <div class="row">
    <div class="col s12 m7">
      <div class="card">
        <div class="card-image">
          <img src="img/subscribe-bg.jpg">
          <span class="card-title">Card Title</span>
        </div>
        <div class="card-content">
          <p>I am a very simple card. I am good at containing small bits of information.
            I am convenient because I require little markup to use effectively.</p>
        </div>
        <div class="card-action">
          <form action="detail.php" method="post">
            <div class="btn-group btn-group-justified" role="group" aria-label="...">
              <div class="btn-group" role="group">
                <input type="submit" class="btn btn-default" name="navbtnplace" value="1213213">
              </div>
            </div>
            </form>
          <!--<a href="#" class="btn btn-primary">Go somewhere</a>-->
        </div>
      </div>
    </div>
  </div>


  <!--JavaScript at end of body for optimized loading-->
  <script type="text/javascript" src="js/materialize.min.js"></script>
</body>

</html>