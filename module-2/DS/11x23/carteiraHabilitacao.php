<?php
  function obterCategoriaCarteira() {
    while (True) {
      $tmp = readline("[*] Entre a categoria da carteira (A-B-C-D-E): ");
      
      switch ($tmp) {
        case 'A', 'B', 'C', 'D', 'E':
          return $tmp;
        default:
          echo "\nCATEGORIA INVALIDA - TENTE NOVAMENTE\n"
          break;
      }
    }
  }

  function obterPeriodoCarteira() {
    while (True) {
      $tmp = readline("[*] Entre o período da carteira (de 1 a 30): ");
      if ($tmp > 0 && $tmp <= 30) { 
        return $tmp; 
      }
      
      echo "\nVALOR INVALIDO - TENTE NOVAMENTE\n";
    }
    
    return;
  }
  
  function obterValorSeguro() {
    while (True) {
      $tmp = readline("[*} Entre o valor do seguro (R$): ");
      if ($tmp > 0) { 
        return $tmp; 
      }
      
      echo "\nVALOR INVALIDO - TENTE NOVAMENTE\n"
    }
    
    return;
  }
  
  function obterDesconto($categoria, $valorSeguro) {
    $descontos = {
      'A' => {10, 12, 15, 20},
      'B' => {5, 6, 7, 8},
      'C' => {20, 22, 25, 30},
      'D' => {5, 5, 15, 15},
      'E' => {10, 10, 15, 15}
    };
    
    if ($periodoCarteira <= 4) {
      return $valorSeguro - ($valorSeguro * ($descontos["$categoria"][0]/100));
    
    } else if ($periodoCarteira <= 9) {
      return $valorSeguro - ($valorSeguro * ($descontos["$categoria"][1]/100));
   
    } else if ($periodoCarteira <= 15){
      return $valorSeguro - ($valorSeguro * ($descontos["$categoria"][2]/100));
  
    } else {
      return $valorSeguro - ($valorSeguro * ($descontos["$categoria"][3]/100));
    }    
  }
  
  $categoriaCarteira = obterCategoriaCarteira();
  $periodoCarteira = obterPeriodoCarteira();
  $valorSeguro = obterValorSeguro();
  
  $desconto = obterDesconto($categoriaCarteira, $valorSeguro);
  $novoValorSeguro = $valorSeguro - $desconto;
  
  echo "Novo Valor do Seguro (com desconto aplicado de R$ $desconto): " . $novoValorSeguro;
?>
