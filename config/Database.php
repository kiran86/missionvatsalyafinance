<?php
class Database {
	private $_connection;
	private static $_instance; //The single instance
	
	/**
	 * Database connection settings for testing.
	 */
	private $_host = "127.0.0.1";
	private $port = 3306;
	private $_username = "root";
	private $_password = "";
	private $_database = "missionvatsalya";

	/*
	Get an instance of the Database
	@return Instance
	*/
	public static function getInstance():self {
		if(!self::$_instance) { // If no instance then make one
			self::$_instance = new self();
		}
		return self::$_instance;
	}
	// Constructor
	public function __construct() {
		$this->_connection = new mysqli($this->_host, $this->_username,	$this->_password, $this->_database, $this->port);
		// Error handling
		if(mysqli_connect_error()) {
			trigger_error("Failed to conencto to MySQL: " . mysqli_connect_error(), E_USER_ERROR);
		}
	}
	// Magic method clone is empty to prevent duplication of connection
	private function __clone() { }
	// Get mysqli connection
	public function getConnection() {
		return $this->_connection;
	}
}
?>