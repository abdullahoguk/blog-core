<?php 
class Database{
	public $host = DB_HOST;
	public $username = DB_USER;
	public $password = DB_PASS;
	public $db_name = DB_NAME;

	public $link;
	public $error; 

//Constructor
	public function __construct(){
		$this->connect();
	}
	//connector
	private function connect(){
		$this->link = new mysqli($this->host, $this->username, $this->password, $this->db_name);
		if(!$this->link){
			$this->error = "Connection Failed".$this->link->connect_error;
		}
	}
	//select method
	public function select($query){
		$result = $this->link->query($query) or die($this->link->error.__LINE__);
		if($result->num_rows > 0){
			return $result;
		}
		else{
			return false;
		}
	}

	//insert method
	public function insert($query){
		$insert_row = $result = $this->link->query($query) or die($this->link->error.__LINE__);
		if($insert_row){
			header("Location: index.php?msg=".urlencode('Record Added')) ;
			exit();
		}
		else{
			die($this->link->error.__LINE__);
		}
	}

	//update method
	public function update($query){
		$update_row = $result = $this->link->query($query) or die($this->link->error.__LINE__);
		if($update_row){
			header("Location: index.php?msg=".urlencode('Record Updated')) ;
			exit();
		}
		else{
			die($this->link->error.__LINE__);
		}
	}

	//delete method
	public function delete($query){
		$delete_row = $result = $this->link->query($query) or die($this->link->error.__LINE__);
		if($delete_row){
			header("Location: index.php?msg=".urlencode('Record Deleted')) ;
			exit();
		}
		else{
			die($this->link->error.__LINE__);
		}
	}
}	
?>