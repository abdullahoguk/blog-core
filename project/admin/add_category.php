<?php include 'includes/header.php';  ?>

<?php
  //create db object
	$db = new Database();


	if(isset($_POST['submit'])){
		//assign vars
		$name = mysqli_real_escape_string($db->link, $_POST['name']);
		

		//Validate 
		if ($name == '') {
			$error = 'Please fill required filleds';
		}
		else{
			$query = "INSERT INTO categories
				(name)
				VALUES ('$name')";
			$insert_row = $db->insert($query);
		}
	}

	//create query
	$query = "SELECT * FROM categories";
	//run query
	$categories = $db->select($query);
?>


<form role="form" method="post" action="add_category.php">
	<div class="form-group">
		<label>Category Name</label>
		<input name= "name" type="text" class="form-control">
	</div>
  
<div>
	<input name="submit" type="submit" class="btn btn-primary" value="Submit">
	<a href="index.php" class="btn btn-default">Cancel</a>
  </div>
  <br>
</form>


<?php include 'includes/footer.php';  ?>