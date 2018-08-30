<?php
    class db{
        // Properties 
        public $dbhost = '35.197.137.200';
        public $dbuser = 'root';
        public $dbpass = 'MNCrgo5in2rGDNpc';
        public $dbname = 'newman';
    
    public function connect(){
        $dbhost = '35.197.137.200';
        $dbuser = 'root';
        $dbpass = 'MNCrgo5in2rGDNpc';
        $dbname = 'newman';
    
        $mysql_connect_str = "mysql:host=".$dbhost.";dbname=".$dbname.";";
        $dbConnection = new PDO($mysql_connect_str,$dbuser,$dbpass);
        $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $dbConnection;
    }
}
?>