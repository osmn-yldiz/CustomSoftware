<?php 

class categoriesMain {

    function categoriesMainList($categoriesMainID=0) {
        global $db;
        if($categoriesMainID > 0){
            $sorgu = $db->prepare("SELECT * FROM categoriesmain WHERE ID=? AND ISDELETED=0");
            $sorgu->execute([$categoriesMainID]);
            $line = $sorgu->fetchAll(PDO::FETCH_ASSOC);
        }else{
            $sorgu = $db->prepare("SELECT * FROM categoriesmain WHERE ISDELETED=0");
            $sorgu->execute();
            $line = $sorgu->fetchAll(PDO::FETCH_ASSOC);
        }
        
        return $line;
    }

}

?>