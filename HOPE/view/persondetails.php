
<!DOCTYPE html>
<html>
<head>
</head>
</head>
<style>
    body{
        background-image: url('bg.jpg');
        background-repeat: no-repeat;
        background-attachment: fixed;  
        background-size: cover;
    }
</style>
<h1 style= "font-size:300%;color:darkblue"><img src="hope.jpg" height="40" width="50">HOPE</h1>
<body>
    <!-- navigation section -->
    <div style="padding:30px">
        <table width="100%">
            <tr>
                
                <td align = "right" width="50%" class="lime">
                    <div style= "font-size:150%;">
                        
                        <a href='viewdetails.php'style ="color:RosyBrown;">Go Back</a>

                    </div>
                </td>
            </tr>
        </table>

<body>

	
	  <?php
       $conn=mysqli_connect("localhost","root","","fundraiser");	  
       ?>
	  <?php
	  if (isset($_POST['review'])) {
	  	$id =$_POST['id'];
	  }
	  ?>
	  <?php
	  $sql1="SELECT * FROM register_list;";

      $result1=mysqli_query($conn,$sql1); 

	  
	  ?>
	  <center>
	<div class="titleDiv">
		<h3 class='titleOftable'>Review </h3>
	</div>	
		<div class="review-section">
		<?php
		while($row1= mysqli_fetch_assoc($result1))
          {
          	?>
				<form method="POST" action="">
				
			    <label class="label"> Name:</label><br>
			    <input type="text" name="name" value="<?php echo $row1['name'];?>"><br><br>

			    <label class="label"> Username:</label><br>
			    <input type="text" name="username" value="<?php echo $row1['username'];?>"><br><br>
               
                <label class="label">Email<br></label>
                <input type="text" min="1" name="email" value="<?php echo $row1['email'];?>"><br><br>

                <label class="label">Phone<br></label>
                <input type="text" min="1" name="telephoneno" value="<?php echo $row1['telephoneno'];?>"><br><br>
                
                <label class="label">Address:<br></label>
                <input type="text" name="address"  value="<?php echo $row1['address'];?>" ><br><br>
                <input type="hidden" name="id" value="<?php echo $row['donor_id'];?>">
                 </center>	  
				
		</form>
		<?php
	   }
	?>
	</div>
</body>
</html>