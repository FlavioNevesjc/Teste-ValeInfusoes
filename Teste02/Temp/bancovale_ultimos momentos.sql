-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/07/2023 às 21:37
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bancovale`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `atendimentomedico`
--

CREATE TABLE `atendimentomedico` (
  `beneficiarioID_F` int(11) DEFAULT NULL,
  `especialidadeID_F` int(11) DEFAULT NULL,
  `medicoID_F` int(11) DEFAULT NULL,
  `localID_F` int(11) DEFAULT NULL,
  `procedimentoID_F` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atendimentomedico`
--

INSERT INTO `atendimentomedico` (`beneficiarioID_F`, `especialidadeID_F`, `medicoID_F`, `localID_F`, `procedimentoID_F`, `data`) VALUES
(7, 21, 9, 3, 49, NULL),
(98, 6, 14, 3, 1, '2023-07-13'),
(101, 91, 5, 2, 36, '2023-07-13'),
(92, 66, 71, 1, 75, '2023-07-13'),
(97, 84, 96, 2, 10, '2023-07-13'),
(74, 148, 78, 5, 5, '2023-07-13'),
(74, 148, 78, 1, 5, '2023-07-13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `beneficiario`
--

CREATE TABLE `beneficiario` (
  `beneficiarioID` int(11) NOT NULL,
  `nome` char(255) DEFAULT NULL,
  `dataDeNascimento` date DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `beneficiario`
--

INSERT INTO `beneficiario` (`beneficiarioID`, `nome`, `dataDeNascimento`, `sexo`) VALUES
(1, 'ANDRE DA COSTA PASSOS', '2015-03-02', 'M'),
(2, 'ANDRE DOMINGUES', '2022-09-01', 'M'),
(3, 'ANDRÉ DUARTE LOPES', '2022-06-01', 'M'),
(4, 'ANDRE FONSECA DI SPIRITO', '2023-05-25', 'M'),
(5, 'ANDRE GLATT', '2018-01-01', 'M'),
(6, 'ANDRE GONÇALVES DA SILVA', '2019-02-01', 'M'),
(7, 'ANDRE LUCIO DE FRANÇA', '2019-10-10', 'M'),
(8, 'ANDRÉ LUIZ ARAÚJO TEIXEIRA', '2021-05-01', 'M'),
(9, 'ANDRE LUIZ DA COSTA VICENTE', '2022-04-01', 'M'),
(10, 'ANDRE LUIZ DA SILVA DAMASCENO', '2021-01-01', 'M'),
(11, 'ANDRE LUIZ DOS SANTOS BELLONI', '2007-03-16', 'M'),
(12, 'ANDRE LUIZ FONSECA ALVES', '1985-03-21', 'M'),
(13, 'ANDRE LUIZ FREITAS BASTIANA', '2022-11-01', 'M'),
(14, 'ANDRE LUIZ MONTEIRO RODRIGUES', '2023-05-01', 'M'),
(15, 'ANDRE LUIZ RAMOS DE SOUZA', '2018-09-20', 'M'),
(16, 'ANDRE SAMPAIO SANTOS', '2017-01-01', 'M'),
(17, 'ANDRE STEFANO BUENO VIEIRA', '2021-06-07', 'M'),
(18, 'ANDRE VINICIUS AZEVEDO DA SILVA', '2018-08-31', 'M'),
(19, 'ANDREA APARECIDA FRANKLIN DE BRITO', '2023-05-01', 'F'),
(20, 'ANDREA DE ARAUJO CASSA', '2022-10-03', 'F'),
(21, 'ANDREA DE ARAUJO NOGUEIRA', '2018-08-27', 'F'),
(22, 'ANDREA LUCIA COELHO', '2017-01-01', 'F'),
(23, 'ANDREA VIANNA PARR LOPES', '2009-09-23', 'F'),
(24, 'ANDREA VIRGINIA RODRIGUES PENNA', '1987-11-01', 'F'),
(25, 'ANDREIA AGRESTA CORREA', '2015-06-26', 'F'),
(26, 'ANDREIA CRISTINA REZENDE MARINHO DE SOUZA', '2019-01-01', 'F'),
(27, 'ANDREIA FERREIRA DE MENEZES LIMA', '2021-01-01', 'F'),
(28, 'ANDRESSA CRISTINA TAKETA DE LIMA', '2015-03-02', 'F'),
(29, 'ANDRESSA DOS SANTOS TAVEIRA AMADOR', '2023-07-01', 'F'),
(30, 'ANDREY DE PAIVA TEIXEIRA', '2023-01-01', 'F'),
(31, 'ANDREZA CRISTINA REIS ALVES GASPAR', '2021-09-15', 'F'),
(32, 'ANDREZZA NAIR TEIXEIRA BORGES FERREIRA', '2021-01-01', 'F'),
(33, 'ANETE RIBEIRO LESSA', '2018-04-01', 'F'),
(34, 'ANGELA CRISTINA DE O. C. DE ALCANTARA', '2020-04-01', 'F'),
(35, 'ANGELA DOS SANTOS CARNEIRO', '2023-07-01', 'F'),
(36, 'ANGELA MARIA RIBEIRO DE ALMEIDA LEMOS', '1985-04-10', 'F'),
(37, 'ANGELA NERES DE CASTRO LOPES', '2018-04-05', 'F'),
(38, 'ANGELINA CONCEIÇÃO DE JESUS BRAGA', '2018-02-08', 'F'),
(39, 'ANGELINA DE BARROS FERREIRA', '2015-07-01', 'F'),
(40, 'ANGELITA SERRA VALLADÃO', '2019-02-01', 'F'),
(41, 'ANNA CECILIA FARO BONAN', '2023-02-02', 'F'),
(42, 'ANNA LUIZA GAUDINI DE OLIVEIRA', '2021-05-01', 'F'),
(43, 'ANNA PAULA DOS SANTOS COSENZA RIBEIRO', '2023-02-02', 'F'),
(44, 'ANNA RAPHAELA CORREA CANDIDO', '2015-03-02', 'F'),
(45, 'ANTHONY YURI GATTO', '2018-08-27', 'M'),
(46, 'ANTONIO CALADO DOS SANTOS', '2010-08-26', 'M'),
(47, 'ANTONIO CARLOS ABREU DE AZEVEDO', '1987-03-16', 'M'),
(48, 'ANTONIO CARLOS DE ALVARENGA RIBEIRO', '1987-03-16', 'M'),
(49, 'ANTONIO CARLOS GOMES XAVIER', '2022-09-01', 'M'),
(50, 'ANTONIO CARLOS SANTOS GONCALVES', '2023-02-01', 'M'),
(51, 'ANTONIO CARLOS TITO MORENO', '2020-08-01', 'M'),
(52, 'ANTONIO CESAR LINS CAVALCANTI', '2021-01-01', 'M'),
(53, 'ANTONIO CORNELIO COSTA', '1985-03-25', 'M'),
(54, 'ANTONIO DE ALBUQUERQUE DI CARLO', '1986-08-14', 'M'),
(55, 'ANTÔNIO ELIESIO DAMÁZIO DO NASCIMENTO', '2021-01-01', 'M'),
(56, 'ANTONIO GASPAR DE GOUVEIA', '2013-01-01', 'M'),
(57, 'ANTONIO HENRIQUE DE PAULA LOPES BRANDAO', '2023-02-01', 'M'),
(58, 'ANTÔNIO HIGINO DA COSTA', '2019-02-01', 'M'),
(59, 'ANTONIO JORGE SIMOA DE SOUZA', '2022-11-01', 'M'),
(60, 'ANTONIO JOSE DE ARAUJO', '1987-11-01', 'M'),
(61, 'ANTÔNIO LUIZ DA SILVA MOREIRA', '1985-04-23', 'M'),
(62, 'ANTONIO MARIA FERNANDES PACHECO', '2022-02-18', 'M'),
(63, 'ANTÔNIO MÁRIO CARVALHO E SILVA', '2021-04-29', 'M'),
(64, 'ANTONIO MAURICIO MODESTO RAINHO', '2023-02-09', 'M'),
(65, 'ANTONIO MAURICIO XAVIER', '1985-03-22', 'M'),
(66, 'ANTONIO MOLISANI', '2016-04-28', 'M'),
(67, 'ANTONIO PASCOAL DA SILVA', '1985-03-22', 'M'),
(68, 'ANTONIO PAULO DA CONCEIÇÃO', '1987-11-01', 'M'),
(69, 'ANTONIO PEDRO CAMPELLO PEREIRA PORTO SOARES', '2023-05-10', 'M'),
(70, 'ANTONIO RODRIGUES DE OLIVEIRA', '2012-02-02', 'M'),
(71, 'ANTONIO VENANCIO GUSMAO', '1987-11-01', 'M'),
(72, 'ANTONIO VICENTE PORPHIRIO', '1987-11-01', 'M'),
(73, 'APARECIDA LOYOLLA CORREA', '2023-02-02', 'F'),
(74, 'ARACELI AFONSO THEODORO', '1996-06-10', 'F'),
(75, 'ARAGUACI SILVA DO CARMO', '2017-06-22', 'F'),
(76, 'ARLEI DE LOURIVAL ASSUCENA', '2023-01-01', 'F'),
(77, 'ARMANDO BRITTES MONTEIRO', '2015-03-02', 'M'),
(78, 'ARTHUR MARCELO GUIMARÃES CARVALHO', '2021-05-01', 'M'),
(79, 'ARTHUR PEREIRA DE LIMA NETO', '1987-03-16', 'M'),
(80, 'ARTUR EDUARDO DOS SANTOS MENDOZA', '1987-03-16', 'M'),
(81, 'ARTUR JUNQUEIRA DE ALMEIDA', '2017-05-01', 'M'),
(82, 'ARY PEREIRA LEITE FILHO', '2023-06-21', 'M'),
(83, 'ARY TAVARES ALVES JUNIOR', '2021-09-01', 'M'),
(84, 'AURIMAR SILVA REIS', '2023-06-01', 'M'),
(85, 'AYLA PAIVA DA SILVA ROUBERT', '2023-02-01', 'F'),
(86, 'AYMEE NUNES NORONHA', '1987-03-16', 'F'),
(87, 'BARBARA CRISTINA MARTINS LOPES DE OLIVEIRA', '2021-01-01', 'F'),
(88, 'BARBARA CRISTINA MARTINS TEIXEIRA ZACCARO', '2023-07-01', 'F'),
(89, 'BARBARA LUCIA JOAQUIM SALES', '2021-01-01', 'F'),
(90, 'BEATRIZ DA SILVA COUTO', '2023-07-01', 'F'),
(91, 'BEATRIZ GOLDENBERG KITOBER', '2021-03-01', 'F'),
(92, 'BEATRIZ MORAES BRANDAO', '2021-01-01', 'F'),
(93, 'BECHARA JORIS THEME NETO', '1987-03-16', 'F'),
(94, 'BELGENISIA ALVES CHAVES', '1987-12-14', 'F'),
(95, 'BENITO FRANCISCO MARSILI FILHO', '1987-12-14', 'M'),
(96, 'BERNARDO MARGULIES CAVALCANTI', '2018-08-27', 'M'),
(97, 'BIANCA DE SOUSA ANTUNES', '2021-01-01', 'F'),
(98, 'BIANCA MARIA ALMEIDA MARTINS', '2018-09-11', 'F'),
(99, 'BIANCA MARIA CASTRO VIANNA', '2012-02-24', 'F'),
(100, 'BIANCA MENEZES RODRIGUES AMPARO', '2014-10-01', 'F'),
(101, 'BIANCA NOVAES DE MELLO LIMA', '2023-06-01', 'F'),
(102, 'BIANCA RODRIGUES TOLEDO', '2023-02-01', 'F'),
(103, 'BIANCA SÃO LUIZ PACHECO AZEVEDO', '2021-01-05', 'F'),
(104, 'BRENDA STEFFANI MARQUES PEREIRA', '2023-02-02', 'F'),
(105, 'BRENO BORTOLOTTI BATISTA', '2016-04-28', 'M'),
(106, 'BRENO RICARDO RIBEIRO DE ARRUDA', '2013-01-01', 'M'),
(107, 'BRENO SABOIA SAEGER', '2022-11-01', 'M');

-- --------------------------------------------------------

--
-- Estrutura para tabela `especialidade`
--

CREATE TABLE `especialidade` (
  `especialidadeID` int(11) NOT NULL,
  `especialidade` varchar(50) NOT NULL,
  `cbos` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `especialidade`
--

INSERT INTO `especialidade` (`especialidadeID`, `especialidade`, `cbos`) VALUES
(1, 'Cirurgião dentista - auditor', '223204'),
(2, 'Cirurgião dentista - clínico geral', '223208'),
(3, 'Cirurgião dentista - endodontista', '223212'),
(4, 'Cirurgião dentista - epidemiologista', '223216'),
(5, 'Cirurgião dentista - estomatologista', '223220'),
(6, 'Cirurgião dentista - implantodontista', '223224'),
(7, 'Cirurgião dentista - odontogeriatra', '223228'),
(8, 'Cirurgião dentista - odontologista legal', '223232'),
(9, 'Cirurgião dentista - odontopediatra', '223236'),
(10, 'Cirurgião dentista - ortopedista e ortodontista', '223240'),
(11, 'Cirurgião dentista - patologista bucal', '223244'),
(12, 'Cirurgião dentista - periodontista', '223248'),
(13, 'Cirurgião dentista - protesiólogo bucomaxilofacial', '223252'),
(14, 'Cirurgião dentista - protesista', '223256'),
(15, 'Cirurgião dentista - radiologista', '223260'),
(16, 'Cirurgião dentista - reabilitador oral', '223264'),
(17, 'Cirurgião dentista - traumatologista bucomaxilofac', '223268'),
(18, 'Cirurgião dentista de saúde coletiva', '223272'),
(19, 'Cirurgião dentista - odontologia do trabalho', '223276'),
(20, 'Cirurgião dentista - dentística', '223280'),
(21, 'Cirurgião dentista - disfunção temporomandibular e', '223284'),
(22, 'Cirurgião dentista - odontologia para pacientes co', '223288'),
(23, 'Cirurgião-dentista da estratégia de saúde da famíl', '223293'),
(24, 'Médico veterinário', '223305'),
(25, 'Zootecnista', '223310'),
(26, 'Farmacêutico', '223405'),
(27, 'Farmacêutico analista clínico', '223415'),
(28, 'Farmacêutico de alimentos', '223420'),
(29, 'Farmacêutico práticas integrativas e complementare', '223425'),
(30, 'Farmacêutico em saúde pública', '223430'),
(31, 'Farmacêutico industrial', '223435'),
(32, 'Farmacêutico toxicologista', '223440'),
(33, 'Farmacêutico hospitalar e clínico', '223445'),
(34, 'Enfermeiro', '223505'),
(35, 'Enfermeiro auditor', '223510'),
(36, 'Enfermeiro de bordo', '223515'),
(37, 'Enfermeiro de centro cirúrgico', '223520'),
(38, 'Enfermeiro de terapia intensiva', '223525'),
(39, 'Enfermeiro do trabalho', '223530'),
(40, 'Enfermeiro nefrologista', '223535'),
(41, 'Enfermeiro neonatologista', '223540'),
(42, 'Enfermeiro obstétrico', '223545'),
(43, 'Enfermeiro psiquiátrico', '223550'),
(44, 'Enfermeiro puericultor e pediátrico', '223555'),
(45, 'Enfermeiro sanitarista', '223560'),
(46, 'Enfermeiro da estratégia de saúde da família', '223565'),
(47, 'Perfusionista', '223570'),
(48, 'Obstetriz', '223575'),
(49, 'Enfermeiro estomaterapeuta', '223580'),
(50, 'Enfermeiro forense', '223585'),
(51, 'Fisioterapeuta geral', '223605'),
(52, 'Fisioterapeuta respiratória', '223625'),
(53, 'Fisioterapeuta neurofuncional', '223630'),
(54, 'Fisioterapeuta traumato-ortopédica funcional', '223635'),
(55, 'Fisioterapeuta osteopata', '223640'),
(56, 'Fisioterapeuta quiropraxista', '223645'),
(57, 'Fisioterapeuta acupunturista', '223650'),
(58, 'Fisioterapeuta esportivo', '223655'),
(59, 'Fisioterapeuta  do trabalho', '223660'),
(60, 'Dietista', '223705'),
(61, 'Nutricionista', '223710'),
(62, 'Fonoaudiólogo geral', '223810'),
(63, 'Fonoaudiólogo educacional', '223815'),
(64, 'Fonoaudiólogo em audiologia', '223820'),
(65, 'Fonoaudiólogo em disfagia', '223825'),
(66, 'Fonoaudiólogo em linguagem', '223830'),
(67, 'Fonoaudiólogo em motricidade orofacial', '223835'),
(68, 'Fonoaudiólogo em saúde coletiva', '223840'),
(69, 'Fonoaudiólogo em voz', '223845'),
(70, 'Terapeuta ocupacional', '223905'),
(71, 'Ortoptista', '223910'),
(72, 'Psicomotricista', '223915'),
(73, 'Avaliador físico', '224105'),
(74, 'Ludomotricista', '224110'),
(75, 'Preparador de atleta', '224115'),
(76, 'Preparador físico', '224120'),
(77, 'Técnico de desporto individual e coletivo (exceto ', '224125'),
(78, 'Técnico de laboratório e fiscalização desportiva', '224130'),
(79, 'Treinador profissional de futebol', '224135'),
(80, 'Profissional de educação física na saúde', '224140'),
(81, 'Médico infectologista', '225103'),
(82, 'Médico acupunturista', '225105'),
(83, 'Médico legista', '225106'),
(84, 'Médico nefrologista', '225109'),
(85, 'Médico alergista e imunologista', '225110'),
(86, 'Médico neurologista', '225112'),
(87, 'Médico angiologista', '225115'),
(88, 'Médico nutrologista', '225118'),
(89, 'Médico cardiologista', '225120'),
(90, 'Médico oncologista clínico', '225121'),
(91, 'Médico cancerologista pediátrico', '225122'),
(92, 'Médico pediatra', '225124'),
(93, 'Médico clínico', '225125'),
(94, 'Médico pneumologista', '225127'),
(95, 'Médico de família e comunidade', '225130'),
(96, 'Médico psiquiatra', '225133'),
(97, 'Médico dermatologista', '225135'),
(98, 'Médico reumatologista', '225136'),
(99, 'Médico sanitarista', '225139'),
(100, 'Médico do trabalho', '225140'),
(101, 'Médico da estratégia de saúde da família', '225142'),
(102, 'Médico em medicina de tráfego', '225145'),
(103, 'Médico anatomopatologista', '225148'),
(104, 'Médico em medicina intensiva', '225150'),
(105, 'Médico anestesiologista', '225151'),
(106, 'Médico antroposófico', '225154'),
(107, 'Médico endocrinologista e metabologista', '225155'),
(108, 'Médico fisiatra', '225160'),
(109, 'Médico gastroenterologista', '225165'),
(110, 'Médico generalista', '225170'),
(111, 'Médico geneticista', '225175'),
(112, 'Médico geriatra', '225180'),
(113, 'Médico hematologista', '225185'),
(114, 'Médico homeopata', '225195'),
(115, 'Médico em cirurgia vascular', '225203'),
(116, 'Médico cirurgião cardiovascular', '225210'),
(117, 'Médico cirurgião de cabeça e pescoço', '225215'),
(118, 'Médico cirurgião do aparelho digestivo', '225220'),
(119, 'Médico cirurgião geral', '225225'),
(120, 'Médico cirurgião pediátrico', '225230'),
(121, 'Médico cirurgião plástico', '225235'),
(122, 'Médico cirurgião torácico', '225240'),
(123, 'Médico ginecologista e obstetra', '225250'),
(124, 'Médico mastologista', '225255'),
(125, 'Médico neurocirurgião', '225260'),
(126, 'Médico oftalmologista', '225265'),
(127, 'Médico ortopedista e traumatologista', '225270'),
(128, 'Médico otorrinolaringologista', '225275'),
(129, 'Médico coloproctologista', '225280'),
(130, 'Médico urologista', '225285'),
(131, 'Médico cancerologista cirurgíco', '225290'),
(132, 'Médico cirurgião da mão', '225295'),
(133, 'Médico citopatologista', '225305'),
(134, 'Médico em endoscopia', '225310'),
(135, 'Médico em medicina nuclear', '225315'),
(136, 'Médico em radiologia e diagnóstico por imagem', '225320'),
(137, 'Médico patologista', '225325'),
(138, 'Médico radioterapeuta', '225330'),
(139, 'Médico patologista clínico / medicina laboratorial', '225335'),
(140, 'Médico hemoterapeuta', '225340'),
(141, 'Médico hiperbarista', '225345'),
(142, 'Médico neurofisiologista clínico', '225350'),
(143, 'Médico radiologista intervencionista', '225355'),
(144, 'Quiropraxista', '226105'),
(145, 'Osteopata', '226110'),
(146, 'Musicoterapeuta', '226305'),
(147, 'Arteterapeuta', '226310'),
(148, 'Equoterapeuta', '226315'),
(149, 'Naturólogo', '226320');

-- --------------------------------------------------------

--
-- Estrutura para tabela `localatendimento`
--

CREATE TABLE `localatendimento` (
  `localID` int(11) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `medicoID_F` int(11) DEFAULT NULL,
  `especialidadeID_F` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `localatendimento`
--

INSERT INTO `localatendimento` (`localID`, `endereco`, `medicoID_F`, `especialidadeID_F`) VALUES
(1, 'Av. Olivo Gomes, 755 - AP 83B    - ', 3, 7),
(2, 'Av. Olivo Gomes, 755 - AP 83B', 6, 20),
(3, 'Av. Olivo Gomes, 755 - AP 83B', 102, 72),
(4, 'Rua Antonio Rosin', 59, 68),
(5, 'Rua Antonio Rosin', 59, 68),
(6, 'Rua Antonio Rosin', 7, 147);

-- --------------------------------------------------------

--
-- Estrutura para tabela `medico`
--

CREATE TABLE `medico` (
  `medicoID` int(11) NOT NULL,
  `nome` char(255) DEFAULT NULL,
  `crm` char(14) DEFAULT NULL,
  `dataDeNascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `medico`
--

INSERT INTO `medico` (`medicoID`, `nome`, `crm`, `dataDeNascimento`) VALUES
(1, 'BRUNA CELY DE ALMEIDA', '3569', '2022-08-23'),
(2, 'BRUNA DESTRO BATISTA', '4348', '2015-03-02'),
(3, 'BRUNA GOMES LEÃO DE DECCO SOARES', '11374', '2018-07-01'),
(4, 'BRUNO CARLOS FERRARO DE MENEZES', '5290', '2023-07-01'),
(5, 'BRUNO CESAR DE CARVALHO COELHO', '4767', '2015-03-27'),
(6, 'BRUNO CORREA BASTOS', '1925', '1987-11-01'),
(7, 'BRUNO DE SOUSA CARVALHO', '11669', '2018-08-29'),
(8, 'BRUNO LEITE MOZER', '4390', '2015-03-02'),
(9, 'BRUNO MARTINS GONÇALVES', '484', '2021-01-01'),
(10, 'BRUNO PEREIRA GUERRA', '10753', '2018-03-05'),
(11, 'BRUNO RUMMERT CARNEIRO', '4621', '2023-02-01'),
(12, 'BRUNO SADOCK MATOS DE OLIVEIRA', '5200', '2021-08-17'),
(13, 'BRUNO SOUZA CROPALATO DE ARAUJO', '11636', '2018-09-03'),
(14, 'CAIO CESAR DA SILVA PALMA', '4540', '2023-02-09'),
(15, 'CAIO OLIVEIRA DA SILVA', '5707', '2023-07-01'),
(16, 'CAIUS SARCIA ROCHA', '1085', '2021-02-01'),
(17, 'CAMILA ALMEIDA DA SILVA', '4375', '2015-03-02'),
(18, 'CAMILA DA SILVA', '5345', '2023-07-01'),
(19, 'CAMILA DE SOUZA DOS SANTOS', '384', '2021-01-01'),
(20, 'CAMILA PARADA DOS SANTOS ALMEIDA', '14338', '2020-10-08'),
(21, 'CAMILA PEREIRA DE ALBUQUERQUE FERREIRA', '3649', '2022-09-23'),
(22, 'CAMILO DUQUESNOIS DUBOIS BRITO', '4407', '2015-03-02'),
(23, 'CANDIDO TEIXEIRA LOPES NETO', '4862', '2019-06-10'),
(24, 'CARINA DUARTE SUÁREZ DOS SANTOS', '976', '2021-01-01'),
(25, 'CARINE LEIS DE OLIVEIRA', '4729', '2023-02-01'),
(26, 'CARLA ALVES MIRANDA LOPES DA SILVA', '4125', '2023-01-01'),
(27, 'CARLA CALVET CORREA DE OLIVEIRA', '4400', '2015-03-02'),
(28, 'CARLA CELESTINO COSTA', '1983', '2021-06-01'),
(29, 'CARLA SCOFANO', '11625', '2018-09-03'),
(30, 'CARLINDA DE LIMA XAVIER', '321', '1986-01-01'),
(31, 'CARLO ROBERTO SIMI', '1651', '2021-05-01'),
(32, 'CARLOS AFFONSO LEONY NETO', '2562', '2021-10-01'),
(33, 'CARLOS ALBERTO CARNELOS BARBOZA', '153', '1987-11-01'),
(34, 'CARLOS ALBERTO DE CAMPOS MARQUES', '13932', '2020-04-01'),
(35, 'CARLOS ALBERTO GOMES DE ARAUJO', '325', '1987-03-16'),
(36, 'CARLOS HENRIQUE SILVA DOS SANTOS', '11733', '2018-09-20'),
(37, 'CARLOS JOSE COUTINHO GONÇALVES', '4595', '1987-03-16'),
(38, 'CARLOS JOSE DE SOUZA', '260', '1987-03-16'),
(39, 'CARLOS JOSÉ FERREIRA DE ABREU E LIMA', '1228', '2021-03-01'),
(40, 'CARLOS LUIZ CESARIO JUNIOR', '10624', '2018-01-18'),
(41, 'CARLOS MOURA DA CRUZ', '5695', '2023-07-01'),
(42, 'CARLOS TORRES DE MACEDO COSTA', '2032', '1987-11-01'),
(43, 'CARLOS WALLACE CORREA DE HOLANDA', '964', '2021-01-01'),
(44, 'CARMEN BOTTINO RUA', '274', '1991-01-28'),
(45, 'CARMEN LUCIA FERREIRA DA SILVA', '11941', '2016-03-01'),
(46, 'CAROLINA AIRES MUCCILLO', '1967', '2021-06-07'),
(47, 'CAROLINA BRAGA LEITE TAVARES', '6205', '2016-04-28'),
(48, 'CAROLINA DA SILVA BENSINO', '11661', '2018-09-05'),
(49, 'CAROLINA LIMA MACEDO DE ALMEIDA', '4361', '2015-04-14'),
(50, 'CAROLINA SILVA OLIVEIRA CEREJA', '4062', '2023-01-01'),
(51, 'CAROLINE DE SOUZA SILVESTRE', '6166', '2016-04-29'),
(52, 'CAROLINE RODRIGUES DE ANDRADE', '6164', '2016-04-28'),
(53, 'CAROLINE SOUZA DE CASTRO', '4429', '2023-02-02'),
(54, 'CASSIA MARIA LIMA BORJA', '5271', '2015-07-08'),
(55, 'CASSIANE TAVARES MACIEL', '4985', '2023-04-01'),
(56, 'CATARINA ELIAS JACOB MATTAR', '417', '1987-03-16'),
(57, 'CATIA CILENE ESTEVAO DA CUNHA MENDONÇA', '6427', '2023-06-26'),
(58, 'CATIA DE SOUZA NOGUEIRA DE PAIVA', '2097', '2021-07-02'),
(59, 'CATIA LEA PEREIRA DE ALVARENGA', '2749', '2022-02-01'),
(60, 'CECILIA PAIM VARELLA', '5190', '2015-08-05'),
(61, 'CELENE APARECIDA BOTELHO VALENTIM', '4462', '2023-02-02'),
(62, 'CELIA DA SILVA MATTOS MONTEIRO', '589', '1987-11-01'),
(63, 'CELIA MARIA BAPTISTA DE ARAUJO', '420', '1987-03-16'),
(64, 'CELIA MARIA NICOLA', '298', '1987-11-01'),
(65, 'CELIA REGINA BOTELHO DE SOUZA', '1897', '1987-11-01'),
(66, 'CELIA REGINA DA SILVA VIANA', '5128', '2023-06-01'),
(67, 'CELINA MARIA PAIVA DE ARAUJO', '1983', '1987-12-29'),
(68, 'CELINE MARTINS DA SILVA', '4414', '2023-02-02'),
(69, 'CELIO FERNANDO GARCEZ SERQUEIRA', '1494', '2021-04-01'),
(70, 'CELIO ROBERTO SERRAT FELIX', '4936', '2023-04-01'),
(71, 'CELSO VALENTIM MENDES DA COSTA', '946', '1985-08-23'),
(72, 'CESAR AUGUSTO DE CARVALHO SIMÕES', '4064', '2023-01-01'),
(73, 'CESAR CARDOSO LOPES', '4362', '2023-02-01'),
(74, 'CESAR RODRIGUES ABRAHAO', '2724', '2014-01-01'),
(75, 'CÉU SILVA CAVALCANTI', '4445', '2023-02-02'),
(76, 'CHARLOTTE CASTELLO BRANCO JONQUA', '5185', '2015-08-14'),
(77, 'CHIRLEI MATOS SANTOS', '6193', '2016-05-23'),
(78, 'CHRISTIAN DOS SANTOS SILVA', '11582', '2018-09-10'),
(79, 'CHRISTIANE EIRAS FERREIRA DA SILVA', '3612', '2000-05-12'),
(80, 'CHRISTIANE PEREIRA TOSTA', '519', '2011-06-13'),
(81, 'CICERO PEREIRA RODRIGUES', '153', '1985-03-29'),
(82, 'CICILIA DE JESUS AVELINO FERREIRA', '11759', '2018-09-27'),
(83, 'CINALDO JOSÉ DO ROZÁRIO PIRES', '2814', '2022-03-01'),
(84, 'CINTIA FEIJÓ GUIMARÃES COSTA', '997', '2021-01-14'),
(85, 'CINTIA LETICIA FERNANDES DA SILVA', '11588', '2018-09-12'),
(86, 'CINTIA RIBEIRO', '13723', '2020-01-21'),
(87, 'CINTYA LINS DE SOUZA', '4591', '2023-02-02'),
(88, 'CLADIR FERREIRA DE SOUZA', '1985', '1987-11-01'),
(89, 'CLARICE PEREIRA LIMA GREEN', '4491', '2023-02-02'),
(90, 'CLARISSA BRANDÃO DE ARAUJO LOPES', '6162', '2016-04-29'),
(91, 'CLARISSA LOPES VIEIRA ALVES DA CUNHA', '415', '2021-01-01'),
(92, 'CLAUDIA BUSTAMANTE LEVY', '11619', '2018-09-10'),
(93, 'CLAUDIA CARVALHO LIMA FEITAL', '4416', '2023-02-02'),
(94, 'CLAUDIA DE OLIVEIRA CABRAL SANTOS', '357', '1987-12-01'),
(95, 'CLAUDIA DIAS VENTURA QUINTANILHA', '1876', '1987-11-01'),
(96, 'CLAUDIA DOS ANJOS PACHECO DE CASTRO', '5211', '2023-06-01'),
(97, 'CLAUDIA LUCIA CAETANO DE ARAUJO', '342', '1996-06-10'),
(98, 'CLAUDIA MARINHO MATOS DO VALE', '333', '2021-01-01'),
(99, 'CLAUDIA PALOMA MAGALHÃES PRADO', '11278', '2021-01-21'),
(100, 'CLAUDIA PARANHOS FARIA', '2029', '1987-11-01'),
(101, 'CLAUDIA REGINA MATOS DOS SANTOS FERREIRA', '1984', '1987-12-11'),
(102, 'CLAUDIA REGINA RIBEIRO BRAZ', '9733', '2017-04-01'),
(103, 'CLAUDIA RIVOLLI THOMAS DE SA', '2109', '1997-11-13'),
(104, 'CLAUDIA VICCHETTI FERREIRA DE SOUSA', '679', '2021-01-05'),
(105, 'CLAUDIO AMARAL AZZI', '429', '2021-01-11'),
(106, 'CLAUDIO BENEVENUTE LOZANA', '6200', '2017-09-11'),
(107, 'CLAUDIO DIAS LOPES', '303', '1987-11-01'),
(108, 'CLAUDIO GONZAGA DE CARVALHO', '1341', '2021-03-01'),
(109, 'Flávio', '88888', '1980-01-01');

-- --------------------------------------------------------

--
-- Estrutura para tabela `procedimento`
--

CREATE TABLE `procedimento` (
  `procedimentoID` int(11) NOT NULL,
  `descricaoProcedimento` varchar(255) NOT NULL,
  `TipoDeProcedimento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `procedimento`
--

INSERT INTO `procedimento` (`procedimentoID`, `descricaoProcedimento`, `TipoDeProcedimento`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(2, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(3, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(4, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(5, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(6, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(7, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(8, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(9, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(10, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(12, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(13, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(14, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(15, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(16, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(17, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(18, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(19, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(20, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(21, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(22, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(23, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(24, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(25, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(26, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(27, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(28, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(29, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(30, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(31, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(32, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(33, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(34, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(35, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(36, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(37, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(38, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(39, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(40, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(41, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(42, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(43, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(44, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(45, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(46, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(47, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(48, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(49, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(50, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(51, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(52, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(53, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(54, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(55, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(56, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(57, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(58, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(59, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(60, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(61, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(62, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(63, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(64, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(65, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(66, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(67, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(68, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(69, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(70, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(71, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(72, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(73, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(74, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(75, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(76, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(77, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(78, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(79, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(80, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(81, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(82, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(83, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(84, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(85, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(86, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(87, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(88, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(89, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(90, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(91, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(92, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(93, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(94, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(95, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(96, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(97, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(98, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(99, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(100, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(101, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum'),
(102, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip', 'The standard Lorem Ipsum passage, used since the 1500s'),
(103, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi', 'Section 1.10.32 of \"de Finibus Bonorum et Malorum\"'),
(104, 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system', '1914 translation by H. Rackham'),
(105, 'On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment', '1914 translation by H. Rackham'),
(106, 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi', 'Section 1.10.33 of \"de Finibus Bonorum et Malorum');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `atendimentomedico`
--
ALTER TABLE `atendimentomedico`
  ADD KEY `fk_beneficiarioID_A` (`beneficiarioID_F`),
  ADD KEY `fk_especialidadeID_A` (`especialidadeID_F`),
  ADD KEY `fk_medicoID_A` (`medicoID_F`),
  ADD KEY `fk_localID_A` (`localID_F`),
  ADD KEY `fk_procedimentoID_A` (`procedimentoID_F`);

--
-- Índices de tabela `beneficiario`
--
ALTER TABLE `beneficiario`
  ADD PRIMARY KEY (`beneficiarioID`);

--
-- Índices de tabela `especialidade`
--
ALTER TABLE `especialidade`
  ADD PRIMARY KEY (`especialidadeID`);

--
-- Índices de tabela `localatendimento`
--
ALTER TABLE `localatendimento`
  ADD PRIMARY KEY (`localID`),
  ADD KEY `fk_medicoID` (`medicoID_F`),
  ADD KEY `fk_especialidadeID` (`especialidadeID_F`);

--
-- Índices de tabela `medico`
--
ALTER TABLE `medico`
  ADD PRIMARY KEY (`medicoID`);

--
-- Índices de tabela `procedimento`
--
ALTER TABLE `procedimento`
  ADD PRIMARY KEY (`procedimentoID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `beneficiario`
--
ALTER TABLE `beneficiario`
  MODIFY `beneficiarioID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de tabela `especialidade`
--
ALTER TABLE `especialidade`
  MODIFY `especialidadeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de tabela `localatendimento`
--
ALTER TABLE `localatendimento`
  MODIFY `localID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `medico`
--
ALTER TABLE `medico`
  MODIFY `medicoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de tabela `procedimento`
--
ALTER TABLE `procedimento`
  MODIFY `procedimentoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atendimentomedico`
--
ALTER TABLE `atendimentomedico`
  ADD CONSTRAINT `fk_beneficiarioID_A` FOREIGN KEY (`beneficiarioID_F`) REFERENCES `beneficiario` (`beneficiarioID`),
  ADD CONSTRAINT `fk_especialidadeID_A` FOREIGN KEY (`especialidadeID_F`) REFERENCES `especialidade` (`especialidadeID`),
  ADD CONSTRAINT `fk_localID_A` FOREIGN KEY (`localID_F`) REFERENCES `localatendimento` (`localID`),
  ADD CONSTRAINT `fk_medicoID_A` FOREIGN KEY (`medicoID_F`) REFERENCES `medico` (`medicoID`),
  ADD CONSTRAINT `fk_procedimentoID_A` FOREIGN KEY (`procedimentoID_F`) REFERENCES `procedimento` (`procedimentoID`);

--
-- Restrições para tabelas `localatendimento`
--
ALTER TABLE `localatendimento`
  ADD CONSTRAINT `fk_especialidadeID` FOREIGN KEY (`especialidadeID_F`) REFERENCES `especialidade` (`especialidadeID`),
  ADD CONSTRAINT `fk_medicoID` FOREIGN KEY (`medicoID_F`) REFERENCES `medico` (`medicoID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
