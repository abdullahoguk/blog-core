<?php include 'includes/header.php';  ?>

<?php
  //create db object
	$db = new Database();


	if(isset($_POST['submit'])){
		//assign vars
		$title = mysqli_real_escape_string($db->link, $_POST['title']);
		$body = mysqli_real_escape_string($db->link, $_POST['body']);
		$category = mysqli_real_escape_string($db->link, $_POST['category']);
		$author = mysqli_real_escape_string($db->link, $_POST['author']);
		$tags = mysqli_real_escape_string($db->link, $_POST['tags']);

		//Validate 
		if ($title == '' || $body == '' || $category == '' || $author == '') {
			$error = 'Please fill required filleds';
		}
		else{
			$query = "INSERT INTO posts
				(title ,body, category, author, tags)
				VALUES ('$title' ,'$body', '$category', '$author', '$tags')";
			$insert_row = $db->insert($query);
		}
	}

	//create query
	$query = "SELECT * FROM categories";
	//run query
	$categories = $db->select($query);
?>


<form role="form" method="post" action="add_post.php">
  <div class="form-group">
    <label>Post Title</label>
    <input name="title" type="text" class="form-control" placeholder="Title of the post">
  </div>
  
  <div class="form-group">
    <label>Post Body</label>
    <textarea name="body" type="text" class="form-control" placeholder="Enter body of the post in html format."></textarea>
  </div>
 <div class="form-group">
    <label>Category</label>
	<select name="category" class="form-control">
		<?php while ($row = $categories->fetch_assoc()) :?>	
				<option value="<?php echo $row['id'];?>"> <?php echo $row['name']; ?></option>
		<?php endwhile; ?>
	</select>  
</div>

  <div class="form-group">
    <label>Author</label>
    <input name="author" type="text" class="form-control" placeholder="Author name">
  </div>

	<div class="form-group">
    	<label>Tags</label>
    	<input name="tags" type="text" class="form-control" placeholder="Enter comma separated tags">
	</div>

	<div>
		<input name="submit" type="submit" class="btn btn-primary" value="Submit">
		<a href="index.php" class="btn btn-default">Cancel</a>
	</div>
	<br>
</form>


<?php include 'includes/footer.php';  ?>