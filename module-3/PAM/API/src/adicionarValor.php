<?php
header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-Requested-With");
header('Access-Control-Allow-Credentials: true');
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With'); 
header('Content-Type: application/json; charset=utf-8, text/plain ');  

include 'conexao.php';

$dados = file_get_contents('php://input');
$array = json_decode($dados);

// desempacotando valores a serem adicionados a um determinado registro do banco
$recebe_data =  $array->data;
$recebe_idUsuario = $array->idUsuario;
$recebe_titulo = $array->titulo;
$recebe_descricao = $array->descricao;
$recebe_valor = $array->valor;
$recebe_tipo = $array->tipo;

// se nenhuma data foi especificada
if($recebe_data != ''){
  // adicionando novos dados a um determinado registro ($recebe_idUsuario)
  $inserir = $conexao->query("
    INSERT INTO tab_Valor(id_user, addData, titulo, descricao, valor, tipo) 
    VALUES ('$recebe_idUsuario','$recebe_data', '$recebe_titulo', '$recebe_descricao', '$recebe_valor', '$recebe_tipo')
  ");
  $resposta = array('Resp'=> '0');
} else {
  $resposta = array('Resp' => '1');
}

ob_clean();
echo json_encode($resposta);
?>
