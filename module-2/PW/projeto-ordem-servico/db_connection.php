<?php
        $servername = "127.0.0.1";
        $port="3306";
        $username = "root";
        $password = "";
        $database = "teccell";
        
        echo "<span class='mysql-operation'>[...] Tentando se conectar com banco de dados</span><br/>";
        try {
            $connection = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
            echo "<span class='mysql-operation'>[*] Conexão Bem Sucedida!</span><br/>";
        
        } catch (PDOException $exception) {
            echo "<span class='status'>[!]</span> <span class='bad-operation'>Conexão Falhou - ERRO: </span><br/>" . $exception->getMessage();
        }
            
?>
