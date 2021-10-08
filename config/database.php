<?php
    require_once("../../inc/config.php");

    class Database{
        private $link;

        function __construct(){
            $this->link=mysqli_connect(DB_SERVER,USERNAME,DB_PASSWORD,DB_DATABASE_NAME);
            

            if(!$this->link){
                echo "Error en la conexión ".mysqli_connect_error();
                echo "errno de depuración: " . mysqli_connect_errno() . PHP_EOL;
                echo "error de depuración: " . mysqli_connect_error() . PHP_EOL;
            }else{

                echo "Éxito: Se realizó una conexión apropiada a MySQL! La base de datos es genial." . PHP_EOL;
                echo "Información del host ". mysqli_get_host_info($this->link) . PHP_EOL;
                
            }
            //mysqli_close($this->link);
        }

        function closConnection(){
            mysqli_close($this->link);
        }
    }

?>