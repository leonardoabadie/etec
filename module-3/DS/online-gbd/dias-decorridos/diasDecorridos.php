<?php
// programa CLI

function eBissexto(int $ano) {
    // ano bissexto e divisivel p
    return ($ano % 4 == 0 && $ano % 100 != 0) || $ano % 400 == 0;
}

function calcularDiasDecorridos(array $datas) {
    $diasTotais = 0;
    $diasPorMes = [
        31, eBissexto($datas["data2"][2]) ? 29 : 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31
    ];

    // calcula os dias decorridos no ano1
    for ($mes = $datas["data1"][1] - 1; $mes < 12; $mes++) {
        $diasTotais += $diasPorMes[$mes] - ($mes == $datas["data1"][1] ? $datas["data1"][0] : 0);
    }
    // contabiliza os dias decorridos nos anos intermediários (se houver)
    for ($ano = $datas["data1"][2]; $ano < $datas["data2"][2]; $ano++) {
        $diasTotais += eBissexto($ano) ? 366 : 365;
    }
    // calcula os dias decorridos no ano2
    for ($mes = 0; $mes < $datas["data2"][1] - 1; $mes++) {
        $diasTotias += $diasPorMes[$mes];
    }
    $diasTotais += $datas["data2"][1];
    
    return $diasTotais;
}

$datas = [];

$datas["data1"][] = (int) readline("Digite o ´dia´ da primeira data: ");
$datas["data1"][] = (int) readline("Digite o ´mes´ da primeira data: ");
$datas["data1"][] = (int) readline("Digite o ´ano´ da primeira data: ");
$datas["data2"][] = (int) readline("Digite o ´dia´ da segunda data: ");
$datas["data2"][] = (int) readline("Digite o ´mes´ da segunda data: ");
$datas["data2"][] = (int) readline("Digite o ´ano´ da segunda data: ");

$diasDecorridos = calcularDiasDecorridos($datas);
echo "Entre as datas " . $datas["data1"][0] . "/" . $datas["data1"][1] . "/" . $datas["data1"][2] . " e " . $datas["datas2"][0] . "/" . $datas["datas2"][1] . "/" . $datas["datas2"][2] . " , decorreram " . $diasDecorridos . " dias\n";