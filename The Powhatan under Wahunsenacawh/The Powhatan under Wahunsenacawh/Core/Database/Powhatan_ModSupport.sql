--==========================================================================================================================
-- GEDEMON YNAEMP
--==========================================================================================================================
-- StartPosition 
-----
CREATE TABLE IF NOT EXISTS StartPosition (MapName TEXT, Civilization TEXT, Leader TEXT, X INT default 0, Y INT default 0);
INSERT INTO StartPosition
	(Civilization,				MapName,		X,	Y)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',	'GiantEarth',		X,	Y),
	('CIVILIZATION_SCECRL_POWHATAN',	'GreatestEarthMap',	X,	Y),
	('CIVILIZATION_SCECRL_POWHATAN',	'LargestEarth',		X,	Y),
	('CIVILIZATION_SCECRL_POWHATAN',	'CordiformEarth',	X,	Y);
--==========================================================================================================================
-- JFD RULE WITH FAITH
--==========================================================================================================================
-- Leader_Titles 
-----
CREATE TABLE IF NOT EXISTS 
	Leader_Titles (
	LeaderType  											text 		 		default null,
	GovernmentType											text 	 			default null,
	LeaderTitle											text				default null,
	PolicyType  											text 		 		default null,
	UseFeminine											boolean				default 0,
	TitleIsFullName											boolean				default 0);	
	
INSERT INTO Civilization_Titles
	(CivilizationType, 			GovernmentType, 					PolicyType,				LeaderTitle)
VALUES	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_CHIEFDOM',					null,					'LOC_GOVERNMENT_JFD_CHIEFDOM_LEADER_TITLE_JFD_MALI'),				
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_JFD_HORDE',					null,					'LOC_GOVERNMENT_JFD_HORDE_LEADER_TITLE_JFD_MALI'),					
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_JFD_POLIS',					null,					'LOC_GOVERNMENT_JFD_POLIS_LEADER_TITLE_JFD_MALI'),					
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_AUTOCRACY',					null,					'LOC_GOVERNMENT_JFD_AUTOCRACY_LEADER_TITLE_JFD_MALI'),				
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_OLIGARCHY',					null,					'LOC_GOVERNMENT_JFD_OLIGARCHY_LEADER_TITLE_JFD_MALI'),				
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_CLASSICAL_REPUBLIC',			null,					'LOC_GOVERNMENT_JFD_CLASSICAL_DEMOCRACY_LEADER_TITLE_JFD_MALI'),	
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_MERCHANT_REPUBLIC',				null,					'LOC_GOVERNMENT_JFD_MERCHANT_REPUBLIC_LEADER_TITLE_JFD_MALI'),		
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_MONARCHY',					null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_JFD_MALI'),				
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_JFD_ABSOLUTE_MONARCHY',			null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_JFD_MALI'),				
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_JFD_CONSTITUTIONAL_MONARCHY',		null,					'LOC_GOVERNMENT_JFD_MONARCHY_LEADER_TITLE_JFD_MALI'),				
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_JFD_NOBLE_REPUBLIC',			null,					'LOC_GOVERNMENT_JFD_NOBLE_REPUBLIC_LEADER_TITLE_JFD_MALI'),			
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_DEMOCRACY',					null,					'LOC_GOVERNMENT_JFD_LIBERAL_DEMOCRACY_LEADER_TITLE_JFD_MALI'),		
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_COMMUNISM',					null,					'LOC_GOVERNMENT_JFD_PEOPLES_REPUBLIC_LEADER_TITLE_JFD_MALI'),		
	('CIVILIZATION_SCECRL_POWHATAN',	'GOVERNMENT_FASCISM',					null,					'LOC_GOVERNMENT_JFD_MILITARY_GUARDIANSHIP_LEADER_TITLE_JFD_MALI'),	
	('CIVILIZATION_SCECRL_POWHATAN',	null,							'POLICY_JFD_EMPIRE',			'LOC_GOVERNMENT_JFD_EMPIRE_LEADER_TITLE_JFD_MALI');					
DELETE FROM Civilization_Titles WHERE CivilizationType = 'CIVILIZATION_SCECRL_POWHATAN' AND GovernmentType IS NOT null AND GovernmentType NOT IN (SELECT GovernmentType FROM Governments);
DELETE FROM Civilization_Titles WHERE CivilizationType = 'CIVILIZATION_SCECRL_POWHATAN' AND PolicyType IS NOT null AND PolicyType NOT IN (SELECT PolicyType FROM Policies);
--==========================================================================================================================
--====================================================================================================================
