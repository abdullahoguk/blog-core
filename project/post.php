<?php include 'includes/header.php';  ?>
<?php
	$id = $_GET['id'];
	//create db object
	$db = new Database();

	//create query
	$query = "SELECT * FROM posts WHERE id =".$id;

	//run query
	$post = $db->select($query);
	$row = $post->fetch_assoc();
	//create query
	$query = "SELECT * FROM categories";

	//run query
	$categories = $db->select($query);
?>


<div class="blog-post">
    <h2 class="blog-post-title"><?php echo $row['title']; ?></h2>
    <p class="blog-post-meta"><?php echo formatDate($row['date']); ?> by <a href="#"><?php echo $row['author'];?></a></p>
    <?php echo $row['body']; ?>        

             </div><!-- /.blog-post -->
<?php include 'includes/footer.php';  ?>