<?php 

class productsImages {

    function productsImagesList($productsID) {
        global $db;
        $sorgu = $db->prepare("SELECT * FROM productsimages WHERE productsID=?");
        $sorgu->execute(array($productsID));
        $line = $sorgu->fetchAll(PDO::FETCH_ASSOC);
        return $line;
    }

}

?>