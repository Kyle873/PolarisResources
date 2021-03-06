/*
-- Table structure for table `ServerInfoes`
*/

CREATE TABLE IF NOT EXISTS `ServerInfo` (
  `info` varchar(255) CHARACTER SET utf8 NOT NULL,
  `setting` longtext,
  PRIMARY KEY (`info`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*
-- Table structure for table `Players`
*/

CREATE TABLE IF NOT EXISTS `Players` (
  `PlayerID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` longtext,
  `Password` longtext,
  `Nickname` longtext,
  `SettingsINI` longtext,
  PRIMARY KEY (`PlayerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10000000 ;

/*
-- Table structure for table `Characters`
*/

/* TODO: Check the auto increment for characters. */

CREATE TABLE IF NOT EXISTS `Characters` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` longtext,
  `LooksBinary` longblob,
  `JobsBinary` longblob,
  `Player_PlayerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CharacterID`),
  KEY `IX_Player_PlayerID` (`Player_PlayerID`) USING HASH,
  FOREIGN KEY (`Player_PlayerID`) REFERENCES `Players` (`PlayerID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;
