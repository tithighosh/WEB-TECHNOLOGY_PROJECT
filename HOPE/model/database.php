<?php
	$dbuser = 'root';
	$pass = '';
	$host 	= 'localhost';
	$dbname	= 'fundraiser';

	function getConnection(){

		global $dbname, $pass, $dbuser, $host;
		$con = mysqli_connect($host, $dbuser, $pass, $dbname) or die("Unable To Connect");
		return $con;
	}
?>