<?php
    class db{
        // Properties 
        public $dbhost = '34.87.91.62';
        public $dbuser = 'root';
        public $dbpass = 'nidhi5416';
        public $dbname = 'newman';
    
    public function connect(){
        $dbhost = '34.87.91.62';
        $dbuser = 'root';
        $dbpass = 'nidhi5416';
        $dbname = 'newman';
    
        $mysql_connect_str = "mysql:host=".$dbhost.";dbname=".$dbname.";";
        $dbConnection = new PDO($mysql_connect_str,$dbuser,$dbpass);
        $dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        return $dbConnection;
    }
}
?>
