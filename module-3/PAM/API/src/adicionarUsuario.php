<?php
/*
- funcao ´header()´ >> envia um *cabecalho HTTP bruto*, ou seja, sem estar encriptado/codificado
- CORS: Cross-Origin Resource Sharing (compartilhamento de recursos de origens diferentes)
*/

// delimita quais origens (domínios) as requests são autorizadas
header('Access-Control-Allow-Origin: *');
// delimita quais cabecalhos adicionais são enviados durante a solicitacao CORS
header('Access-Control-Allow-Headers: Content-Type, Authorization, X-Requested-With'); 
// diz ao browser se e permitido expor (true) a resposta da requisicao ao front-end (codigo js) ou nao (false) 
header('Access-Control-Allow-Credentials: true');
// especifica quais metodos de solicitacao sao permitidos
header('Access-Control-Allow-Methods: POST, GET, OPTIONS');
// define quais sao os tipos de conteudo permitidos durante a comunicacao entre o front e o back (API)
header('Content-Type: application/json; charset=utf-8, text/plain ');  

// 'importa' o arquivo conexao.php, de modo a ser carregado juntamente ao arquivo php atual
include 'conexao.php';

// puxa os dados da entrada (do ionic), enviada pelo usuario
$dados = file_get_contents('php://input');

// decodifica os dados, que inicialmente estao em formato json (key => value)
$array = json_decode($dados);
$recebe_email =  $array  ->email;
$recebe_senha = $array  ->senha;
$recebe_nome = $array  ->nome;
$recebe_sobreNome = $array  ->sobrenome;
$recebe_telefone = $array  ->telefone;
$recebe_sexo = $array  ->sexo;
$recebe_nasc = $array  ->nasc;
$recebe_cep = $array  ->cep;
$recebe_endereco = $array  ->endereco;
$recebe_numero = $array  ->numero;
$recebe_complemento = $array  ->complemento;
$recebe_bairro = $array  ->bairro;
$recebe_cidade = $array  ->cidade;
$fotobase64 = $array  ->foto;

// realiza uma consulta no banco conectado (em conexao.php) para selecionar todos os registros que possuem o mesmo email que $recebe_email
$consulta = $conexao->query("SELECT * FROM tab_user WHERE email='$recebe_email'");

// verifica se algum registro foi encontrado
if ($consulta->rowCount()==0) {
  // checa se o usuario tambem inseriu uma imagem para o cadastro
  if(!empty($fotobase64)){
    $nameImagen= md5(time());
    include 'uploadFoto.php';
  }
  // realiza a insercao de um novo cadastro
  $date = date('Y-m-d');
  $inserir = $conexao->query(
    "INSERT INTO tab_user (dataCadastro, email, senha, nome, sobrenome, telefone, sexo, nasc, cep, endereco, numero, complemento, bairro, cidade, imagem, receitaTotal) 
     VALUES ('$date', '$recebe_email', '$recebe_senha', '$recebe_nome', '$recebe_sobreNome', '$recebe_telefone', '$recebe_sexo', '$recebe_nasc', 
    '$recebe_cep', '$recebe_endereco', '$recebe_numero', '$recebe_complemento', '$recebe_bairro', '$recebe_cidade', '$nameImagen', 0)"
  );
  
  $resposta = array('Resp'=> '0' );
}else{
  // usuario ja cadastrado com o email informado, portanto nao e possivel fazer cadastro com o email especificado
  $resposta = array('Resp'=> '1'  );
}

// limpa o buffer de saida (meio/ponte de comunidacao entre o front e o back, a partir da passagem de dados)
ob_clean();
// codifica a mensagem em json para o front-end
echo json_encode($resposta);
?>

