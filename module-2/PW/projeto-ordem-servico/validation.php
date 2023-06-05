<?php
    function messageCheckFor($text, $subject) {
        echo "<span class='status'>[...]</span> Checando " . $text . " inserido(a): " . $subject . "<br/>";
        return;
    }
    function standardRegularExpression($value) {
        return preg_replace("/[^a-zA-Z-' ]/", "", $value);
    }
    function cleanPhoneNumber($phoneNum) {
        $cleanPhoneNumber = preg_replace("/[^0-9]/", "", $phoneNum);
        return $cleanPhoneNumber;
    }
    function standardCleaning($subject, $warnMessage, $cleaningMessageFor="", $constraintMessage="Somente letras e espaços em branco são permitidos!"){
        $standardPattern = "/[^0-9a-zA-Z-' ]*$/";
        $cleanValue = $subject;
        if (!preg_match($standardPattern, $subject)) {
            echo "<span class='status'>[!]</span> <span class='bad-operation'>" . $warnMessage . ": " . $constraintMessage . "</span><br/>";
            echo "<span class='status'>[...]</span> Limpando " . $subject . " " . $cleaningMessageFor . "<br/>";
            $cleanValue = standardRegularExpression($subject);
            echo "<span class='status'>[*]</span> <span class='perfomed-operation'>" . $subject . " convertido para " . $cleanValue . "</span><br/>"; 
        }
        return $cleanValue;
    }
    function verifyUsername() {
        $subject = $_POST["username"];
        messageCheckFor("nome", $subject);
        $newUsername = standardCleaning($subject, "NOME INVALIDO", "para um valor válido");
        echo "<span class='status'>[*]</span> <span class='perfomed-operation'>Nome VALIDADO com sucesso!</span><br/><br/>";

        return $newUsername;
    }
    function verifyPhoneNumber() {
        $pattern = "/^[0-9]{9}+$/";
        $subject = $_POST["phone-number"];

        messageCheckFor("nº de telefone", $subject);
        if (!preg_match($pattern, $subject)) {
            echo "<span class='status'>[!]</span> <span class='bad-operation'>Nº TELEFONE INVALIDO: Somente numeros de 0 a 9 sao permitidos!</span><br/>";
            echo "<span class='status'>[...]</span> Limpando " . $subject . "<br/>";
            $subject = cleanPhoneNumber($subject);
            echo "<span class='status'>[*]</span> <span class='perfomed-operation'>" . $_POST["phone-number"] . " convertido para " . $subject . "</span><br/>";

            echo "<span class='bad-operation'>[!] NAO SERA POSSIVEL CONTINUAR - Mensagem de ERRO: Numero de telefone filtrado nao atende aos requisitos esperados! variavel:'phone-number' / valor: $subject / comprimento esperado: 9 / comprimento atual: " . strlen(strval($subject)) . "</span><br/><br/>";
            closeScript();
        }
        echo "<span class='status'>[*]</span> <span class='perfomed-operation'>Telefone VALIDADO com sucesso!</span><br/>";
        $newPhoneNumber = "+55(11)" . (string) $subject;
        echo "<span class='status'>[*]</span> <span class='perfomed-operation'>Numero " . $subject . " atualizado para +55 (11) " . $subject . "</span><br/><br/>";

        return $newPhoneNumber;
    }
    function verifyEmail() {
        $subject = $_POST["email"];
        messageCheckFor("email", $subject);
        $newEmail = standardCleaning($subject, "EMAIL INVALIDO", "para um endereço válido");
        // $newEmail = cleanEmail($subject);
        echo "<span class='status'>[*]</span> <span class='perfomed-operation'>Email VALIDADO com sucesso!</span><br/><br/>";
        return $newEmail;
    }
    function verifyAddress() {
        $subject = $_POST["address"];
        messageCheckFor("endereço", $subject);
        $newAddress = standardCleaning($subject, "ENDEREÇO INVALIDO", "para um endereço válido");
        echo "<span class='status'>[*]</span> <span class='perfomed-operation'>Endereço VALIDADO com sucesso!</span><br/><br/>";

        return $newAddress;
    }
    function verifyDeviceType() {
        $pattern = "/^[a-zA-Z' ]*$/";
        $subject = $_POST["device-type"];
        $validDevices = ["smartphone", "pc", "computador", "computer", "tablet", "celular", "telefone", "phone", "televisao", "notebook", "ultrabook", "netbook", "laptop", "smartwatch", "console", "videogame"];
        messageCheckFor("tipo de dispositivo", $subject);
        $newDeviceType = standardCleaning($subject, "TIPO DE DISPOSITIVO INVALIDO");
        echo "<span class='status'>[...]</span> Procurando por '" . $newDeviceType . "' no banco de dispositivos válidos<br/>";
        if (!in_array(strtolower($newDeviceType), $validDevices)) {
            echo "<span class='bad-operation'>[!] NAO SERA POSSIVEL CONTINUAR - Dispositivo não corresponde a nenhum dos tipos validos! variavel: 'device-type' / dispositivo inserido: " . $newDeviceType . "</span><br/>";
            echo "<span class='bad-operation'>[!] Lista de dispositivos disponíveis: ";
            print_r($validDevices);
            echo "</span><br/><br/>";
            closeScript();
        }
        echo "<span class='status'>[*]</span> <span class='perfomed-operation'>DISPOSITIVO ENCONTRADO E VALIDADO com sucesso!</span><br/><br/>";

        return $newDeviceType;
    }
    function verifyDeviceBrand() {
        $pattern = "/^[a-zA-Z' ]*$/";
        $subject = $_POST["device-brand"];
        $deviceBrands = ["acer", "alcatel", "allview", "amazon", "amoi", "apple", "archos", "asus", "att", "benefon", "benq", "benq-siemens", "bird", "blackberry", "blackview", "blu", "bosch", "bq", "casio", "chea", "coolpad", "dell", "doogee", "emporia", "energizer", "ericsson", "eten", "fairphone", "fujitsu siemens", "garminasus", "gigabyte", "gionee", "google", "haier", "honor", "hp", "htc", "huawei", "i-mate", "i-mobile", "icemobile", "infinix", "innostream", "inq", "intex", "iphone", "jolla", "karbonn", "kyocera", "lava", "leeco", "lenovo", "lg", "maxon", "maxwest", "meizu", "micromax", "microsoft", "mitac", "mitsubish", "modu", "motorola", "mwg", "nec", "neonode", "niu", "nokia", "nothing", "nvidia", "o2", "oneplus", "oppo", "orange", "palm", "panasonic", "pantech", "parla", "philips", "plum", "posh", "prestigio", "qmobile", "qtek", "razer", "realme", "sagem", "samsung", "sendo", "sewon", "sharp", "siemens", "sonim", "sony", "sony ericsson", "spiece", "t-mobile", "tcl", "tecno", "telme", "telit", "thuraya", "toshiba", "ulefone", "unnecto", "vertu", "verykool", "vivo", "vk mobile", "vodafone", "wiko", "wnd", "xcute", "xiaomi", "xolo", "yezz", "yota", "yu", "zte"];
        messageCheckFor("marca", $subject);
        $newDeviceBrand = standardCleaning($subject, "ALERTA"); 
        echo "<span class='status'>[...]</span> Procurando por '" . $newDeviceBrand . "' no banco de marcas válidas<br/>";
        if (!in_array(strtolower($newDeviceBrand), $deviceBrands)) {
            echo "<span class='bad-operation'>[!] NAO SERA POSSIVEL CONTINUAR - Marca não corresponde a nenhum dos tipos validos! variavel: 'device-brand' / dispositivo inserido: " . $newDeviceBrand . "</span><br/>";
            echo "<span class='bad-operation'>[!] Lista de marcas disponíveis: ";
            print_r($deviceBrands);
            echo "</span><br/><br/>";
            closeScript();
        }
        echo "<span class='status'>[*]</span> <span class='perfomed-operation'>MARCA ENCONTRADA E VALIDADA com sucesso!</span><br/><br/>";

        return $newDeviceBrand;
    }
    function verifyDeviceModel() {
        $pattern = "/^[a-zA-A' ]*$/";
	$subject = $_POST["device-model"];
        messageCheckFor("modelo", $subject);
        $newDeviceModel = standardCleaning($subject, "MODELO INVALIDO");
        echo "<span class='status'>[*]</span> <span class='perfomed-operation'>MODELO ENCONTRADO E VALIDADO com sucesso!</span><br/><br/>";

        return $newDeviceModel;
    }
    function verifySerialNum() {
        $pattern = "";
        $subject = $_POST["serial-num"];
        if (!$subject) {
            return NULL;
        }
        messageCheckFor("nº de série", $subject);
        $newSerialNum = standardCleaning($subject, "Nº DE SÉRIE INVALIDO");
        echo "<span class='status'>[*]</span> <span class='perfomed-operation'>Nº DE SÉRIE VALIDADO com sucesso!</span><br/><br/>";
        return $newSerialNum;
    }
    function verifyTextArea($textarea) {
        $subject = $textarea;
        messageCheckFor("'textarea'", $subject);
        $newTextArea = htmlspecialchars($subject, ENT_QUOTES, "UTF-8");
        echo "<span class='status'>[*]</span> <span class='perfomed-operation'>'TEXTAREA' VALIDADO com sucesso!</span><br/><br/>";
        return $newTextArea;
    }
?>
