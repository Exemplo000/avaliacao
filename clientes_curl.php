<?php

$nome = $_POST["pac"];

$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, "http://192.168.0.10:8080/avaliacao/clientes_db.php");
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_POSTFIELDS, "nome=". $nome);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

$res = curl_exec($ch);
curl_close ($ch);

echo($res);

?>