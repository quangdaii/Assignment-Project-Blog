<?php

class UserModel extends Database{
	protected $db;

	public function __construct()
	{
		$this->db = new Database();
		$this->db->connect();
	}

	public function signup($username, $password, $fullName)
	{	
		$sql = "INSERT INTO users (username, password, fullname,level)
							VALUES ('$username', '$password', '$fullName','0')";
		$this->db->conn->query($sql);
	}

	public function checkExists($username) {
		$sql = "SELECT * FROM users WHERE username = '$username'";
		$result = $this->db->conn->query($sql);		
		return $result;
	}
    public function login($username, $password)
	{
		$sql = "SELECT * FROM users WHERE username = '$username' AND password = '$password'";
		$result = $this->db->conn->query($sql);
		return $result;
	}
}