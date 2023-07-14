<?php
session_start();
include_once("link_banco.php");

$tipo              = filter_input(INPUT_POST, 'tipo', FILTER_SANITIZE_STRING);
$nome              = filter_input(INPUT_POST, 'nome', FILTER_SANITIZE_STRING);
$dataNascimento    = filter_input(INPUT_POST, 'dataNascimento', FILTER_SANITIZE_STRING);
$sexo              = filter_input(INPUT_POST, 'sexo', FILTER_SANITIZE_STRING);
$crm               = filter_input(INPUT_POST, 'crm', FILTER_SANITIZE_STRING);
$especialidade     = filter_input(INPUT_POST, 'especialidade', FILTER_SANITIZE_STRING);
$cbos              = filter_input(INPUT_POST, 'cbos', FILTER_SANITIZE_STRING);
$endereco          = filter_input(INPUT_POST, 'endereco', FILTER_SANITIZE_STRING);
$medicoID_F        = filter_input(INPUT_POST, 'medicoID_F', FILTER_SANITIZE_STRING);
$especialidadeID_F = filter_input(INPUT_POST, 'especialidadeID_F', FILTER_SANITIZE_STRING);
$beneficiarioID_F  = filter_input(INPUT_POST, 'beneficiarioID_F', FILTER_SANITIZE_STRING);
$localID_F         = filter_input(INPUT_POST, 'localID_F', FILTER_SANITIZE_STRING);
$procedimentoID_F  = filter_input(INPUT_POST, 'procedimentoID_F', FILTER_SANITIZE_STRING);

switch ($tipo) {
	case 'b':
		$insert  = "INSERT INTO beneficiario (nome, dataDeNascimento, sexo) VALUES ('$nome', '$dataNascimento', '$sexo')";
		$docmsg = "beneficiarios.php";
	break;
	case 'm':
		$insert = "INSERT INTO medico (nome, crm, dataDeNascimento) VALUES ('$nome', '$crm', '$dataNascimento')";
		$docmsg = "medicos.php";
	break;
	case 'e':
		$insert = "INSERT INTO especialidade (especialidade, cbos) VALUES ('$especialidade', '$cbos')";
		$docmsg = "especialidades.php";
	break;
	case 'al':
		$insert = "INSERT INTO localatendimento (endereco, medicoID_F, especialidadeID_F) VALUES ('$endereco', '$medicoID_F', '$especialidadeID_F')";
		$docmsg = "atendimentos_l.php";
	break;	
	case 'am':
		$insert = "INSERT INTO atendimentoMedico (beneficiarioID_F, especialidadeID_F, medicoID_F, localID_F, procedimentoID_F, data) VALUES ('$beneficiarioID_F', '$especialidadeID_F','$medicoID_F', '$localID_F', '$procedimentoID_F', NOW())";
		$docmsg = "atendimentos_m.php";
	break;		
}

$resultado = mysqli_query($comunicacao, $insert);

if(mysqli_insert_id($comunicacao)){
	$_SESSION['msg'] = "<p style='color:green;'>Cadastrado com sucesso</p>";
	header("Location: $docmsg");
}else{
	$_SESSION['msg'] = "<p style='color:red;'>Erro!! Cadastro não realizado</p>";
	header("Location: $docmsg");
}