-- Naxxramas Portals
UPDATE `gameobject_template` SET `ScriptName` = 'go_naxxramas_portal' WHERE `entry` IN (181575,181577,181578,181576);

-- AreaTrigger teleport removal
DELETE FROM `areatrigger_scripts` WHERE `entry` = 4156;