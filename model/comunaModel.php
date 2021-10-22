<?php
    require_once PROJECT_ROOT_PATH . "/model/database.php";

    class comunaModel extends Database{
        public function getComunas($limit){
            return $this->select("select * from comuna order by cod_comuna asc limit ?",["i","$limit"]);
        }
    }
?>