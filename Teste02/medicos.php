<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Cadastrar Médico</title>
</head>

<body>
    <h1>Cadastrar Médico</h1>
    <?php
		if(isset($_SESSION['msg'])){
			echo $_SESSION['msg'];
			unset($_SESSION['msg']);
		}
		?>
    <form method="POST" action="gravando.php">
        <input type="hidden" name="tipo" value="m">
        <fieldset>
            <legend> Dados do Pessoais </legend>
            <label>Nome Completo:<br>
                <input type="text" name="nome" placeholder="Nome do Médico" required ></label>

            <label>CRM do Médico:<br>
                <input type="text" name="crm" placeholder="CRM" required ></label>

            <label>Data de Nascimento:<br>
                <input type="date" name="dataNascimento" required ></label>
        </fieldset>
        <br><br>
        <input type="submit" value="Cadastrar">
    </form>
	<br><br>
	<a href="index.html">voltar</a>
</body>

</html>