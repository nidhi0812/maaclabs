<?php
    class db{
        // Properties 
        public $dbhost = '127.0.0.1';
        public $dbuser = 'ankit';
        public $dbpass = 'ankit5416';
        public $dbname = 'newman';
    
    public function connect(){
        $dbhost = '127.0.0.1';
        $dbuser = 'ankit';
        $dbpass = 'ankit5416';
        $dbname = 'newman';
    
        $mysql_connect_str = "mysql:host=".$dbhost.";dbname=".$dbname.";";
        $dbConnection = new PDO($mysql_connect_str,$dbuser,$dbpass);
        $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $dbConnection;
    }
}
?>
