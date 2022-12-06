<?php 

class categories {

    function categoriesList($categoriesMainID) {
        global $db;
        $sorgu = $db->prepare("SELECT * FROM categories WHERE categoriesMainID=?");
        $sorgu->execute([$categoriesMainID]);
        $line = $sorgu->fetchAll(PDO::FETCH_ASSOC);
        return $line;
    }

    function categoriesRandomImages($categoriesMainID) {
        global $db;
        $sorgu = $db->prepare("SELECT * FROM categories WHERE categoriesMainID=? ORDER BY RAND() LIMIT 1");
        $sorgu->execute([$categoriesMainID]);
        $line = $sorgu->fetch(PDO::FETCH_ASSOC);
        return $line;
    }

}

?>