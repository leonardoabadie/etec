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

// reatribuindo campos essenciais para o filtro no banco de dedados
$recebe_id_valor = $array->id_valor;
$recebe_dUser =  $array->dUser;
$recebe_receita = $array->receita;

// verifica se foi especificado um id referente a um registro especificado (caso contrario, invariavelmente todos os registros seriam apagados)
if($recebe_id_valor!=''){
  $conexao->query("DELETE FROM tab_valor WHERE id = $recebe_id_valor");
  $resposta = array('Resp' => '1');
}

ob_clean();
echo json_encode($resposta);
?>

