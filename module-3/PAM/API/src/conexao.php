<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With'); 
header('Content-Type: application/json; charset=utf-8'); 

$usuario = 'root';
$senha = '';

// tentando realizar uma conexao
try{
  $conexao = new PDO("mysql:host=localhost;dbname=organizze;charset=utf8",$usuario,$senha);
  echo 'Conexão realizada com sucesso!!';
  ob_clean();
} catch(PDOException $e){
  // se a conexao nao tiver sido bem sucessidade, exibir mensagem de erro (PDOException)
  echo $e->getMessage();
  echo 'Conexão com Problemas!!';
}
?>
