<?php 

class products {
    public $count;
    function productsList($categoriesID, $start) {
        global $db;
        $sorgu = $db->prepare("SELECT SQL_CALC_FOUND_ROWS * FROM products WHERE categoriesID=? LIMIT $start, 6");
        $sorgu->execute([$categoriesID]);
        $line = $sorgu->fetchAll(PDO::FETCH_ASSOC);
        $count = $db->query("SELECT FOUND_ROWS() AS toplam");
        $lineCount = $count->fetch(PDO::FETCH_ASSOC);
        $this->count = $lineCount['toplam'];
        return $line;
    }

    function productsFindID($ID) {
        global $db;
        $sorgu = $db->prepare("SELECT * FROM products WHERE ID=?");
        $sorgu->execute([$ID]);
        $line = $sorgu->fetch(PDO::FETCH_ASSOC);
        return $line;
    }

}

?>