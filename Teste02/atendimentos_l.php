<?php
session_start();
include_once("link_banco.php");
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Cadastro de Local de Atendimento</title>

</head>

<body>
    <h1>Cadastro de Local de Atendimento</h1>
    <?php
		if(isset($_SESSION['msg'])){
			echo $_SESSION['msg'];
			unset($_SESSION['msg']);
		}
		?>
    <form method="POST" action="gravando.php">
        <input type="hidden" name="tipo" value="al">
        <fieldset>
            <legend> Atendimentos </legend>
            <label>Endereço:<br>
                <input type="text" name="endereco" placeholder="Digite o endereço" required ></label>

            <label>Médico:<br>
                <select name="medicoID_F" >
                    <option value="null">Selecione um médico</option>
                    <?php
								$query = "SELECT medicoID, nome FROM medico ORDER BY nome ASC";
								$resultado_medicos = mysqli_query($comunicacao, $query);
								while ($row_medico = mysqli_fetch_assoc($resultado_medicos)){ ?>
                    <option value="<?php echo $row_medico['medicoID'] ?>"> <?php echo $row_medico['nome'] ?> </option>
                    <?php } ?>
                </select>
            </label>

            <label>Especialidade:<br>
                <select name="especialidadeID_F">
                    <option value="null">Selecione a especialidade</option>
                    <?php
								$query = "SELECT especialidadeID, especialidade FROM especialidade ORDER BY especialidade ASC";
								$resultado_especialidades = mysqli_query($comunicacao, $query);
								while ($row_especialidade = mysqli_fetch_assoc($resultado_especialidades)){ ?>
                    <option value="<?php echo $row_especialidade['especialidadeID'] ?>">
                        <?php echo $row_especialidade['especialidade'] ?> </option>
                    <?php } ?>
                </select>
            </label>
        </fieldset>
        <br><br>
        <input type="submit" value="Cadastrar">
    </form>
	<br><br>
	<a href="index.html">voltar</a>
</body>

</html>