<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro - Ordem Serviço</title>
    <style>
        *, *::before, *::after {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        body {
            background-color: #000;
            color: #fff;
            font-size: 1.2em;
        }
        h1.title {
            font-size: 1.5em;
        }
        span.status {
            color: #00ffea;
        }
        span.perfomed-operation {
            color: #99ff00;
        }
        span.bad-operation {
            color: #ff0040;
        }
        span.mysql-operation {
            color: #ff8729;
        }
        span.opening-program,
        span.exiting-program {
            color: #ffe600;
        }
    </style>
</head>
<body>
    <?php
        include "validation.php";
        
        function closeScript() {
            exit("<span class='exiting-program'>[@] Encerrando execução do Script...</span>");
        }
        
        echo "<h1 class='title'>LOG DE VALIDACAO</h1><br/>";
        echo "<span class='opening-program'>[@] Inicializando Script...</span><br/><br/>";

	$customer = verifyUsername();
        $phoneNumber = verifyPhoneNumber();
        $email = verifyEmail();
        $address = verifyAddress();
        $deviceType = verifyDeviceType();
        $deviceBrand = verifyDeviceBrand();
        $deviceModel = verifyDeviceModel();
        $serialNum = verifySerialNum();
        $deviceDescription = verifyTextArea($_POST["device-description"]);
        $customerComplaint = verifyTextArea($_POST["customer-complaint"]);
        $meetingDate = $_POST["meeting-date"];
        $returnDate = $_POST["return-date"];


        include "db_connection.php";
            
        // Inserindo um novo registro
        echo "<span class='mysql-operation'>[...] Inserindo dados validados ( cliente: $customer, telefone: $phoneNumber, email: $email, endereço: $address, data_inicial: $meetingDate, data_devolutiva: $returnDate, tipo_dispositivo: $deviceType, marca_dispositivo: $deviceBrand, modelo_dispositivo: $deviceModel, num_serie: '$serialNum', checklist_aparelho: ($deviceDescription), defeito/reclamacao: ($customerComplaint) )</span><br/>";
        $statement = $connection->prepare("INSERT INTO cliente(nome_cliente, tel_cliente, email_cliente, endereco_cliente, data_entrada_cliente, data_devolutiva_cliente, tipo_aparelho_cliente, marca_aparelho_cliente, modelo_aparelho_cliente, serial_aparelho_cliente, reclamacao_cliente, especificacao_aparelho_cliente) VALUES('$customer', '$phoneNumber', '$email', '$address', '$meetingDate', '$returnDate', '$deviceType', '$deviceBrand', '$deviceModel', '$serialNum', '$deviceDescription', '$customerComplaint')");
        $statement->execute();
        echo "<span class='mysql-operation'>[*] Consulta Efetuada com Sucesso!</span><br/>";
        echo "<span class='mysql-operation'>[...] Desconectando banco</span><br/>";
        $connection = NULL;
        echo "<span class='mysql-operation'>[*] Desconectado!</span><br/><br/>";

        closeScript();
    ?>
</body>
