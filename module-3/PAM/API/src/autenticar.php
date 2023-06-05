<?php
header('Content-type: application/json');
header('Access-Control-Allow-Origin:*');

include 'conexao.php';

$dados = file_get_contents('php://input');
$array = json_decode($dados);

// reatribuindo os campos essenciais para a autenticacao de um usuario
$recebe_email = $array->email;
$recebe_senha = $array->senha;

// busca todos os registos que possuam tanto $recebe_email e $recebe_senha
$consulta = $conexao->query("SELECT * FROM tab_user WHERE email='$recebe_email' AND senha='$recebe_senha'");

// verifica se foi encontrado algum registro
if ($consulta->rowCount()==0) { 
  // se nao houver, autenticacao falhada
  $resposta = array('Resp'=> '0');

}else {
  // autenticacao realizada com sucesso, salvando dados em $array para exibicao em json
  $exibe=$consulta->fetch(PDO::FETCH_ASSOC);
  $resposta = array(
    'Resp'=> '1',
    'id' => $exibe['idUser'],
    'email' => $exibe['email'],
    'senha' => $exibe['senha'],
    'nome' => $exibe['nome'],
    'sobrenome' => $exibe['sobrenome'],
    'telefone' => $exibe['telefone'],
    'sexo' => $exibe['sexo'],
    'nasc' => $exibe['nasc'],
    'cep' => $exibe['cep'],
    'endereco' => $exibe['endereco'],
    'numero' => $exibe['numero'],
    'complemento' => $exibe['complemento'],
    'bairro' => $exibe['bairro'],
    'cidade' => $exibe['cidade'],
    'imagem' => $exibe['imagem'],
    'receita' => $exibe['receitaTotal']
  );
}

ob_clean();
echo json_encode($resposta);
?>
