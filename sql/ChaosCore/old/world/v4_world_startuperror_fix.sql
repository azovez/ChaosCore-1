-- Startup Errors
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `spell_script_names` WHERE `spell_id`=29371;
INSERT INTO `spell_script_names` (`spell_id`,`ScriptName`)
VALUES
(29371,'spell_heigan_eruption');

DELETE FROM `disables` WHERE `entry` IN (7264,7548);
DELETE FROM `achievement_criteria_data` WHERE `criteria_id` IN (7264,7548) AND `type`=11;
INSERT INTO `achievement_criteria_data` (`criteria_id`,`type`,`value1`,`value2`,`ScriptName`)
VALUES
(7264,11,0,0,'achievement_safety_dance'),
(7548,11,0,0,'achievement_safety_dance');