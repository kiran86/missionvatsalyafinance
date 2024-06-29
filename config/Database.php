<?php
class Database {
	private $_connection;
	private static $_instance; //The single instance

	/**
	 * DB Connection settings for online hosting.
	 */
	// private $_host = "sql205.epizy.com";
	// private $port = 3306;
	// private $_username = "epiz_28111343";
	// private $_password = "7wHqmGF1hbCZ";
	// private $_database = "epiz_28111343_infradevlop";
	
	private $_host = "127.0.0.1";
	private $port = 3306;
	private $_username = "root";
	private $_password = "";
	private $_database = "missionvatsalyafinance";

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