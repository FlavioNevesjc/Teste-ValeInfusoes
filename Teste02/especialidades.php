<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Cadastro de Especialidade</title>
</head>

<body>
    <h1>Cadastro de Especialidade</h1>
    <?php
		if(isset($_SESSION['msg'])){
			echo $_SESSION['msg'];
			unset($_SESSION['msg']);
		}
		?>
    <form method="POST" action="gravando.php">
        <input type="hidden" name="tipo" value="e">
        <fieldset>
            <legend> Especialidade </legend>
            <label>Especialidade:<br>
                <input type="text" name="especialidade" placeholder="Nome da Especialidade" required ></label>

            <label>CBO:<br>
                <input type="text" name="cbos" placeholder="CBO" required ></label>
        </fieldset>
        <br><br>
        <input type="submit" value="Cadastrar">
    </form>
	<br><br>
	<a href="index.html">voltar</a>
</body>

</html>