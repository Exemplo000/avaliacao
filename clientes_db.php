<?php
class SQL {

    function __construct(){
		$o = mysql_connect("127.0.0.1", "root", ""); 
	
		if($o == false){
			return false;
		}

		$t = mysql_select_db("avaliacao");
	}
	
	function obterResultados($querie, $colunas){
		$querieSQL = mysql_query($querie);
		
		$nLinhas = mysql_num_rows($querieSQL) or die(mysql_error());
		$nColunas = count($colunas);
		$tamanhoTotal = $nLinhas * $nColunas;
		
		$resultados = array();
		$c = 0;
		$next = 0;
		
		while($tamanhoTotal != $next){
			$res = mysql_fetch_array($querieSQL);
			
			for($i = 0; $i < $nColunas; $i++){
				$resultados[$i + $c * $nColunas] = utf8_encode($res[$colunas[$i]]); //SOLUCAO PRO ACENTO
			}
			
			$c++;
			$next = $next + $nColunas;
		}
		
		return $resultados;
	}
}

$sqlObj = new SQL;
$res = $sqlObj->obterResultados("SELECT cli_nome, cli_idade, cli_telefone, cli_endereco, cli_categoria FROM tbl_clientes WHERE cli_nome LIKE '%". $_POST["nome"] ."%'", array("cli_nome", "cli_idade", "cli_telefone", "cli_endereco", "cli_categoria"));

for($i = 0; $i < count($res); $i = $i + 5){
	$res[$i + 4] = $sqlObj->obterResultados("SELECT cat_nome FROM tbl_categorias WHERE cat_id = '". $res[$i + 4] ."'", array("cat_nome"))[0];
}

echo json_encode($res);
?>