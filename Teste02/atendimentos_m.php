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
    <title>Cadastro de Atendimento Médicos</title>
</head>

<body>
    <h1>Cadastro de Atendimento Médicos</h1>
    <?php
		if(isset($_SESSION['msg'])){
			echo $_SESSION['msg'];
			unset($_SESSION['msg']);
		}
		?>
    <form method="POST" action="gravando.php">
        <input type="hidden" name="tipo" value="am">
        <fieldset>
            <legend> Atendimentos </legend>
            <label>Beneficiario:<br>
                <select name="beneficiarioID_F">
                    <option value="null">Selecione o Beneficiário</option>
                    <?php
								$query = "SELECT beneficiarioID, nome FROM beneficiario ORDER BY nome ASC";
								$resultado_beneficiarios = mysqli_query($comunicacao, $query);
								while ($row_beneficiario = mysqli_fetch_assoc($resultado_beneficiarios)){ ?>
                    <option value="<?php echo $row_beneficiario['beneficiarioID'] ?>">
                        <?php echo $row_beneficiario['nome'] ?> </option>
                    <?php } ?>
                </select>
            </label>

            <label>Especialidade:<br>
                <select name="especialidadeID_F">
                    <option value="null">Selecione a Especialidade</option>
                    <?php
								$query = "SELECT especialidadeID, especialidade FROM especialidade ORDER BY especialidade ASC";
								$resultado_especialidades = mysqli_query($comunicacao, $query);
								while ($row_especialidade = mysqli_fetch_assoc($resultado_especialidades)){ ?>
                    <option value="<?php echo $row_especialidade['especialidadeID'] ?>">
                        <?php echo $row_especialidade['especialidade'] ?> </option>
                    <?php } ?>
                </select>
            </label>

            <label>Médico:<br>
                <select name="medicoID_F">
                    <option value="null">Selecione um médico</option>
                    <?php
								$query = "SELECT medicoID, nome FROM medico ORDER BY nome ASC";
								$resultado_medicos = mysqli_query($comunicacao, $query);
								while ($row_medico = mysqli_fetch_assoc($resultado_medicos)){ ?>
                    <option value="<?php echo $row_medico['medicoID'] ?>"> <?php echo $row_medico['nome'] ?> </option>
                    <?php } ?>
                </select>
            </label>

            <label>Local:<br>
                <select name="localID_F">
                    <option value="null">Selecione o local</option>
                    <?php
								$query = "SELECT localID, endereco FROM localAtendimento ORDER BY endereco ASC";
								$resultado_locais = mysqli_query($comunicacao, $query);
								while ($row_local = mysqli_fetch_assoc($resultado_locais)){ ?>
                    <option value="<?php echo $row_local['localID'] ?>"> <?php echo $row_local['endereco'] ?> </option>
                    <?php } ?>
                </select>
            </label>

            <label>Procedimento:<br>
                <select name="procedimentoID_F">
                    <option value="null">Selecione o procedimento</option>
                    <?php
								$query = "SELECT procedimentoID, TipoDeProcedimento FROM procedimento ORDER BY TipoDeProcedimento ASC";
								$resultado_procedimentos = mysqli_query($comunicacao, $query);
								while ($row_procedimento = mysqli_fetch_assoc($resultado_procedimentos)){ ?>
                    <option value="<?php echo $row_procedimento['procedimentoID'] ?>">
                        <?php echo $row_procedimento['TipoDeProcedimento'] ?> </option>
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