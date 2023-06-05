<?php
  /*
  > MIME base64 ~ um grupo de esquemas de codificacao similares a texto para binario
  > que preresenta um dado binario no formado de caracteres ASCII, traduzindo isso em uma 
  > representacao radix-64
  */

  // especificando o caminho para aonde salvar a imagem (caso tenha)
  $pathUpload = "../Imagens/";
  // imagem decodificada de base64 para binario 
  $binaryData = base64_decode($fotobase64, true);

  if (!$binaryData){
    // codificar imagem em base64 antes de inserir para o banco
    $encondeData = base64_encode(file_get_contents($fotobase64));
    // revertendo o processo anterior
    $binaryData = base64_decode($encondeData);
  }
  
  // movendo a representacao do arquivo .jpg para o caminho especificado em $pathUpload
  return file_put_contents($pathUpload .  $nameImagen.".jpg", $binaryData);
?>
