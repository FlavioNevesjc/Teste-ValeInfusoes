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
    <title>Relatórios</title>
</head>

<body>
    <h1>Relatórios</h1>
    <?php
		if(isset($_SESSION['msg'])){
			echo $_SESSION['msg'];
			unset($_SESSION['msg']);
		}
		?>
    <div class="menu">
        <a href="#beneficiarios">Relatório de beneficiário</a>
        <a href="#medicos">Relatório de Médico</a>
        <a href="#atendimento">Relatório de Local de Atendimento</a>
        <a href="#atendimento_medico">Relatório de Atendimento Médico</a>
        <a href="#atendimento_medico_top">Relatório de Atendimento Médico (mais atendidos)</a>
		<a href="index.html">Voltar</a>
    </div>
    <h2 id="beneficiarios">Beneficiários</h2>
    <table>
        <thead>
            <tr>
                <th>beneficiarioID</th>
                <th>nome</th>
                <th>data de nascimento</th>
                <th>sexo</th>
            </tr>
        </thead>
        <tbody>

            <?php
					$query = "SELECT beneficiarioID, nome, dataDeNascimento, sexo FROM beneficiario ORDER BY nome ASC";
					$resultado_beneficiarios = mysqli_query($comunicacao, $query);
					while ($row_beneficiario = mysqli_fetch_assoc($resultado_beneficiarios)){ ?>
            <tr>
                <td><?php echo $row_beneficiario['beneficiarioID']; ?> </td>
                <td><?php echo $row_beneficiario['nome']; ?> </td>
                <td><?php echo date('d/m/Y',strtotime($row_beneficiario['dataDeNascimento'])); ?> </td>
                <td><?php if ($row_beneficiario['sexo'] == 'M'){ 
							echo 'Masculino';
					   	} else {
							echo 'Feminino';
						 } ?></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>

    <h2 id="medicos">Medico</h2>
    <table>
        <thead>
            <tr>
                <th>MedicoID</th>
                <th>nome</th>
                <th>CRM</th>
                <th>data de nascimento</th>
            </tr>
        </thead>
        <tbody>

            <?php
					$query = "SELECT medicoID, nome, crm, dataDeNascimento FROM medico ORDER BY nome ASC";
					$resultado_medicos = mysqli_query($comunicacao, $query);
					while ($row_medico = mysqli_fetch_assoc($resultado_medicos)){ ?>
            <tr>
                <td><?php echo $row_medico['medicoID']; ?> </td>
                <td><?php echo $row_medico['nome']; ?> </td>
                <td><?php echo $row_medico['crm']; ?> </td>
                <td><?php echo date('d/m/Y',strtotime($row_medico['dataDeNascimento'])); ?> </td>
            </tr>
            <?php } ?>
        </tbody>
    </table>

    <h2 id="atendimento">Local de Atendimento</h2>
    <table>
        <thead>
            <tr>
                <th>localID</th>
                <th>Endereco</th>
                <th>Médico</th>
                <th>Especalidade</th>
            </tr>
        </thead>
        <tbody>

            <?php
					$query = "SELECT L.localID, L.endereco, M.nome, E.especialidade
					FROM localatendimento AS L
					JOIN medico AS M
					ON 
					L.medicoID_F = M.medicoID
					JOIN especialidade AS E
					ON
					L.especialidadeID_F = E.especialidadeID";
					$resultado_localatendimentos = mysqli_query($comunicacao, $query);
					while ($row_localatendimento = mysqli_fetch_assoc($resultado_localatendimentos)){ ?>
            <tr>
                <td><?php echo $row_localatendimento['localID']; ?> </td>
                <td><?php echo $row_localatendimento['endereco']; ?> </td>
                <td><?php echo $row_localatendimento['nome']; ?> </td>
                <td><?php echo $row_localatendimento['especialidade']; ?> </td>
            </tr>
            <?php } ?>
        </tbody>
    </table>

    <h2 id="atendimento_medico">Atendimento Médico</h2>
    <table>
        <thead>
            <tr>
                <th>Beneficiario</th>
                <th>Especialidade</th>
                <th>Médico</th>
                <th>Local</th>
                <th>Procedimento</th>
                <th>Data</th>
            </tr>
        </thead>
        <tbody>

            <?php
					$query ="SELECT B.nome, E.especialidade, M.nome AS medico, L.endereco, P.TipoDeProcedimento, AM.data 
					FROM atendimentomedico as AM 
					JOIN beneficiario AS B
					ON
					AM.beneficiarioID_F = B.beneficiarioID
					JOIN especialidade AS E
					ON
					AM.especialidadeID_F = E.especialidadeID
					JOIN medico AS M
					ON
					AM.medicoID_F = M.medicoID
					JOIN localatendimento AS L
					ON
					AM.localID_F = L.localID
					JOIN procedimento AS P
					ON
					AM.procedimentoID_F = P.procedimentoID";
					$resultado_atendimentosMedico = mysqli_query($comunicacao, $query);
					while ($row_atendimentoMedico = mysqli_fetch_assoc($resultado_atendimentosMedico)){ ?>
            <tr>
                <td><?php echo $row_atendimentoMedico['nome']; ?> </td>
                <td><?php echo $row_atendimentoMedico['especialidade']; ?> </td>
                <td><?php echo $row_atendimentoMedico['medico']; ?> </td>
                <td><?php echo $row_atendimentoMedico['endereco']; ?> </td>
                <td><?php echo $row_atendimentoMedico['TipoDeProcedimento']; ?> </td>
                <td><?php echo date('d/m/Y',strtotime($row_atendimentoMedico['data'])); ?> </td>

            </tr>
            <?php } ?>
        </tbody>
    </table>

    <h2 id="atendimento_medico_top">Atendimento Médicos (Ordenando os mais atendidos)</h2>
    <table>
        <thead>
            <tr>
                <th>Beneficiario</th>
                <th>Especialidade</th>
                <th>Médico</th>
                <th>Local</th>
                <th>Procedimento</th>
                <th>Data</th>
            </tr>
        </thead>
        <tbody>

            <?php
					$query ="SELECT DISTINCT B.nome, E.especialidade, M.nome AS medico, L.endereco, P.TipoDeProcedimento, AM.data 
					FROM atendimentomedico as AM 
					JOIN beneficiario AS B
					ON
					AM.beneficiarioID_F = B.beneficiarioID
					JOIN especialidade AS E
					ON
					AM.especialidadeID_F = E.especialidadeID
					JOIN medico AS M
					ON
					AM.medicoID_F = M.medicoID
					JOIN localatendimento AS L
					ON
					AM.localID_F = L.localID
					JOIN procedimento AS P
					ON
					AM.procedimentoID_F = P.procedimentoID
					ORDER BY B.nome ASC";
					$resultado_atendimentosMedico = mysqli_query($comunicacao, $query);
					while ($row_atendimentoMedico = mysqli_fetch_assoc($resultado_atendimentosMedico)){ ?>
            <tr>
                <td><?php echo $row_atendimentoMedico['nome']; ?> </td>
                <td><?php echo $row_atendimentoMedico['especialidade']; ?> </td>
                <td><?php echo $row_atendimentoMedico['medico']; ?> </td>
                <td><?php echo $row_atendimentoMedico['endereco']; ?> </td>
                <td><?php echo $row_atendimentoMedico['TipoDeProcedimento']; ?> </td>
                <td><?php echo date('d/m/Y',strtotime($row_atendimentoMedico['data'])); ?> </td>

            </tr>
            <?php } ?>
        </tbody>
    </table>




</body>

</html>