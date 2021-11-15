<?php

class logout {
	public function __construct()
	{
		unset($_SESSION['user']); // xóa session user đã tạo khi đăng nhập
		header('Location: ./'); // chuyển hướng về trang chủ
	}
}
$logout = new logout();