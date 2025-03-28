--
SET @CGUID := 3000402;
SET @OGUID := 3007689;

-- Old creature spawns
DELETE FROM `creature` WHERE `guid`=396403;
DELETE FROM `creature_addon` WHERE `guid`=396403;
DELETE FROM `waypoint_data` WHERE `id`=31712240;
DELETE FROM `game_event_creature` WHERE `guid`=396403;

-- Creature spawns
DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VerifiedBuild`) VALUES
(@CGUID+0, 22816, 1, 361, 1998, '0', 0, 0, 0, 0, 6200.27, -1897.3038, 568.16974, 0, 120, 0, 0, 188, 0, 2, NULL, NULL, NULL, NULL, 46366); -- Black Cat (Area: Talonbranch Glade  - Difficulty: 0)

SET @ENTRY := 22816;
SET @PATHOFFSET := 0;
SET @PATH := @ENTRY * 100 + @PATHOFFSET;
DELETE FROM `creature_addon` WHERE `guid`=@CGUID+0;
INSERT INTO `creature_addon` (`guid`, `path_id`, `mount`, `StandState`, `AnimTier`, `VisFlags`, `SheathState`, `PvpFlags`, `emote`, `aiAnimKit`, `movementAnimKit`, `meleeAnimKit`, `visibilityDistanceType`, `auras`) VALUES
(@CGUID+0, @PATH, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, ''); -- 22816 (Black Cat)

DELETE FROM `waypoint_data` WHERE `id`=@PATH;
INSERT INTO `waypoint_data` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `delay`) VALUES
(@PATH, 0, 6200.27, -1897.3038, 568.16974, NULL, 0),
(@PATH, 1, 6212.0635, -1902.507, 566.9387, NULL, 0);

-- Old gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN 245934 AND 246003;
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN 245934 AND 246003;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+69;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 1, 361, 1998, '0', 0, 0, 6204.93994140625, -1894.015625, 566.0648193359375, 3.176533222198486328, 0, 0, -0.999847412109375, 0.017469281330704689, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+1, 180405, 1, 361, 1998, '0', 0, 0, 6212.84033203125, -1940.75, 569.06573486328125, 2.44346022605895996, 0, 0, 0.939692497253417968, 0.34202045202255249, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+2, 180406, 1, 361, 1998, '0', 0, 0, 6199.3212890625, -1875.625, 567.36895751953125, 1.448621988296508789, 0, 0, 0.662619590759277343, 0.748956084251403808, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+3, 180406, 1, 361, 1998, '0', 0, 0, 6170.34033203125, -1912.560791015625, 567.6689453125, 1.186823248863220214, 0, 0, 0.559192657470703125, 0.829037725925445556, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+4, 180406, 1, 361, 1998, '0', 0, 0, 6257.98095703125, -1968.1927490234375, 570.51165771484375, 1.239183306694030761, 0, 0, 0.580702781677246093, 0.814115643501281738, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+5, 180407, 1, 361, 1998, '0', 0, 0, 6146.14306640625, -1916.32470703125, 568.02899169921875, 1.780233979225158691, 0, 0, 0.7771453857421875, 0.629321098327636718, 120, 255, 1, 46366), -- G_Pumpkin_03 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+6, 180407, 1, 361, 1998, '0', 0, 0, 6196.53466796875, -1946.9254150390625, 573.67523193359375, 4.97418975830078125, 0, 0, -0.60876083374023437, 0.793353796005249023, 120, 255, 1, 46366), -- G_Pumpkin_03 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+7, 180408, 1, 361, 1998, '0', 0, 0, 6139.10791015625, -1899.2742919921875, 572.59375, 2.635444164276123046, 0, 0, 0.96814727783203125, 0.250381410121917724, 120, 255, 1, 46366), -- G_WitchHat_01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+8, 180410, 1, 361, 1998, '0', 0, 0, 6219.6416015625, -1932.4427490234375, 571.20208740234375, 4.014260292053222656, 0, 0, -0.90630722045898437, 0.422619491815567016, 120, 255, 1, 46366), -- G_HangingSkeleton_01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+9, 180411, 1, 361, 1998, '0', 0, 0, 6151.96337890625, -1910.0208740234375, 571.94781494140625, 4.9218292236328125, 0, 0, -0.62932014465332031, 0.77714616060256958, 120, 255, 1, 46366), -- G_Ghost_01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+10, 180415, 1, 361, 1998, '0', 0, 0, 6186.94189453125, -1924.0538330078125, 569.16387939453125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+11, 180415, 1, 361, 1998, '0', 0, 0, 6161.4287109375, -1910.515625, 568.55352783203125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+12, 180415, 1, 361, 1998, '0', 0, 0, 6173.99462890625, -1930.7916259765625, 567.96295166015625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+13, 180415, 1, 361, 1998, '0', 0, 0, 6147.533203125, -1930.111083984375, 567.65966796875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+14, 180415, 1, 361, 1998, '0', 0, 0, 6175.8681640625, -1945.2117919921875, 567.76947021484375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+15, 180415, 1, 361, 1998, '0', 0, 0, 6157.11181640625, -1927.2847900390625, 567.596923828125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+16, 180415, 1, 361, 1998, '0', 0, 0, 6172.65185546875, -1950.4478759765625, 567.8326416015625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+17, 180415, 1, 361, 1998, '0', 0, 0, 6177.876953125, -1939.5989990234375, 567.63128662109375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+18, 180415, 1, 361, 1998, '0', 0, 0, 6171.47998046875, -1928.30908203125, 567.5225830078125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+19, 180415, 1, 361, 1998, '0', 0, 0, 6173.328125, -1957.5885009765625, 567.77093505859375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+20, 180415, 1, 361, 1998, '0', 0, 0, 6144.65625, -1932.5625, 567.63604736328125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+21, 180415, 1, 361, 1998, '0', 0, 0, 6176.7568359375, -1936.359375, 567.8721923828125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+22, 180415, 1, 361, 1998, '0', 0, 0, 6174.23681640625, -1948.1007080078125, 567.57501220703125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+23, 180415, 1, 361, 1998, '0', 0, 0, 6167.99755859375, -1926.4254150390625, 567.904296875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+24, 180415, 1, 361, 1998, '0', 0, 0, 6153.88525390625, -1927.3160400390625, 567.93292236328125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+25, 180415, 1, 361, 1998, '0', 0, 0, 6175.54150390625, -1933.8004150390625, 567.56280517578125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+26, 180415, 1, 361, 1998, '0', 0, 0, 6172.17724609375, -1954.7899169921875, 567.498291015625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+27, 180415, 1, 361, 1998, '0', 0, 0, 6160.33935546875, -1927.44970703125, 567.54718017578125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+28, 180415, 1, 361, 1998, '0', 0, 0, 6177.20751953125, -1942.7725830078125, 567.63751220703125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+29, 180415, 1, 361, 1998, '0', 0, 0, 6142.27099609375, -1934.8125, 567.8426513671875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+30, 180415, 1, 361, 1998, '0', 0, 0, 6174.80126953125, -1961.44970703125, 567.53863525390625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+31, 180415, 1, 361, 1998, '0', 0, 0, 6163.8212890625, -1926.63720703125, 567.53155517578125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+32, 180415, 1, 361, 1998, '0', 0, 0, 6150.47412109375, -1928.6302490234375, 567.50067138671875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+33, 180425, 1, 361, 1998, '0', 0, 0, 6187.04443359375, -1925.357666015625, 569.1531982421875, 4.293513298034667968, 0, 0, -0.8386697769165039, 0.544640243053436279, 120, 255, 1, 46366), -- SkullCandle01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+34, 180426, 1, 361, 1998, '0', 0, 0, 6188.14404296875, -1877.15625, 563.8330078125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+35, 180426, 1, 361, 1998, '0', 0, 0, 6195.95068359375, -1884.1978759765625, 570.4658203125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+36, 180426, 1, 361, 1998, '0', 0, 0, 6226.98876953125, -1912.015625, 562.3446044921875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+37, 180426, 1, 361, 1998, '0', 0, 0, 6227.81005859375, -1918.5208740234375, 581.6318359375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+38, 180426, 1, 361, 1998, '0', 0, 0, 6188.52880859375, -1890.282958984375, 582.65899658203125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+39, 180426, 1, 361, 1998, '0', 0, 0, 6225.8193359375, -1931.21533203125, 578.00732421875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+40, 180427, 1, 361, 1998, '0', 0, 0, 6194.408203125, -1879.9600830078125, 569.66204833984375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+41, 180427, 1, 361, 1998, '0', 0, 0, 6201.92431640625, -1873.7847900390625, 565.859375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+42, 180427, 1, 361, 1998, '0', 0, 0, 6189.8115234375, -1872.670166015625, 565.859375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+43, 180427, 1, 361, 1998, '0', 0, 0, 6230.0078125, -1939.578125, 581.58917236328125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+44, 180427, 1, 361, 1998, '0', 0, 0, 6222.70751953125, -1933.076416015625, 574.78515625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+45, 180427, 1, 361, 1998, '0', 0, 0, 6223.6015625, -1954.767333984375, 580.94427490234375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+46, 180471, 1, 361, 1998, '0', 0, 0, 6186.53125, -1913.65283203125, 575.09930419921875, 2.72271275520324707, 0, 0, 0.978147506713867187, 0.207912087440490722, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+47, 180471, 1, 361, 1998, '0', 0, 0, 6187.22314453125, -1913.8853759765625, 576.28857421875, 3.089183330535888671, 0, 0, 0.99965667724609375, 0.026201646775007247, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+48, 180471, 1, 361, 1998, '0', 0, 0, 6185.3994140625, -1914.09033203125, 573.92596435546875, 3.577930212020874023, 0, 0, -0.97629547119140625, 0.216442063450813293, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+49, 180471, 1, 361, 1998, '0', 0, 0, 6182.82666015625, -1917.6492919921875, 572.09906005859375, 4.677483558654785156, 0, 0, -0.71933937072753906, 0.694658815860748291, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+50, 180471, 1, 361, 1998, '0', 0, 0, 6183.5693359375, -1921.092041015625, 570.81134033203125, 5.445427894592285156, 0, 0, -0.40673637390136718, 0.913545548915863037, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+51, 180471, 1, 361, 1998, '0', 0, 0, 6183.3505859375, -1920.15625, 571.25811767578125, 5.305802345275878906, 0, 0, -0.46947097778320312, 0.882947921752929687, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+52, 180471, 1, 361, 1998, '0', 0, 0, 6186.111328125, -1922.9774169921875, 570.22979736328125, 5.619962215423583984, 0, 0, -0.32556724548339843, 0.945518851280212402, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+53, 180471, 1, 361, 1998, '0', 0, 0, 6183.49462890625, -1915.642333984375, 573.0003662109375, 3.822272777557373046, 0, 0, -0.94264125823974609, 0.333807557821273803, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+54, 180471, 1, 361, 1998, '0', 0, 0, 6184.734375, -1914.767333984375, 573.51690673828125, 3.90954136848449707, 0, 0, -0.92718315124511718, 0.37460830807685852, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+55, 180471, 1, 361, 1998, '0', 0, 0, 6187.86474609375, -1914.1510009765625, 577.24755859375, 2.809975385665893554, 0, 0, 0.986285209655761718, 0.165049895644187927, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+56, 180471, 1, 361, 1998, '0', 0, 0, 6190.2431640625, -1914.8038330078125, 581.08349609375, 3.071766138076782226, 0, 0, 0.999390602111816406, 0.034906134009361267, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+57, 180471, 1, 361, 1998, '0', 0, 0, 6189.4375, -1914.5191650390625, 579.86376953125, 3.001946926116943359, 0, 0, 0.997563362121582031, 0.069766148924827575, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+58, 180471, 1, 361, 1998, '0', 0, 0, 6185.978515625, -1913.5364990234375, 574.31280517578125, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+59, 180471, 1, 361, 1998, '0', 0, 0, 6183.17041015625, -1918.842041015625, 571.77288818359375, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+60, 180471, 1, 361, 1998, '0', 0, 0, 6184.3134765625, -1921.704833984375, 570.65460205078125, 5.550147056579589843, 0, 0, -0.358367919921875, 0.933580458164215087, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+61, 180471, 1, 361, 1998, '0', 0, 0, 6188.61474609375, -1914.2396240234375, 578.57666015625, 2.70525527000427246, 0, 0, 0.97629547119140625, 0.216442063450813293, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+62, 180471, 1, 361, 1998, '0', 0, 0, 6185.1865234375, -1922.2413330078125, 570.50421142578125, 5.6897735595703125, 0, 0, -0.29237174987792968, 0.956304728984832763, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+63, 180471, 1, 361, 1998, '0', 0, 0, 6183.041015625, -1916.5103759765625, 572.54534912109375, 4.1538848876953125, 0, 0, -0.8746194839477539, 0.484810054302215576, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+64, 180472, 1, 361, 1998, '0', 0, 0, 6213.955078125, -1928.5555419921875, 572.9891357421875, 3.612837791442871093, 0, 0, -0.97236919403076171, 0.233448356389999389, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+65, 180523, 1, 361, 1998, '0', 0, 0, 6165.01123046875, -1952.3316650390625, 567.84478759765625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Apple Bob (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+66, 185434, 1, 361, 1998, '0', 0, 0, 6223.1796875, -1880.592041015625, 566.0218505859375, 2.70525527000427246, 0, 0, 0.97629547119140625, 0.216442063450813293, 120, 255, 1, 46366), -- Sitting Skeleton 01 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+67, 185435, 1, 361, 1998, '0', 0, 0, 6201.3134765625, -1872.3367919921875, 566.74932861328125, 4.607671737670898437, 0, 0, -0.74314403533935546, 0.669131457805633544, 120, 255, 1, 46366), -- Sitting Skeleton 02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+68, 185454, 1, 361, 1998, '0', 0, 0, 6172.15087890625, -1911.2430419921875, 567.67572021484375, 3.159062385559082031, 0, 0, -0.99996185302734375, 0.008734640665352344, 120, 255, 1, 46366), -- Laying Skeleton 02 (Area: Talonbranch Glade  - Difficulty: 0)
(@OGUID+69, 208159, 1, 361, 1998, '0', 0, 0, 6158.0224609375, -1952.34375, 568.02911376953125, 2.391098499298095703, 0, 0, 0.930417060852050781, 0.366502493619918823, 120, 255, 1, 46366); -- Candy Bucket (Area: Talonbranch Glade  - Difficulty: 0)

-- Event spawns
DELETE FROM `game_event_creature` WHERE `eventEntry`=12 AND `guid`=@CGUID+0;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(12, @CGUID+0);

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+69;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(12, @OGUID+0),
(12, @OGUID+1),
(12, @OGUID+2),
(12, @OGUID+3),
(12, @OGUID+4),
(12, @OGUID+5),
(12, @OGUID+6),
(12, @OGUID+7),
(12, @OGUID+8),
(12, @OGUID+9),
(12, @OGUID+10),
(12, @OGUID+11),
(12, @OGUID+12),
(12, @OGUID+13),
(12, @OGUID+14),
(12, @OGUID+15),
(12, @OGUID+16),
(12, @OGUID+17),
(12, @OGUID+18),
(12, @OGUID+19),
(12, @OGUID+20),
(12, @OGUID+21),
(12, @OGUID+22),
(12, @OGUID+23),
(12, @OGUID+24),
(12, @OGUID+25),
(12, @OGUID+26),
(12, @OGUID+27),
(12, @OGUID+28),
(12, @OGUID+29),
(12, @OGUID+30),
(12, @OGUID+31),
(12, @OGUID+32),
(12, @OGUID+33),
(12, @OGUID+34),
(12, @OGUID+35),
(12, @OGUID+36),
(12, @OGUID+37),
(12, @OGUID+38),
(12, @OGUID+39),
(12, @OGUID+40),
(12, @OGUID+41),
(12, @OGUID+42),
(12, @OGUID+43),
(12, @OGUID+44),
(12, @OGUID+45),
(12, @OGUID+46),
(12, @OGUID+47),
(12, @OGUID+48),
(12, @OGUID+49),
(12, @OGUID+50),
(12, @OGUID+51),
(12, @OGUID+52),
(12, @OGUID+53),
(12, @OGUID+54),
(12, @OGUID+55),
(12, @OGUID+56),
(12, @OGUID+57),
(12, @OGUID+58),
(12, @OGUID+59),
(12, @OGUID+60),
(12, @OGUID+61),
(12, @OGUID+62),
(12, @OGUID+63),
(12, @OGUID+64),
(12, @OGUID+65),
(12, @OGUID+66),
(12, @OGUID+67),
(12, @OGUID+68),
(12, @OGUID+69);

--
SET @CGUID := 3000403;
SET @OGUID := 3007759;

-- Old creature spawns
DELETE FROM `creature` WHERE `guid`=396404;
DELETE FROM `game_event_creature` WHERE `guid`=396404;

-- Creature spawns
DELETE FROM `creature` WHERE `guid`=@CGUID+0;
INSERT INTO `creature` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `wander_distance`, `currentwaypoint`, `curhealth`, `curmana`, `MovementType`, `npcflag`, `unit_flags`, `unit_flags2`, `unit_flags3`, `VerifiedBuild`) VALUES
(@CGUID+0, 22816, 1, 361, 5645, '0', 0, 0, 0, 0, 6074.42041015625, -870.1185302734375, 411.9312744140625, 1.104033231735229492, 120, 10, 0, 188, 0, 1, NULL, NULL, NULL, NULL, 46366); -- Black Cat (Area: Whisperwind Grove - Difficulty: 0)

-- Old gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN 246004 AND 246045;
DELETE FROM `game_event_gameobject` WHERE `guid` BETWEEN 246004 AND 246045;

-- Gameobject spawns
DELETE FROM `gameobject` WHERE `guid` BETWEEN @OGUID+0 AND @OGUID+41;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `PhaseId`, `PhaseGroup`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES
(@OGUID+0, 180405, 1, 361, 5645, '0', 0, 0, 6044.70068359375, -854.79864501953125, 426.23907470703125, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+1, 180405, 1, 361, 5645, '0', 0, 0, 6077.2255859375, -904.217041015625, 414.751800537109375, 2.879789113998413085, 0, 0, 0.991444587707519531, 0.130528271198272705, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+2, 180405, 1, 361, 5645, '0', 0, 0, 6108.91845703125, -861.779541015625, 412.381256103515625, 5.113816738128662109, 0, 0, -0.55193614959716796, 0.833886384963989257, 120, 255, 1, 46366), -- G_Pumpkin_01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+3, 180406, 1, 361, 5645, '0', 0, 0, 6075.87158203125, -836.42706298828125, 414.82843017578125, 0.698131442070007324, 0, 0, 0.342020034790039062, 0.939692676067352294, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+4, 180406, 1, 361, 5645, '0', 0, 0, 6068.0380859375, -897.90277099609375, 414.751251220703125, 2.914689540863037109, 0, 0, 0.993571281433105468, 0.113208353519439697, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+5, 180406, 1, 361, 5645, '0', 0, 0, 6111.2021484375, -886.8524169921875, 413.499359130859375, 4.712389945983886718, 0, 0, -0.70710659027099609, 0.707106947898864746, 120, 255, 1, 46366), -- G_Pumpkin_02 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+6, 180407, 1, 361, 5645, '0', 0, 0, 6049.27783203125, -859.342041015625, 426.238861083984375, 2.70525527000427246, 0, 0, 0.97629547119140625, 0.216442063450813293, 120, 255, 1, 46366), -- G_Pumpkin_03 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+7, 180411, 1, 361, 5645, '0', 0, 0, 6044.845703125, -855.154541015625, 417.24658203125, 3.665196180343627929, 0, 0, -0.96592521667480468, 0.258821308612823486, 120, 255, 1, 46366), -- G_Ghost_01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+8, 180414, 1, 361, 5645, '0', 0, 0, 6074.19091796875, -890.6319580078125, 412.070953369140625, 2.356194972991943359, 0, 0, 0.923879623413085937, 0.382683247327804565, 120, 255, 1, 46366), -- Cauldron (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+9, 180415, 1, 361, 5645, '0', 0, 0, 6050.953125, -857.404541015625, 414.953521728515625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+10, 180415, 1, 361, 5645, '0', 0, 0, 6056.27099609375, -852.85418701171875, 412.649932861328125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+11, 180415, 1, 361, 5645, '0', 0, 0, 6050.95068359375, -847.72393798828125, 412.681793212890625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+12, 180415, 1, 361, 5645, '0', 0, 0, 6053.85400390625, -855.125, 413.743499755859375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+13, 180415, 1, 361, 5645, '0', 0, 0, 6049.0068359375, -849.82989501953125, 413.62890625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+14, 180415, 1, 361, 5645, '0', 0, 0, 6046.27880859375, -852.920166015625, 414.981048583984375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+15, 180415, 1, 361, 5645, '0', 0, 0, 6076.916015625, -890.1007080078125, 412.16094970703125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+16, 180415, 1, 361, 5645, '0', 0, 0, 6073.95751953125, -894.38714599609375, 414.7017822265625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+17, 180415, 1, 361, 5645, '0', 0, 0, 6071.61474609375, -897.8350830078125, 415.58111572265625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+18, 180415, 1, 361, 5645, '0', 0, 0, 6075.515625, -892.04864501953125, 413.573516845703125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+19, 180415, 1, 361, 5645, '0', 0, 0, 6076.3681640625, -900.98089599609375, 415.573760986328125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+20, 180415, 1, 361, 5645, '0', 0, 0, 6080.234375, -895.22052001953125, 413.568511962890625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+21, 180415, 1, 361, 5645, '0', 0, 0, 6081.609375, -893.19964599609375, 412.11846923828125, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+22, 180415, 1, 361, 5645, '0', 0, 0, 6078.58251953125, -897.7742919921875, 414.776214599609375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- CandleBlack01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+23, 180425, 1, 361, 5645, '0', 0, 0, 6076.36279296875, -888.920166015625, 413.872039794921875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- SkullCandle01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+24, 180426, 1, 361, 5645, '0', 0, 0, 6094.3837890625, -863.4444580078125, 427.66961669921875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+25, 180426, 1, 361, 5645, '0', 0, 0, 6088.12353515625, -871.203125, 427.66961669921875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+26, 180426, 1, 361, 5645, '0', 0, 0, 6086.35595703125, -858.8992919921875, 427.66961669921875, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+27, 180427, 1, 361, 5645, '0', 0, 0, 6096.9833984375, -864.3125, 431.452972412109375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+28, 180427, 1, 361, 5645, '0', 0, 0, 6083.6650390625, -867.373291015625, 431.452972412109375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+29, 180427, 1, 361, 5645, '0', 0, 0, 6091.09619140625, -874.11285400390625, 431.452972412109375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Bat02 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+30, 180471, 1, 361, 5645, '0', 0, 0, 6084.1181640625, -828.765625, 418.227935791015625, 0.366517573595046997, 0, 0, 0.182234764099121093, 0.98325502872467041, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+31, 180471, 1, 361, 5645, '0', 0, 0, 6085.23974609375, -828.16839599609375, 418.957427978515625, 0.331610709428787231, 0, 0, 0.16504669189453125, 0.986285746097564697, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+32, 180471, 1, 361, 5645, '0', 0, 0, 6086.26025390625, -827.1180419921875, 419.709930419921875, 0.24434557557106018, 0, 0, 0.121869087219238281, 0.9925462007522583, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+33, 180471, 1, 361, 5645, '0', 0, 0, 6088.7177734375, -826.3975830078125, 418.253875732421875, 0.226892471313476562, 0, 0, 0.113203048706054687, 0.993571877479553222, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+34, 180471, 1, 361, 5645, '0', 0, 0, 6087.515625, -826.92535400390625, 419.009674072265625, 0.261798173189163208, 0, 0, 0.130525588989257812, 0.991444945335388183, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+35, 180471, 1, 361, 5645, '0', 0, 0, 6067.7509765625, -910.63543701171875, 418.559478759765625, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+36, 180471, 1, 361, 5645, '0', 0, 0, 6065.3056640625, -909.03643798828125, 418.475494384765625, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+37, 180471, 1, 361, 5645, '0', 0, 0, 6066.53564453125, -909.888916015625, 418.993072509765625, 2.687806606292724609, 0, 0, 0.974370002746582031, 0.224951311945915222, 120, 255, 1, 46366), -- HangingSkullLight01 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+38, 180472, 1, 361, 5645, '0', 0, 0, 6107.1494140625, -892.09722900390625, 416.917510986328125, 2.408554315567016601, 0, 0, 0.933580398559570312, 0.358368009328842163, 120, 255, 1, 46366), -- HangingSkullLight02 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+39, 180523, 1, 361, 5645, '0', 0, 0, 6071.09912109375, -908.5399169921875, 415.229888916015625, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Apple Bob (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+40, 185436, 1, 361, 5645, '0', 0, 0, 6074.03564453125, -890.74652099609375, 412.646087646484375, 0, 0, 0, 0, 1, 120, 255, 1, 46366), -- Sitting Skeleton 03 (Area: Whisperwind Grove - Difficulty: 0)
(@OGUID+41, 208158, 1, 361, 5645, '0', 0, 0, 6065.92724609375, -905.00177001953125, 414.79315185546875, 1.937312245368957519, 0, 0, 0.824125289916992187, 0.566407561302185058, 120, 255, 1, 46366); -- Candy Bucket (Area: Whisperwind Grove - Difficulty: 0)

-- Event spawns
DELETE FROM `game_event_creature` WHERE `eventEntry`=12 AND `guid`=@CGUID+0;
INSERT INTO `game_event_creature` (`eventEntry`, `guid`) VALUES
(12, @CGUID+0);

DELETE FROM `game_event_gameobject` WHERE `eventEntry`=12 AND `guid` BETWEEN @OGUID+0 AND @OGUID+41;
INSERT INTO `game_event_gameobject` (`eventEntry`, `guid`) VALUES
(12, @OGUID+0),
(12, @OGUID+1),
(12, @OGUID+2),
(12, @OGUID+3),
(12, @OGUID+4),
(12, @OGUID+5),
(12, @OGUID+6),
(12, @OGUID+7),
(12, @OGUID+8),
(12, @OGUID+9),
(12, @OGUID+10),
(12, @OGUID+11),
(12, @OGUID+12),
(12, @OGUID+13),
(12, @OGUID+14),
(12, @OGUID+15),
(12, @OGUID+16),
(12, @OGUID+17),
(12, @OGUID+18),
(12, @OGUID+19),
(12, @OGUID+20),
(12, @OGUID+21),
(12, @OGUID+22),
(12, @OGUID+23),
(12, @OGUID+24),
(12, @OGUID+25),
(12, @OGUID+26),
(12, @OGUID+27),
(12, @OGUID+28),
(12, @OGUID+29),
(12, @OGUID+30),
(12, @OGUID+31),
(12, @OGUID+32),
(12, @OGUID+33),
(12, @OGUID+34),
(12, @OGUID+35),
(12, @OGUID+36),
(12, @OGUID+37),
(12, @OGUID+38),
(12, @OGUID+39),
(12, @OGUID+40),
(12, @OGUID+41);
