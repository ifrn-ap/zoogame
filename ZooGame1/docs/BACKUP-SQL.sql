-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.14-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              8.2.0.4675
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Copiando estrutura do banco de dados para zoogame
DROP DATABASE IF EXISTS `zoogame`;
CREATE DATABASE IF NOT EXISTS `zoogame` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `zoogame`;


-- Copiando estrutura para tabela zoogame.cadastro
CREATE TABLE IF NOT EXISTS `cadastro` (
  `login` varchar(50) DEFAULT NULL,
  `senha` varchar(50) DEFAULT NULL,
  `conf_senha` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sobrenome` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sexo` varchar(50) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pontos` int(11) DEFAULT NULL,
  `acertos` int(11) DEFAULT NULL,
  `erros` int(11) DEFAULT NULL,
  `somaAcerto` int(11) DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela zoogame.cadastro: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `cadastro` DISABLE KEYS */;
INSERT INTO `cadastro` (`login`, `senha`, `conf_senha`, `nome`, `sobrenome`, `email`, `sexo`, `dataNascimento`, `ID`, `pontos`, `acertos`, `erros`, `somaAcerto`) VALUES
	('GiovannaP', 'gio', 'gio', 'Giovanna', 'Paiva', 'paivagiovanna08@gmail.com', 'Feminino', '1997-03-18', 54, 5, 8, NULL, NULL),
	('Gio', 'ola', 'ola', 'giovanna', 'paiva', 'jdaod', 'Feminino', '1990-02-09', 55, -18, 8, 4, NULL);
/*!40000 ALTER TABLE `cadastro` ENABLE KEYS */;


-- Copiando estrutura para tabela zoogame.questions
CREATE TABLE IF NOT EXISTS `questions` (
  `pergunta` varchar(600) DEFAULT NULL,
  `alternativaA` varchar(600) DEFAULT NULL,
  `alternativaB` varchar(600) DEFAULT NULL,
  `alternativaC` varchar(600) DEFAULT NULL,
  `alternativaD` varchar(600) DEFAULT NULL,
  `alternativaE` varchar(600) DEFAULT NULL,
  `correta` varchar(600) DEFAULT NULL,
  `num_questao` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `area` varchar(600) DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  `dica` varchar(50) DEFAULT NULL,
  UNIQUE KEY `num_questao` (`num_questao`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela zoogame.questions: ~26 rows (aproximadamente)
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` (`pergunta`, `alternativaA`, `alternativaB`, `alternativaC`, `alternativaD`, `alternativaE`, `correta`, `num_questao`, `area`, `nivel`, `dica`) VALUES
	('Com relaÃ§Ã£o a caprino-ovinocultura no Nordeste, eh correto afirmar que:', 'a atual producao de carne eh baseada em criadores de ateh 50 hectares. ', 'a pele eh o principal produto da cadeia produtiva. ', 'a atividade apresenta como realidade de produÃ§Ã£o a obtencao de animais abatidos com menos de  01 ano. ', 'a cadeia de producao apresenta-se organizada e calcada em grandes conglomerados. ', 'n.d.a', 'A', 49, 'Caprinos', NULL, NULL),
	('Marque a alternativa que apresenta apenas aminoÃ¡cidos essenciais. ', 'Lisina, triptofano, treonina, leucina e valina. ', 'Lisina, alanina, cisteÃ­na, treonina e valina. ', 'Metionina, tirosina, triptofano, valina e leucina. ', 'Metionina, alanina, treonina, triptofano e isoleucina. ', 'n.d.a', 'A', 50, 'Caprinos', NULL, NULL),
	('A duraÃ§Ã£o do cio depende das espÃ©cies e, dentro de uma mesma espÃ©cie, varia  levemente de uma para outra fÃªmea. Esse fato tambÃ©m Ã© verdadeiro com relaÃ§Ã£o ao momento da  ovulaÃ§Ã£o, que ocorre em porcas: ', '10 a 12 horas apÃ³s o inÃ­cio do cio. ', '35 a 45 horas apÃ³s o inÃ­cio do cio. ', '24 a 32 horas apÃ³s o inÃ­cio do cio. ', '13 a 20 horas apÃ³s o inÃ­cio do cio', 'n.d.a', 'B', 51, 'Apicultura', NULL, NULL),
	('kj', 'n', 'kjn', 'kjn', 'kn', 'kn', 'A', 52, 'Caprinos', NULL, NULL),
	('kahidgaidg', 'igdi', 'gdu', 'gs', 'u', 'sbofg', 'A', 53, 'Caprinos', 'NÃ­vel 3', NULL),
	('Quanto eh 3 * 5?', '5', '0', '15', '20', '1', 'C', 54, 'Caprinos', 'Nivel 3', NULL),
	('QUE FLOR GRANDE E AMARELA ACOMPANHA O MOVIMENTO DO SOL?', 'MARGARIDA', 'GIRASSOL', 'FLOR DE SOL', 'CHAPÃU-DE-SOL', 'nada', 'B', 55, 'Suinos', 'Nivel 1', 'kn'),
	('UMA SUBSTÃNCIA TÃXICA Ã AQUELA QUE Ã:', 'BENÃFICA', 'VENENOSA', 'SAUDÃVEL', 'FORTIFICANTE', 'n.d.a', 'B', 56, 'Caprinos', 'Nivel 1', NULL),
	('QUAL ALTERNATIVA NÃO CORRESPONDE A UM PLANETA?', 'PLATÃO', 'MARTE', 'MERCÃRIO', 'VÃNUS', 'n.d.a', 'A', 57, 'Caprinos', 'Nivel 1', NULL),
	('ONDE EXISTE ÃGUA-VIVA?', 'TERRA', 'MANGUE', 'MAR', 'MATO', 'nda', 'C', 58, 'Caprinos', 'Nivel 1', NULL),
	('ONDE SE LOCALIZA A PLACENTA?', 'INTESTINO', 'PÃNCREAS', 'ESÃFAGO', 'ÃTERO', 'nda', 'D', 59, 'Caprinos', 'Nivel 2', NULL),
	('ONDE FICA O OSSO RÃTULA?', 'PESCOÃO', 'JOELHO', 'OMBRO', 'MÃO', 'nda', 'B', 60, 'Caprinos', 'Nivel 2', NULL),
	('O QUE Ã RETINOL?', 'ESPÃCIE DE REDE', 'COLÃRIO', 'SUPOSITÃRIO', 'VITAMINA A', 'nda', 'D', 61, 'Caprinos', 'Nivel 2', NULL),
	('O LEITE POBRE EM GORDURA Ã O:', 'LEITE INTEGRAL', 'LEITE DESNATADO', 'LEITE DE VACA', 'LEITE GORDO', 'nda', 'B', 62, 'Caprinos', 'Nivel 2', NULL),
	('QUAL Ã O NOME DADO AOS SEGMENTOS ÃSSEOS DOS DEDOS DAS MÃOS E DOS PÃS?', 'FALANGE', 'CLAVÃCULA', 'TEMPORAL', 'ESTERNO', 'nda', 'A', 63, 'Caprinos', 'Nivel 3', NULL),
	('LACRAU Ã O MESMO QUE:', 'ENGUIA', 'ESCORPIÃO', 'TARTARUGA', 'LAGARTIXA', 'nda', 'B', 64, 'Caprinos', 'Nivel 3', NULL),
	('EM QUAL PROCESSO CELULAR O MATERIAL GENÃTICO Ã DUPLICADO COM PRECISÃO?', 'FAGOCITOSE', 'OSMOSE', 'MITOSE', 'MEIOSE', 'nda', 'C', 65, 'Caprinos', 'Nivel 3', NULL),
	('NA GENÃTICA, COMO SÃO REPRESENTADOS OS CROMOSSOMOS SEXUAIS FEMININOS?', 'YY', 'XX', 'XY', 'YX', 'nda', 'B', 66, 'Caprinos', 'Nivel 3', NULL),
	('QUEM DESCOBRIU OS RAIOS X?', 'GALILEU', 'THOMAS EDISON', 'GRAHAM BELL', 'WILHELM RÃNTGEN', 'nda', 'D', 67, 'Caprinos', 'Nivel 4', NULL),
	('AS PLANTAS XERÃFITAS SÃO PRÃPRIAS DE QUAL AMBIENTE?', 'ÃMIDO', 'DESÃRTICO', 'CHUVOSO ', 'GELADO', 'nda', 'B', 68, 'Caprinos', 'Nivel 4', NULL),
	('TAUMATURGO Ã AQUELE QUE:', 'NÃO TRABALHA', 'TRABALHA DE DIA', 'FAZ MILAGRES', 'TRABALHA MUITO', 'nda', 'C', 69, 'Caprinos', 'Nivel 5', NULL),
	('O QUE Ã AMEBÃCITO?', 'DIALETO', 'CIDADE', 'CÃLULA', 'CRIADOURO', 'nda', 'C', 70, 'Caprinos', 'Nivel 5', NULL),
	('Yulliana Ã© feia?', 'Sim', 'Com certeza', 'Absolutamente', 'Yes', 'Todas as anteriores', 'E', 71, 'Bovinos', 'Nivel 5', NULL),
	('bfghnfkhn', 'djghifg', 'jfhjhj', 'jghjghj', 'gfhjkjk', 'jkhjkk', 'C', 72, 'Caprinos', 'Nivel 1', NULL),
	('etnklgrty', 'hgfhjlgk', 'fgfjhj', 'ghjgjk', 'kjkjk', 'jkhkh', 'A', 73, 'Caprinos', 'Nivel 1', NULL),
	('bala', 'ia', 'ua', 'i', 'h', 's', 'E', 74, 'Caprinos', 'Nivel 2', 'amvhafdyusfdusgfidgfsydshcdvf'),
	('Lais Ã© imunda?', 'Sim', 'Claro ', 'Ãbvio', 'TÃ¡ na cara', 'TODAS', 'E', 75, 'Caprinos', 'Nivel 1', 'Lais cara de fuinha'),
	('BCG EH:', 'UM JOGO INFANTIL', 'BANCO NACIONAL', 'VACINA', 'LEI', 'NENHUMA', 'C', 76, 'Caprinos', 'Nivel 1', 'CrianÃ§as nÃ£o gostam'),
	('Ola?', 'ola', 'thau', 'ieeeei', 'oi', 'hihi', 'A', 77, 'Caprinos', 'Nivel 1', 'Preste pelo amor de Deus'),
	('sknlsl', 'sl', 'sl', 'ls', 'ls', 'ls', 'A', 78, 'Caprinos', 'Nivel 1', 'almslamslasoas'),
	('khkahkdhk', 'dh', 'dk', 'kdh', 'kdh', 'kdh', 'C', 79, 'Bovinos', 'Nivel 3', 'jchkzhckzhckhho'),
	('OI', 'OLA', 'OLA', 'OLAO', 'OLA', 'OLA', 'D', 80, 'Bovinos', 'Nivel 2', 'ZLJVLXVOLX'),
	('OlÃ¡', 'nÃ£o ', 'merda', 'thau', 'vÃ¡ pescar', 'nÃ£o sou obrigada', 'E', 81, 'Caprinos', 'Nivel 1', 'Letra E');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
