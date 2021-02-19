-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-01-2021 a las 06:44:15
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_apps`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apps`
--

CREATE TABLE `apps` (
  `id_app` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `price` decimal(10,2) UNSIGNED NOT NULL,
  `detail` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `creation_date` datetime NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `apps`
--

INSERT INTO `apps` (`id_app`, `name`, `price`, `detail`, `image`, `image1`, `image2`, `image3`, `id_category`, `creation_date`, `id_user`) VALUES
(1, 'BRIO World - Railway', '2.89', 'In this app you can build your own railway with all the classic parts from the world of BRIO. You can lay down tracks, place stations and figures, combine your own train sets and travel out to solve missions in an amazing train world.\r\n\r\nThe app stimulates creative play where kids can create their own world and play freely. When they play in the world and solve missions they receive more elements to build with.\r\n\r\nFeatures\r\n- Build your own railway with an awesome collection of parts\r\n- Create amazing train sets with more than 50 different train parts\r\n- Jump into the trains and ride on your own track\r\n- Help the characters in different missions in the world and collect joy to unlock new elements to build with\r\n- Load cargo with cranes\r\n- Feed the animals to make them happy\r\n- Create up to five different profiles in the app\r\n', '..\\web\\img\\BRIOWorldRailway.jpg', '..\\web\\img\\BRIOWorldRailway1.jpg', '..\\web\\img\\BRIOWorldRailway2.jpg', '..\\web\\img\\BRIOWorldRailway3.jpg', 8, '2021-01-17 00:10:44', 1),
(2, 'Geometry Dash', '1.99', 'Jump and fly your way through danger in this rhythm-based action platformer!\r\n\r\nPrepare for a near impossible challenge in the world of Geometry Dash. Push your skills to the limit as you jump, fly and flip your way through dangerous passages and spiky obstacles.\r\n\r\nSimple one touch game play with lots of levels that will keep you entertained for hours!\r\n', '..\\web\\img\\GeometryDashPerfil.jpg', '..\\web\\img\\GeometryDash1.jpg', '..\\web\\img\\GeometryDash2.jpg', '..\\web\\img\\GeometryDash3.jpg', 3, '2021-01-17 00:30:13', 1),
(3, 'The Room: Old Sins', '4.99', 'La cuarta entrega de la serie ‘’The Room’’.\r\n\r\nEntra en The Room: Old Sins y conoce un mundo basado en la exploración táctil con puzles desafiantes y una historia cautivadora.\r\nUn ambicioso ingeniero y su adinerada mujer desaparecen súbitamente, lo que da comienzo a la caza de un preciado artefacto. El rastro lleva hasta el ático de su hogar, donde se encuentra una vieja casa de muñecas de lo más peculiar...\r\nExplora lugares inquietantes, sigue pistas misteriosas y manipula artilugios extravagantes para desentrañar los misterios de la mansión Waldegrave.', '..\\web\\img\\TheRoomsOldSinsPerfil.jpg', '..\\web\\img\\TheRoomsOldSins1.jpg', '..\\web\\img\\TheRoomsOldSins2.jpg', '..\\web\\img\\TheRoomsOldSins3.jpg', 10, '2021-01-18 00:19:11', 3),
(4, 'TVcade : Android TV Arcade', '0.99', 'On sale for only .99! 60 Fun games for your Android TV. No ads, no in app purchases. TVcade works best when your device is running at 60hz video refresh. Works with the standard remote controller. Designed with the casual game player in mind. TVcade includes a mix of mini (and some not so mini!) arcade, matching, card, puzzle, action, shoot-em-up, games and more. Super easy to play using just one hand and the standard Android TV controller. If you enjoy TVcade please consider reviewing the app. With your support we look forward to adding more games to TVcade!', '..\\web\\img\\TVcadeAndroid.jpg', '..\\web\\img\\TVcadeAndroid1.jpg', '..\\web\\img\\TVcadeAndroid2.jpg', '..\\web\\img\\TVcadeAndroid3.jpg', 3, '2021-01-18 00:32:06', 3),
(5, 'GRID™ Autosport\r\n', '13.67', 'Ignite your high-speed career as a pro-racer in GRID Autosport, engineered to deliver an irresistible mix of simulation handling and arcade thrills.\r\n\r\nBUY ONCE, RACE FOREVER\r\nGet the complete AAA hit and all its DLC in one simple purchase.\r\n\r\n100 CARS AND 100 CIRCUITS\r\nUnleash a ton of high-performance rides across a ton of tracks, roads, laps and loops.\r\n\r\nCUSTOMISABLE CONTROLS\r\nSwitch between intuitive customisable controls: Tilt, Wheel Touch, Arrow Touch or gamepad.\r\n\r\nSCALABLE DIFFICULTY\r\nFrom nice ‘n easy to devilishly hard, you set the bar.\r\n\r\nMASTER A RANGE OF DISCIPLINES\r\nCompete across Open-Wheel, Tuner, Touring, Endurance, Demolition, Drift, Drag and Street Races.', '..\\web\\img\\GRIDAutosport.jpg', '..\\web\\img\\GRIDAutosport1.jpg', '..\\web\\img\\GRIDAutosport2.jpg', '..\\web\\img\\GRIDAutosport3.jpg', 11, '2021-01-18 00:32:06', 1),
(6, 'Cultist Simulator', '8.50', 'In this infamous roguelike narrative card game, play as a seeker after unholy mysteries in a 1920s-themed setting of hidden gods and secret histories. Become a scholar of the unseen arts. Craft tools and summon spirits. Indoctrinate innocents. Seize your place as the herald of a new age.\r\n\r\nThis award-winning game was first released on PC and has more than 200,000 players all over the world. Now we’re bringing the cosmic mysteries of Cultist Simulator to mobile.', '..\\web\\img\\CultistSimulatorPerfil.jpg', '..\\web\\img\\CultistSimulator1.jpg', '..\\web\\img\\CultistSimulator2.jpg', '..\\web\\img\\CultistSimulator3.jpg', 5, '2021-01-18 00:43:50', 2),
(7, 'NBA JAM by EA SPORTS™', '6.66', '\r\n\r\nJam with your favorite stars from all 30 NBA teams in over-the-top, high-flying, 2-on-2 arcade basketball just like you remember it – and like you’ve never seen before!\r\n\r\n** NBA JAM is a larger-than-life game (300MB+), so we strongly recommend connecting to WiFi before downloading. Trust us, this Jam is worth the wait.**\r\n\r\nPLAY NOW! PLAY CLASSIC! PLAY HEAD-TO-HEAD AGAINST A FRIEND!\r\n4 modes of play let you ball the way you want:\r\n• Play Now – Select a team and jump right into the ballgame.\r\n• Classic Campaign – Defeat all other teams to win the championship, and unlock legends, hidden players, and outrageous cheats.\r\n• Local Multiplayer – Go big head 2 big head against a friend via local WiFi or Bluetooth\r\n• Online Multiplayer – Challenge your Google+ friends to play head-to-head online (All online multiplayers must be updated to the latest version of NBA Jam for optimized gameplay).', '..\\web\\img\\NBAJAMEASPORTS.jpg', '..\\web\\img\\NBAJAMEASPORTS1.jpg', '..\\web\\img\\NBAJAMEASPORTS2.jpg', '..\\web\\img\\NBAJAMEASPORTS3.jpg', 14, '2021-01-18 00:43:50', 2),
(8, 'Stickman Legends: Shadow War - Fighting', '0.26', 'In shadow wars, Stickman Warriors is on a journey to conquer the dark world in this dangerous game full of many Swords, Weapons, Skills. Stickman Warriors can master the Sword game with their precision controls and skills to use the right weapons at the right time. Do you have the drive, courage, and passion to help our Stickman warriors dominate this Stickman battle?\r\n\r\nTHE LEGENDARY BATTLE\r\nIn Stickman Legends, each Stickman needs to fight the dangerous creatures that are constantly attacking him. Whenever you want to cut them, slash them use the big controls at the bottom right to kill or avoid being killed. It is an incredibly tough battle all the time and if you show great skills you will have the ability to make your stick hero really powerful. In Survival of the fittest, you will be full of rage, you will be the greatest hero of all time, so use your skill very carefully and try not to get hit hard by the monters and their magical legion.', '..\\web\\img\\StickmanLegends.jpg', '..\\web\\img\\StickmanLegends1.jpg', '..\\web\\img\\StickmanLegends2.jpg', '..\\web\\img\\StickmanLegends3.jpg', 1, '2021-01-19 17:22:57', 1),
(9, 'Timing Hero VIP : Retro Fighting Action', '3.65', 'Enjoy one of the best rpg with great hero battles and combats. Select from various heroes, upgrades, weapons and battle with fearful enemies. This retro rpg features 8-bit graphics and music and will completely remind you of the old-school games. You’ll love every second of it, as it is ultra-fun, easy to play and highly enjoyable. Start the game and enjoy a hero battle, but watch out there will be some really dangerous enemies. See why we are one of the best free rpg games for Android!\r\n\r\n▣ CAPTIVATING STORYLINE\r\nLong ago, there was an archmage with a mystic power. She protected the kingdom with her 12 apostles. One day, after the king passed away, they disappeared without a notice, then an endless war against the monsters began. The legend says that only a hero with the artifacts of archmage and apostles can end this war. People waited, for the chosen one, hoping the legend was true. for a long time.', '..\\web\\img\\TimingHeroVIP.jpg', '..\\web\\img\\TimingHeroVIP1.jpg', '..\\web\\img\\TimingHeroVIP2.jpg', '..\\web\\img\\TimingHeroVIP3.jpg', 1, '2021-01-19 17:22:57', 1),
(10, 'Shadow Knight: Era of Legends - Juego De Lucha', '0.90', 'Hot Sale is here! Hurry up and get the most stunning items and unique skins for free to equip your unique hero and fight to become Shadow Legends.\r\nThe beautiful and brightly world of Harmonia was a land to live of Mortal races including Human, Undead, Orc, Spirit, Dwarf, Beast man, Elf, etc. But then one day, when deep desires arose, a tragedy struck that made everything in vain darkness, irony just because of a Guilty Favor.\r\n\r\nTo save the world of Harmonia from the shadow wars, as a Shadow Knight Premium, battle epic monsters, fight evil enemies to defeat the immortals of Darkness and bring back the light to Harmonia. Will you be that forceful Shadow Knight Premium?\r\n\r\nDownload and Join the fight now!', '..\\web\\img\\ShadowKnightLegends.jpg', '..\\web\\img\\ShadowKnightLegends1.jpg', '..\\web\\img\\ShadowKnightLegends2.jpg', '..\\web\\img\\ShadowKnightLegends3.jpg', 1, '2021-01-19 17:22:57', 2),
(11, 'Zombie Age 3: Rules of Survival', '1.00', '★★★★ Zombie Age 3 Premium, a Totally Ads Banner FREE Version! ★★★★\r\n\r\nThe awesome Zombie Age series returns with a lot more of savage zombies, deadly weapons and unique heroes. Enjoy the zombie slaughter with your own style. And If you’re about to look for the best zombie shooting game, look no further!\r\n\r\n\r\nFEATURES\r\n★ Enjoy the zombie slaughter in many different ways\r\n★ 30+ deadly weapons at your disposal\r\n★ 20+ characters with unique abilities to develop\r\n★ 10+ different zombies & horrible bosses\r\n★ Up to 10 game modes with thrillingly tough boss battles\r\n★ Achievements & Global Leaderboards\r\n★ Tons of missions\r\n★ Tablets supported\r\n★ Truly HD graphic', '..\\web\\img\\ZombieAge.jpg', '..\\web\\img\\ZombieAge1.jpg', '..\\web\\img\\ZombieAge2.jpg', '..\\web\\img\\ZombieAge3.jpg', 1, '2021-01-19 17:22:57', 1),
(12, 'Dungeon Shooter : The Forgotten Temple', '1.49', 'This is a fun and cool FPS indie game, which has some features of RPG games. Players play as a shooter to adventure in tombs and dungeons, challenge unknown creatures, and dig for treasures. The game is rich in content and has multiple game elements, including pets, artifacts, runes, and guns ,etc.... Their reasonable combination will make the battle fun and diversified. hope you find your own fun in the game.', '..\\web\\img\\DungeonShooter.jpg', '..\\web\\img\\DungeonShooter1.jpg', '..\\web\\img\\DungeonShooter2.jpg', '..\\web\\img\\DungeonShooter3.jpg', 1, '2021-01-19 17:22:57', 2),
(13, 'Stickman Master: League Of Shadow - Ninja', '0.26', 'Be the legend ninja master shadow warrior and enjoy the incredible fighting adventure in STICKMAN MASTER: Ninja Legends - shadow RPG, stickman ninja offline game. Collect powerful weapon, greatsword, armor,..; fight in league, complete quests. Hack and slash monsters and end this offline game rapidly!\r\n\r\nCombat many different monsters with greatsword, bow and hammer in this shadow warrior RPG game of stickman fight.\r\nThe stick man game - offline game STICKMAN MASTER: Ninja Legends with character creation!\r\n▪️ Many heroes concepts selections.\r\n▪️ Dynamic hack and slash stickman hero upgrade system.\r\n▪️ Hundreds pieces of powerful equipment in arsenal.', '..\\web\\img\\StickmanMaster.jpg', '..\\web\\img\\StickmanMaster1.jpg', '..\\web\\img\\StickmanMaster2.jpg', '..\\web\\img\\StickmanMaster3.jpg', 1, '2021-01-19 17:22:57', 2),
(14, 'Stickman Ghost 2: Gun Sword - Shadow Action', '0.26', 'Stickman Ghost 2 - The best RPG game - offline action game 2019!\r\n\r\nStickman Ghost 2: Gun Sword is the best offline RPG game that you have never experienced. This offline RPG game is also the perfect combination between fighting games and action games. In this League of Stickman version, the stick hero returns to a more attractive, challenging gameplay in a combination of stick and war games. Transform into a ninja superman.\r\n\r\nStickman people in Stickman game to fight stick and robot enemies. In this new version of the game, the stickman superman in Stickman game will come back with the fight screen as well as shooting in the galaxy extremely attractive. Promise to be the best game of 2017.', '..\\web\\img\\StickmanGhost.jpg', '..\\web\\img\\StickmanGhost1.jpg', '..\\web\\img\\StickmanGhost2.jpg', '..\\web\\img\\StickmanGhost3.jpg', 1, '2021-01-19 17:22:57', 1),
(15, 'Teach Your Monster to Read: Phonics\r\n\r\n', '5.70', '\r\n\r\n\r\nBAFTA-nominated, government approved and played over 160 million times by over 16 million kids.\r\n\r\nTeach Your Monster to Read is an award-winning phonics and reading game that’s helped millions of children learn to read.\r\n\r\n• Parents have seen significant improvements in their children’s literacy within weeks.\r\n• Teachers claim it’s a wonderful and captivating classroom tool that helps their students learn to read.\r\n• Kids love making their monster and teaching it read. They learn through play.\r\n\r\nChildren create a monster and take it on a magical journey over three extensive games - meeting a host of colourful characters along the way and improving their reading skills as they progress.\r\n\r\n• Covers the first two years of learning to read, from matching letters and sounds to enjoying little books.\r\n• Designed in collaboration with leading academics and game designers.\r\n• Complements all synthetic phonics programmes used in schools.\r\n• Suitable for school and home use.\r\n• Includes all 3 educational games! First Steps, Fun With Words and Champion Reader!', '..\\web\\img\\TeachYourMonster.jpg', '..\\web\\img\\TeachYourMonster1.jpg', '..\\web\\img\\TeachYourMonster2.jpg', '..\\web\\img\\TeachYourMonster3.jpg', 8, '2021-01-19 17:22:57', 2),
(16, 'Hitman Sniper', '1.08', 'Step into the shoes of Agent 47 in Hitman Sniper and play the best sniper shooting game on mobile.\r\n\r\nPLAY A TACTICAL SNIPER MISSION GAME\r\nStrike with strategic shooting skills, fulfilling your duty to orchestrate the perfect assassination kill shot.\r\n\r\n\r\nBATTLE ZOMBIES IN DEATH VALLEY\r\nCall on non-stop shooting action as a zombie hunter, in a true battle of your skills and speed of execution.\r\n\r\n150+ MISSIONS & 10 DIFFERENT CONTRACTS\r\nImprove your strike skills on mobile for the perfect assassination as you uncover secrets and subterfuges in this fun game.\r\n\r\nMOST BEAUTIFUL SNIPER GAME\r\nAwesome and smooth graphics that make for addictive gameplay on top of a thrilling story.', '..\\web\\img\\HitmanSniper.jpg', '..\\web\\img\\HitmanSniper1.jpg', '..\\web\\img\\HitmanSniper2.jpg', '..\\web\\img\\HitmanSniper3.jpg', 1, '2021-01-19 17:22:57', 1),
(17, 'Shadow of Death: Dark Knight - Stickman', '0.95', '🏆 Premium feature: Unlock all 4 characters including the fan-favourite Lunae - the beautiful Keeper of Time and Space with a powerful high-speed scythe attack!\r\n🎯 Note: This is a stand-alone game. You cannot transfer your data from the free version to the paid version.\r\n\r\nA Brand New Dark Fantasy Epic\r\nPlunge into the darkness and experience the greatest pocket sized fantasy RPG of the ages. Whip out that shadow blade and select a customizable dark knight to go on a side scroller adventure anywhere at anytime. Freely experiment with multiple gameplay styles, wicked rare armor sets, and robust skill trees to create the powerful shadow knight possible. An offline fighting game with the soul of a console RPG is not what this generation of gamers deserves, but needs! The shadow of war is rising, will you accept the challenge?', '..\\web\\img\\ShadowofDeath.jpg', '..\\web\\img\\ShadowofDeath1.jpg', '..\\web\\img\\ShadowofDeath2.jpg', '..\\web\\img\\ShadowofDeath3.jpg', 1, '2021-01-19 17:22:57', 3),
(18, 'Legend Guardians: Epic Heroes Fighting', '0.26', '🏆Legend Guardians Premium offers you:\r\n✅Unlock 2 characters: Katerine, Brad.\r\n✅Free 200 gems.\r\n✅Free 5.000 gold.\r\n✅No interstitial ads.\r\n\r\nLegend Guardians: Epic Heroes is a combination of RPG games and action games. This game is an offline RPG game that doesn’t need an internet connection or wifi to be experienced.\r\nYou can summon heroes from dozens of different heroes. Your heroes will be the guardians. Select your favorite heroes and fight your way with multiple gameplay styles.\r\n\r\nYour mission is to rescue the kingdoms that are occupied by dark forces. With each battle, you need to use the right heroes with your strategy, upgrade your weapons and items, collect awesome skins to become the strongest warriors.', '..\\web\\img\\LegendGuardians.jpg', '..\\web\\img\\LegendGuardians1.jpg', '..\\web\\img\\LegendGuardians2.jpg', '..\\web\\img\\LegendGuardians3.jpg', 1, '2021-01-19 17:22:57', 3),
(19, 'Peppa Pig: Holiday\r\n', '4.11', '\r\nRanked in the top 10 family apps in 29 countries since launch.\r\n\r\nPeppa is going on holiday and she wants you to join her travels in this official app.\r\n\r\nFans of the show will love this holiday inspired adventure, which encourages them to explore the wonderful world of Peppa through interactive games and activities, featuring much loved characters, music and sound effects.\r\n\r\nFEATURES\r\n\r\nFun-filled games featuring Peppa, George and their family and friends:\r\n\r\n• Take part in a swimming race\r\n• Make a pizza with Peppa and George\r\n• Help Aunty Goat make delicious ice-cream for everyone\r\n• Travel through the airport\r\n• Dress Peppa and George for the beach\r\n• Create a postcard to capture Peppa’s holiday adventure', '..\\web\\img\\PeppaPigHoliday.jpg', '..\\web\\img\\PeppaPigHoliday1.jpg', '..\\web\\img\\PeppaPigHoliday2.jpg', '..\\web\\img\\PeppaPigHoliday3.jpg', 8, '2021-01-19 17:22:57', 3),
(20, 'Assassin\'s Creed Identity', '2.21', '* Requires an online connection to play.\r\n\r\nPlay now the first ACTION RPG game of the acclaimed ASSASSIN’S CREED Franchise.\r\nExplore the ITALIAN RENAISSANCE through the eyes of your OWN ASSASSIN, complete dozens of missions and unravel the epic mystery of The Crows.\r\n\r\n\r\nWHAT THEY SAID ABOUT US:\r\n• “the graphics look spectacular” cnet.com\r\n• “a proper bonafide Assassin’s Creed game” pocketgamer\r\n• “gorgeous graphics” phonearena.com\r\n\r\n\r\nCREATE, EVOLVE AND CUSTOMIZE YOUR ASSASSIN!\r\n- Pick a CLASS: Choose between Berserker, Shadow Blade, Trickster and Thief\r\n- CUSTOMIZE your Assassins: Use loot, choose your outfits and weapons like epic swords and the iconic hidden blade.\r\n- Make your Assassin EVOLVE from NOVICE to MASTER!', '..\\web\\img\\Assassin\'sCreedIdentity.jpg', '..\\web\\img\\Assassin\'sCreedIdentity1.jpg', '..\\web\\img\\Assassin\'sCreedIdentity2.jpg', '..\\web\\img\\Assassin\'sCreedIdentity3.jpg', 1, '2021-01-19 17:22:57', 1),
(21, 'Cyber Fighters: League of Cyberpunk Stickman', '0.26', 'A BRAND NEW EPIC CYBERPUNK FANTASY ACTION GAME\r\n🏆 Premium Feature: 2 unique costumes for Brandon (swordmaster class) and Hachi (archer class).\r\nHurry up and get stunning costumes for free to equip your unique cyber fighters. It\'s time for you to become the Legend Cyber Fighter!\r\nCyber Fighters is a free-to-play of the new shadow stickman style game in cyberpunk theme, a great combination of action game, role-playing (RPG), and player versus player.\r\n\r\nA new experience for players to enjoy the classic fantasy action fighting game. You will be amazed that Cyber Fighters is an offline cyberpunk game, which doesn\'t need the internet to dive in a fantasy world & fighting the epic shadow battle. Fight in your own way because you can select among 5 unique cyber fighters with diversity skill & battle style. You can choose Cyber Officer Swordsman, The Punisher of God Thunder, The Queen Bee Archer Assassins, Cyborg Senseless Killer, and The Deathly Shadow Panther.', '..\\web\\img\\CyberFighters.jpg', '..\\web\\img\\CyberFighters1.jpg', '..\\web\\img\\CyberFighters2.jpg', '..\\web\\img\\CyberFighters3.jpg', 1, '2021-01-19 17:22:57', 3),
(22, 'Grand Theft Auto: San Andreas', '6.99', 'Five years ago, Carl Johnson escaped from the pressures of life in Los Santos, San Andreas, a city tearing itself apart with gang trouble, drugs and corruption. Where filmstars and millionaires do their best to avoid the dealers and gangbangers.\r\n\r\nNow, it’s the early 90’s. Carl’s got to go home. His mother has been murdered, his family has fallen apart and his childhood friends are all heading towards disaster.\r\n\r\nOn his return to the neighborhood, a couple of corrupt cops frame him for homicide. CJ is forced on a journey that takes him across the entire state of San Andreas, to save his family and to take control of the streets.', '..\\web\\img\\GrandTheftAutoSanAndreas.jpg', '..\\web\\img\\GrandTheftAutoSanAndreas1.jpg', '..\\web\\img\\GrandTheftAutoSanAndreas2.jpg', '..\\web\\img\\GrandTheftAutoSanAndreas3.jpg', 1, '2021-01-19 17:22:57', 1),
(23, 'Live or Die: Zombie Survival Pro', '1.20', 'Survivor, we’re glad you’re not dead! The apocalypse came when we least expected it, survivor, all we’re left with is brutal survival… The virus outbreak wiped out almost the entire population leaving behind nothing but dead wasteland where each survivor is forced to fight for survival against zombies. The biological weapon killed billions and turned others into dead zombies. But you are not the only survivor! Some people are also fighting for survival against dead. We’re already spread too thin in this apocalypse to help you, but we’ll give you knowledge vital to survive in the dead wasteland. The fight for your survival will be brutal. Survive, explore and pass your post apocalypse survival story from one survivor to another! Take this survival protocol, may the apocalypse spare you!', '..\\web\\img\\LiveorDieZombie.jpg', '..\\web\\img\\LiveorDieZombie1.jpg', '..\\web\\img\\LiveorDieZombie2.jpg', '..\\web\\img\\LiveorDieZombie3.jpg', 2, '2021-01-20 11:13:14', 2),
(24, 'Epic Heroes War: Shadow Lord Stickman', '0.26', 'Premium = 1$ --> 5$ = 30k gems. Epic RPG real-time strategy action game.\r\n\r\nEpic Heroes War is a real-time strategy game, online side-scroller defense combines RPG. Build up a powerful army and slaughter enemy hordes in quests and battles with other players!\r\n\r\nKey features:\r\n\r\n★ An unique game, not duplicated with other games on the Store\r\n★ Lot of heroes with unique skills\r\n★ Lot of campaign levels, Online PvP, Domination, Challenge, Heaven & Hell map ...\r\n★ Local Bosses\r\n★ Nation War\r\n★ World Bosses\r\n★ Auction\r\n★ Boss party\r\n★ Guild War\r\n★ Arena\r\n★ Real-time strategy PvP 1VS1 battle.', '..\\web\\img\\EpicHeroesWar.jpg', '..\\web\\img\\EpicHeroesWar1.jpg', '..\\web\\img\\EpicHeroesWar2.jpg', '..\\web\\img\\EpicHeroesWar3.jpg', 2, '2021-01-20 11:13:14', 2),
(25, 'Alien: Blackout', '0.99', 'The terror of Alien is brought to life in Alien: Blackout. Try to stay alive while trapped aboard a crippled Weyland-Yutani space station carrying a deadly Xenomorph as it tirelessly hunts you and the crew. Outsmart the perfect hunter by making perilous choices. Players must rely on the damaged controls of the space station or risk sacrificing crew members to avoid deadly contact, permanently altering the outcome of the game.\r\n\r\nSurvive seven fear-inducing levels by remotely guiding Amanda Ripley\'s crew through increasingly challenging tasks using only the station’s emergency systems. The uncertainty and unpredictability of both the alien and her crew can impose total defeat for Amanda and the entire station.\r\n\r\nAlien: Blackout is a unique fear-inducing horror premium mobile game experience that will test the inner nerves of both Alien and horror fans alike, where life can end in an instant.', '..\\web\\img\\AlienBlackout.jpg', '..\\web\\img\\AlienBlackout1.jpg', '..\\web\\img\\AlienBlackout2.jpg', '..\\web\\img\\AlienBlackout3.jpg', 2, '2021-01-20 11:13:14', 2),
(26, '60 Seconds! Atomic Adventure', '3.75', 'As Ted, a responsible citizen and a family man, you are faced with a slight disturbance to your happy, suburban lifestyle. THE NUCLEAR APOCALYPSE.\r\n\r\nWith only 60 seconds left to impact, guide Ted in a mad, intense and action packed dash through his house in search of his family and useful supplies. Everything will be against you - time, your very own furniture, the house that\'s different every time you play and the fundamental question - what to take with you and who to leave behind?', '..\\web\\img\\60Seconds.jpg', '..\\web\\img\\60Seconds1.jpg', '..\\web\\img\\60Seconds2.jpg', '..\\web\\img\\60Seconds3.jpg', 2, '2021-01-20 11:13:14', 2),
(27, 'LIMBO', '4.90', 'Uncertain of his sister\'s fate, a boy enters LIMBO.\r\n\r\nWhat the press said:\r\n“Limbo is as close to perfect at what it does as a game can get.”\r\n10/10 – Destructoid\r\n“The game is a masterpiece.”\r\n5/5 – GiantBomb\r\n“Limbo is genius. Freaky, weird genius. Disturbing, uncomfortable genius.”\r\n5/5 – The Escapist', '..\\web\\img\\LIMBO.jpg', '..\\web\\img\\LIMBO1.jpg', '..\\web\\img\\LIMBO2.jpg', '..\\web\\img\\LIMBO3.jpg', 2, '2021-01-20 11:13:14', 2),
(28, 'Forager', '7.99', 'Forager is a 2D open world game inspired by your favorite exploration, farming and crafting games.\r\n\r\n- Gather, collect and manage resources.\r\n- Craft useful items & structures.\r\n- Build and grow a base out of nothing. Buy land to expand and explore.\r\n- Level up and learn new skills, abilities, and blueprints.\r\n- Solve puzzles, find secrets and raid dungeons!\r\n- Achieve anything you want! The choice is yours, you set your own goals to work towards!\r\n\r\nStart small and improve your base, skills, equipment, network of friends (and enemies!) and build your future as you see fit!', '..\\web\\img\\Forager.jpg', '..\\web\\img\\Forager1.jpg', '..\\web\\img\\Forager2.jpg', '..\\web\\img\\Forager3.jpg', 2, '2021-01-20 11:13:14', 2),
(29, 'Machinarium', '3.02', 'Machinarium is the award-winning independent adventure game developed by the makers of Samorost series, Botanicula and CHUCHEL.\r\n\r\nHelp Josef the robot to save his girlfriend Berta kidnapped by the Black Cap Brotherhood gang.\r\n\r\n\"Absolutely Fantastic\" - TouchArcade\r\n4/4 - USA TODAY\r\n4/4 - SlideToPlay\r\n9/10 - Pocket Gamer', '..\\web\\img\\Machinarium.jpg', '..\\web\\img\\Machinarium1.jpg', '..\\web\\img\\Machinarium2.jpg', '..\\web\\img\\Machinarium3.jpg', 2, '2021-01-20 11:13:14', 2),
(30, 'Terraria', '5.43', 'DIG! FIGHT! EXPLORE! BUILD! Join the community of millions of Terrarians!\r\n\r\n\r\nTERRARIA MOBILE REBUILT FROM THE GROUND UP – NEW AND IMPROVED AND NOW INCLUDING ALL OF THE CONTENT FROM THE EPIC JOURNEY’S END 1.4 UPDATE!\r\n\r\n\"This is the full version of Terraria, built from the ground up... If you loved it on PC or consoles, you’ll love it here.” - Slide To Play\r\nThe very world is at your fingertips as you fight for survival, fortune, and glory. Delve deep into cavernous expanses, seek out ever-greater foes to test your mettle in combat, or construct your own city - In the World of Terraria, the choice is yours!', '..\\web\\img\\Terraria.jpg', '..\\web\\img\\Terraria1.jpg', '..\\web\\img\\Terraria2.jpg', '..\\web\\img\\Terraria3.jpg', 2, '2021-01-20 11:13:14', 2),
(31, 'LEGO® Jurassic World™', '4.99', 'Following the epic storylines of Jurassic Park, The Lost World: Jurassic Park and Jurassic Park III, as well as the global smash hit Jurassic World, LEGO Jurassic World™ is the first videogame where you can relive and experience all four colossal films. Reimagined in LEGO form and told in TT Games’ signature classic LEGO humor, this thrilling adventure recreates unforgettable scenes and action sequences from the films, allowing fans worldwide to play through key moments and giving them the opportunity to fully explore the expansive grounds of Isla Nublar and Isla Sorna.', '..\\web\\img\\LEGOJurassicWorld.jpg', '..\\web\\img\\LEGOJurassicWorld1.jpg', '..\\web\\img\\LEGOJurassicWorld2.jpg', '..\\web\\img\\LEGOJurassicWorld3.jpg', 2, '2021-01-20 11:13:14', 2),
(32, 'LEGO® Ninjago: Shadow of Ronin', '4.99', 'There is a new threat in Ninjago, and he goes by the name of Ronin. With help from his army of dark samurai, Ronin steals the Ninjas’ memories using an ancient weapon called the Obsidian Glaive.\r\n\r\nIn LEGO® Ninjago™: Shadow of Ronin™, it is up to players to help the Ninjas regain their memories and reclaim their powers before Ronin completes his plan and releases an even greater evil on Ninjago. Players will battle through iconic locales from the TV series, including the Ice Temple, the Toxic Bogs, and a mysterious new island, as well as visit the mountain village of Spinjago, where the Ninjas are currently training with Grand Sensei Dareth and Sensei Wu.', '..\\web\\img\\LEGONinjagoShadow.jpg', '..\\web\\img\\LEGONinjagoShadow1.jpg', '..\\web\\img\\LEGONinjagoShadow2.jpg', '..\\web\\img\\LEGONinjagoShadow3.jpg', 2, '2021-01-20 11:13:14', 2),
(33, 'CHUCHEL', '3.00', 'CHUCHEL is a comedy adventure game from the creators of Machinarium, Botanicula and Samorost. Join the hairy hero Chuchel and his rival Kekel in their quest to retrieve the precious cherry and face numerous puzzles and challenges!\r\n\r\nThe reward? Cheerful situational humor, wild music and sounds by the band DVA and dozens of hilarious gags that warm up even the coldest of souls. Plus cherries!', '..\\web\\img\\CHUCHEL.jpg', '..\\web\\img\\CHUCHEL1.jpg', '..\\web\\img\\CHUCHEL2.jpg', '..\\web\\img\\CHUCHEL3.jpg', 2, '2021-01-20 11:13:14', 2),
(34, '	\r\nMy City : After School', '3.64', 'In My City the fun starts After School! So call your school friends and invite your neighbors to meet at the park because the fun is about to start. Skating, Reading, Karate Class, RC boat sailing, Graffiti spraying and even shopping. There are tons of things to do and places to explore. Come and meet all the new characters, Explore all the fun locations and have fun creating your own stories.\r\n\r\nExplore After School Hobbies, Playtime and Fun:\r\nAfter school is the best time to do all the things you really love, My City has just the right activities and locations for you to explore and enjoy. Make sure to visit the city library, Skateboard Park, Pizza Shop and the Karate class. You can relax in the park, visit your karate teachers house and even get creative doing some graffiti.', '..\\web\\img\\MyCityAfterSchool.jpg', '..\\web\\img\\MyCityAfterSchool1.jpg', '..\\web\\img\\MyCityAfterSchool2.jpg', '..\\web\\img\\MyCityAfterSchool3.jpg', 2, '2021-01-20 11:13:14', 2),
(35, 'STAR WARS™: KOTOR II', '14.99', 'Five years after the events from the award winning Star Wars® Knights of the Old Republic™, the Sith Lords have hunted the Jedi to the edge of extinction and are on the verge of crushing the Old Republic.\r\nWith the Jedi Order in ruin, the Republic’s only hope is a lone Jedi struggling to reconnect with the Force. As this Jedi, you will be faced with the galaxy’s most dire decision: Follow the light side or succumb to the dark…', '..\\web\\img\\STARWARSKOTORll.jpg', '..\\web\\img\\STARWARSKOTORll1.jpg', '..\\web\\img\\STARWARSKOTORll2.jpg', '..\\web\\img\\STARWARSKOTORll3.jpg', 2, '2021-01-20 11:13:14', 2),
(36, 'Fruit Ninja Classic\r\n', '0.77', 'Slice fruit, don’t slice bombs – that is all you need to know to get started with the addictive Fruit Ninja action!\r\n\r\nFrom there, explore the nuances of Classic, Zen and the fan favorite Arcade mode to expand your skills. Slice for a high score, use powerups and special bananas to maximum effect, and go crazy on the multi-slice Pomegranate.\r\n\r\nAll Blades and Dojos now have a unique effect on gameplay. Want a ten-fruit Great Wave? Bouncing clouds to never drop a fruit? Swirling tornados for epic combos? Mix and match your gear, experiment with all the powers and find what works for you!\r\n\r\nThere has never been a better time to play Fruit Ninja, so unsheath your sword and see what’s new in the game that started it all.\r\n\r\nThis is still just the beginning – we can’t wait for everyone to join us!', '..\\web\\img\\FruitNinjaClassic.jpg', '..\\web\\img\\FruitNinjaClassic1.jpg', '..\\web\\img\\FruitNinjaClassic2.jpg', '..\\web\\img\\FruitNinjaClassic3.jpg', 3, '2021-01-20 21:39:47', 2),
(37, 'PAW Patrol: Air & Sea\r\n', '3.99', 'Pups Take Flight is now PAW Patrol Air and Sea Adventures! Kids take to the sky and sea with the PAW Patrol pups in a game featuring the Air and Sea Patrollers and the team’s new flight suits! The PAW Patrol Air and Sea Adventures app teaches children pre-k math skills with the help of their PAWsome pup heroes from the Nick Jr. TV show!\r\n\r\nAll the game controls are made just for kids, so your preschooler can:\r\n• Fly the skies with 6 pups in 3 different locations\r\n• Explore and dive into the sea with the pups in Adventure Bay\r\n• Avoid obstacles, collect pup treats, and unlock fun tricks\r\n• Develop counting and shape recognition skills\r\n• Earn special badges', '..\\web\\img\\PAWPatrolAirSea.jpg', '..\\web\\img\\PAWPatrolAirSea1.jpg', '..\\web\\img\\PAWPatrolAirSea2.jpg', '..\\web\\img\\PAWPatrolAirSea3.jpg', 8, '2021-01-20 21:40:33', 3),
(38, 'NBA 2K20\r\n', '5.99', 'Take classic 2K action on the go with NBA 2K20 for mobile, featuring 5 new NBA Stories, a new MyCAREER storyline, and an all-new Run The Streets mode! From 5-on-5 basketball with current or all-time great NBA teams to streetball in Blacktop, NBA 2K20 is filled with a variety of game modes for all players.\r\n\r\nFeatures:\r\nALL NEW RUN THE STREETS MODE\r\nFor the first time in any NBA 2K game, take your MyPLAYER around the world in a series of 3-on-3 streetball competitions. Get on a hot streak and takeover the game with greatly improved abilities and attributes. Compete against other players for a place on the Ranked Leaderboard or see how far you can go through the Championship.\r\n\r\nNBA STORIES RETURNS\r\nExperience the history of some of the most famous NBA players and teams with 5 new NBA Stories to play through.', '..\\web\\img\\NBA2K.jpg', '..\\web\\img\\NBA2K1.jpg', '..\\web\\img\\NBA2K2.jpg', '..\\web\\img\\NBA2K3.jpg', 14, '2021-01-20 21:40:33', 3),
(39, 'Minecraft', '7.49', 'Explore infinite worlds and build everything from the simplest of homes to the grandest of castles. Play in creative mode with unlimited resources or mine deep into the world in survival mode, crafting weapons and armor to fend off dangerous mobs. Create, explore and survive alone or with friends on mobile devices or Windows 10.\r\n\r\nEXPAND YOUR GAME:\r\nMarketplace - Discover the latest community creations in the marketplace! Get unique maps, skins, and texture packs from your favorite creators.\r\nSlash commands - Tweak how the game plays: you can give items away, summon mobs, change the time of day, and more.\r\nAdd-Ons - Customize your experience even further with free Add-Ons! If you\'re more tech-inclined, you can modify data-driven behaviors in the game to create new resource packs.', '..\\web\\img\\Minecraft.jpg', '..\\web\\img\\Minecraft1.jpg', '..\\web\\img\\Minecraft2.jpg', '..\\web\\img\\Minecraft3.jpg', 3, '2021-01-20 21:40:33', 2),
(40, 'Monopoly - Board game classic', '5.43', 'Roll the dice and buy, sell, build, and scheme your way to become a rich landlord in MONOPOLY, the Hasbro board game and family classic loved by over a billion people in cities and countries worldwide. One of the most classic board games you know and love is available on mobile and tablets and playable both offline and online!\r\n\r\nExperience the classic board game in a completely new way. MONOPOLY by Marmalade Game Studio on Android brings the board to life with a universe including a beautiful animated and designed 3D city board with hotels and houses.', '..\\web\\img\\Monopoly.jpg', '..\\web\\img\\Monopoly1.jpg', '..\\web\\img\\Monopoly2.jpg', '..\\web\\img\\Monopoly3.jpg', 4, '2021-01-20 21:49:27', 2),
(41, 'THE GAME OF LIFE 2 - More choices', '5.46', 'For 60 years THE GAME OF LIFE board game has shown us how to win at growing up. Now, THE GAME OF LIFE 2 digital board game introduces up-to-date life choices and new crossroads to the traditional mix! Will you be a Video Blogger or an Engineer? What roads will your friends and family take? Play to find out on mobile and tablet!\r\n\r\nCustomise your peg, hop in your eco car and race your friends and family through THE GAME OF LIFE 2 game. With a thousand new ways to live, and money no longer the only path to success, what life will you choose? In this mobile board game you find your happiness, whether that means money and fame, or academic fulfilment and a dozen cats! Become a Pop Star with 5 dogs and a pool house, or a Brain Surgeon with multiple PhDs, a spouse and 3 kids. You choose!', '..\\web\\img\\TheGameOfLife2.jpg', '..\\web\\img\\TheGameOfLife21.jpg', '..\\web\\img\\TheGameOfLife22.jpg', '..\\web\\img\\TheGameOfLife23.jpg', 4, '2021-01-20 21:49:27', 2),
(42, 'Ticket to Ride\r\n', '8.46', 'CONNECT MORE THAN JUST CITIES!\r\n\r\nSet off with your friends and family to re(discover) Ticket to Ride, the classic boardgame. In this railway adventure, you’ll need to be the quickest to link up your cities and reach your destinations.\r\n\r\nIn this strategy game for all ages, try out different tactics, block your competitors’ lines and take over routes before the others do. With so many different strategies to try, each new game is a unique experience.\r\n\r\nTravel the world from Europe to India, passing through the legendary China, facing new challenges by purchasing additional cards with their own special rules (available in expansion packs).', '..\\web\\img\\TickettoRide.jpg', '..\\web\\img\\TickettoRide1.jpg', '..\\web\\img\\TickettoRide2.jpg', '..\\web\\img\\TickettoRide3.jpg', 4, '2021-01-20 21:49:27', 2),
(43, 'Backgammon', '2.43', '★ Top Developer (awarded 2013) ★\r\nSame as our \"Backgammon Free\", but no Ads.\r\n\r\nBackgammon is a game of skill and strategy; one of the world\'s classic parlour board games, played for recreation and gambling. Like Mahjong, Backgammon is played in social groups in coffee houses and bars. Historically, variants of this game are believed to have originated in Egypt over 3000 years ago, from where it was adopted by the Romans and then later travelled to India. It also spread to East Asia, but was largely replaced by Xiangqi (Chinese chess). It is now very popular in the West.', '..\\web\\img\\Backgammon.jpg', '..\\web\\img\\Backgammon1.jpg', '..\\web\\img\\Backgammon2.jpg', '..\\web\\img\\Backgammon3.jpg', 4, '2021-01-20 21:49:27', 2),
(44, 'Defense Zone 3 Ultra HD', '2.99', 'Welcome to the long-awaited sequel to the popular action/strategy game! New weapons, landscapes, and options galore! Every game session is now even more dynamic and amazing.\r\n\r\nThe core of the game is still the same: entire armies of enemies rush at your defenses, trying to destroy them by any means necessary. But now they’re even more powerful and madder than ever.\r\n\r\nYou’ll have access to older, time-tested turrets, as well as completely new types of weapons. It’s up to you to decide how to spend your available budget. Should you build new towers or upgrade and fortify the ones you already have? Turrets vary in terms of their attack range, firing speed, and damage type. The only way to win is to combine them so that they complement and strengthen one another.\r\n\r\nThe flexible difficulty settings will allow every player to get as much enjoyment out of the game as possible. If you’re an experienced commander, you’ll love the merciless, intense battles where the countdown where even a fraction of a second is vital to success and everything hinges on your ability to choose and arrange your turrets wisely. If you’re a new player, you’ll easily be able to train and prepare yourself for serious battles.', '..\\web\\img\\DefenseZone.jpg', '..\\web\\img\\DefenseZone1.jpg', '..\\web\\img\\DefenseZone2.jpg', '..\\web\\img\\DefenseZone3.jpg', 15, '2021-01-22 17:37:17', 3),
(45, 'Word Connect', '0.99', '💕Do you enjoy the excitement of classic word games? Are you a real puzzle game master? DOWNLOAD Word Connect for FREE! Start your word story and enjoy the brainstorm NOW! 💕\r\n\r\nSimply swipe the letter blocks and build words to collect coins! Find the clues to solve the crossword puzzles! DOWNLOAD Word Connect NOW to begin training your brain and become a word master!\r\n\r\nIt’s time to uncover hidden words and build as many words as possible! Come and begin your word story!', '..\\web\\img\\WordConnect.jpg', '..\\web\\img\\WordConnect1.jpg', '..\\web\\img\\WordConnect2.jpg', '..\\web\\img\\WordConnect3.jpg', 17, '2021-01-22 17:37:17', 3),
(46, 'Wild West Faro', '2.72', 'Picture a scene of a Saloon back in the Old West. Imagine you’re there now, you walk in, you look around and see a group of people playing cards. You might think that they would be playing Poker, but the game of choice was in fact a game called Faro! If you would like to play this popular old classic card game on your mobile phone or tablet, then download the best Faro card game app today and step back in time. Wild West Faro is our first game release!\r\n\r\nA CLASSIC FARO CARD GAME\r\nThe Wild West Faro card game was the most popular card game played throughout the Old West. Known within the local Saloon as \"bucking the tiger\" or \"twisting the tiger\'s tail\" this name originated from the early card backs, which featured a drawing of a Bengal tiger. By the mid-19th century the tiger was commonly associated with the game. With our faro card game app you’re able to immerse yourself in a unique card playing experience and enjoy hours of fun!', '..\\web\\img\\WildWestFaro.jpg', '..\\web\\img\\WildWestFaro1.jpg', '..\\web\\img\\WildWestFaro2.jpg', '..\\web\\img\\WildWestFaro3.jpg', 6, '2021-01-23 10:23:39', 1),
(47, 'SMARTFRUITS SLOT', '0.91', '******\"In Game start screen\"*******\r\n*Menu(Auto):Menu button is change into \'Auto\' when you run the slot.\r\n*Add slot hold function (touch slot when nothing is in the slot)\r\n*Max:Max bet button\r\n*Bet:you can bet min.8 to max 96\r\n*Start(Stop):You can use stop button when run the slot.\r\n\r\n4 buttons are in the Game screen.\r\nMin,Bet is 8.\r\nIf you want to get bonus point,Your bet must over 16.Except for cherry bonus.\r\n(Max.bet is 96 , below 16 bet you can get cherry bonus only)\r\n\r\nWhen you get the points with slot game, you can try double-up chance if closed card is high or low.\r\nThe double-up game increse 2 times of game points when you success.If you success five time of double-up,\r\nyou get the 50 times of slot game point.', '..\\web\\img\\SMARTFRUITSSLOT.jpg', '..\\web\\img\\SMARTFRUITSSLOT1.jpg', '..\\web\\img\\SMARTFRUITSSLOT2.jpg', '..\\web\\img\\SMARTFRUITSSLOT3.jpg', 6, '2021-01-23 10:23:39', 1),
(48, 'Cleopatra Keno', '2.10', 'Cleopatra Keno is one of the most exciting and beloved variations of the popular casino game of Keno, and it\'s now available across all Android platforms!\r\n\r\nOne of the easiest games to understand, as Cleopatra Keno works like a lottery; place a bet, mark 3-10 numbers and hope lady luck is on your side as the computer picks 20 numbers randomly. If you hit a certain amount of numbers then you win. What makes Cleopatra Keno more fun over standard Keno is that you have a chance for the Bonus, which if hit, gives you 12 free plays with double the payouts!\r\n\r\nWhile maintaining the familiarity with the casino game, our iteration has several extras; Background Music, updated Sound/Graphics and a complete Statistical Database that tracks your play. Plus...A Horror Themed version with chilling music/sound, a dark overlay and creepy crawlies abound.', '..\\web\\img\\CleopatraKeno.jpg', '..\\web\\img\\CleopatraKeno1.jpg', '..\\web\\img\\CleopatraKeno2.jpg', '..\\web\\img\\CleopatraKeno3.jpg', 6, '2021-01-23 10:25:30', 1),
(49, 'Big Money Bugs Slots PAID', '1.35', 'Big Money Bugs Slots the best new Bug themed lucky vegas casino slot machine / pokie from Mobile Amusements where you can win a massive virtual cash fortune!\r\n\r\nWith unlimited FREE coins and bonuses, try to win as much money as possible by also playing features such as the Big Sun Flower Wheel of Fortune bonus feature plus the Bug Money and Flower Power mini-games to accumulate virtual credit prize bonuses.\r\n\r\nAs you progress through 30 levels in the garden, you\'ll be able to place HUGE Max bets progressing up to $5,000 and gain even more fantastic prize bonuses and new features.\r\n\r\nIncluding extra features such as FREE Bonus Pot Spins, $10,000 Big Bonus Flower, 2x Payout Reels feature, Lucky Line, Super Lines, Multi-Free Spins and HUGE Cash Bonuses.\r\n\r\nWill you open the big tree trunk to the 6th reel for a chance to win the BIG Caterpillar Cash Jackpot itself!?', '..\\web\\img\\BigMoneyBugsSlots.jpg', '..\\web\\img\\BigMoneyBugsSlots1.jpg', '..\\web\\img\\BigMoneyBugsSlots2.jpg', '..\\web\\img\\BigMoneyBugsSlots3.jpg', 6, '2021-01-23 10:26:15', 1),
(50, 'i Live - Gold Edition', '1.96', '\"i Live\" is the most innovative and realistic life simulator ever created. Over 5000 frames for animation, dynamic lighting and shadows, and the time is in real time! Play now \"i Live\" and give a \'soul to your device.\r\n\r\nFeatures....\r\n•Bring your baby into the world and bring him up like a real child. Breastfeed him, follow him and watch him growing\r\n•He needs love, if you don’t follow him, he won’t love you. Give him all love you can and he will love you too!\r\n•Follow his growht phases, from his born to his fifth birthday. Watch his body and conduct changes!\r\n•Play with him and became the best parent ever! Challenge your friend and rise in Leaderboard!\r\n•He Lives night and day waiting for your return!\r\n\r\nAnd much more\r\nMuch more! clothes, games and gadget. Make your baby happy for a real experience!', '..\\web\\img\\iLiveGoldEdition.jpg', '..\\web\\img\\iLiveGoldEdition1.jpg', '..\\web\\img\\iLiveGoldEdition2.jpg', '..\\web\\img\\iLiveGoldEdition3.jpg', 7, '2021-01-23 11:49:57', 1),
(51, 'O2Jam - Music & Game', '2.72', '- Perfect Single Play\r\nWe have focused on heightening the most important qualities of music games, by taking into consideration the feedback from game enthusiasts,\r\nfrom sync to note angles, note size, note and background color, as well as types of categorized judgment criteria.\r\n\r\n- Compete Against the Globally Renowned\r\nThere is not only a graph which enables you to view the player’s skills in a glance, a social feature which gives you a chance to boast to your friends.\r\n\r\n- New Skin System Full of Individuality\r\nA strong customizing system is supported where separate skin patches can be fused or a completed set is available.\r\nEnjoy \'O2Jam - Music & Game\' on your own personalized play screen.\r\nDon\'t miss out the fun changing appearances of each skin type as you level up \'Fever\' stages.', '..\\web\\img\\O2JamMusicGame.jpg', '..\\web\\img\\O2JamMusicGame1.jpg', '..\\web\\img\\O2JamMusicGame2.jpg', '..\\web\\img\\O2JamMusicGame3.jpg', 9, '2021-01-23 11:49:57', 3),
(52, 'Missile Dude RPG: Offline tap tap Missile', '1.01', '■Missile RPG: VIP Mode Launched!\r\n1. Get 500 Uranium.\r\n2. Get 5 Auto-fire Boost.\r\n3. Get 200 Leech.\r\n\r\n\r\nKill All Demons with your holy missiles\r\n\r\nRip and Tear all Demonic Portals and destroy bosses\r\n\r\nUpgrade Missiles and Units to Survive\r\n\r\nClicker RPG, Missile simulator', '..\\web\\img\\MissileDude.jpg', '..\\web\\img\\MissileDude1.jpg', '..\\web\\img\\MissileDude2.jpg', '..\\web\\img\\MissileDude3.jpg', 12, '2021-01-23 11:57:07', 3),
(53, 'This War of Mine', '13.40', 'The Little Ones expansion is available now as an in-app purchase!\r\n\r\n\"If you\'ve not already played this brilliant, heart-wrenching game, then mobile is as good a place as any to let it completely destroy you.\" - , 9/10, Pocket Gamer UK\r\n\r\n\"This War of Mine isn’t exactly “fun,” but it’s definitely a game worth playing.\" , 9/10, 148apps\r\n\r\nIn This War Of Mine you do not play as an elite soldier, rather a group of civilians trying to survive in a besieged city; struggling with lack of food, medicine and constant danger from snipers and hostile scavengers. The game provides an experience of war seen from an entirely new angle.\r\n\r\nThe pace of This War of Mine is imposed by the day and night cycle. During the day snipers outside stop you from leaving your refuge, so you need to focus on maintaining your hideout: crafting, trading and taking care of your survivors. At night, take one of your civilians on a mission to scavenge through a set of unique locations for items that will help you stay alive.\r\n\r\nMake life-and-death decisions driven by your conscience. Try to protect everybody from your shelter or sacrifice some of them for longer-term survival. During war, there are no good or bad decisions; there is only survival. The sooner you realize that, the better.', '..\\web\\img\\ThisWarofMine.jpg', '..\\web\\img\\ThisWarofMine1.jpg', '..\\web\\img\\ThisWarofMine2.jpg', '..\\web\\img\\ThisWarofMine3.jpg', 13, '2021-01-23 12:17:54', 1);
INSERT INTO `apps` (`id_app`, `name`, `price`, `detail`, `image`, `image1`, `image2`, `image3`, `id_category`, `creation_date`, `id_user`) VALUES
(54, '4 Player Reactor (Multiplayer)', '2.72', '4 Player Reactor is the original fast, clean and funny reaction game for two to four players on the same device.\r\n\r\nChallenge your friends (or enemies) to a multiplayer battle of reflexes, wits and knowledge! Great as a bar game, ice breaker or to decide who has to do the dishes.\r\n\r\nOne of 28 (we continuously add more) exciting mini-games is displayed on screen, and if you think the answer is correct, hit your button faster than your opponents to get a point. But be careful - hit it at the wrong time, and you\'ll lose one. After a few seconds, the next multiplayer challenge starts - and you can make up for lost points or extend your lead against your adversary!\r\n\r\n---- Benefits of 4 Player Reactor: ----\r\n28 (and growing) games with four difficulties each ranging from easy to insane -- that means over 100 combinations! A single-player training mode when you want to hone your skills for the next encounter, no advertisements whatsoever, and lots of extra settings for even more multiplayer fun!', '..\\web\\img\\4PlayerReactor.jpg', '..\\web\\img\\4PlayerReactor1.jpg', '..\\web\\img\\4PlayerReactor2.jpg', '..\\web\\img\\4PlayerReactor3.jpg', 16, '2021-01-23 12:17:54', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id_category` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id_category`, `name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Arcade'),
(4, 'Board'),
(5, 'Card'),
(6, 'Casino'),
(7, 'Casual'),
(8, 'Educational'),
(9, 'Music'),
(10, 'Puzzle'),
(11, 'Racing'),
(12, 'Role Playing'),
(13, 'Simulation'),
(14, 'Sports'),
(15, 'Strategy'),
(16, 'Trivia'),
(17, 'Word');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1610743891),
('m130524_201442_init', 1610743914),
('m190124_110200_add_verification_token_column_to_user_table', 1610743915);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `purchases`
--

CREATE TABLE `purchases` (
  `id_purchase` int(11) UNSIGNED NOT NULL,
  `id_app` int(11) UNSIGNED NOT NULL,
  `id_user` int(11) UNSIGNED NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `purchases`
--

INSERT INTO `purchases` (`id_purchase`, `id_app`, `id_user`, `date`) VALUES
(17, 5, 4, '2021-01-27 19:37:52'),
(53, 34, 6, '2021-01-28 02:41:31'),
(54, 54, 6, '2021-01-28 02:41:32'),
(55, 26, 6, '2021-01-28 02:41:32'),
(56, 1, 6, '2021-01-28 02:41:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `survey`
--

CREATE TABLE `survey` (
  `id_survey` int(11) NOT NULL,
  `score` tinyint(3) UNSIGNED NOT NULL,
  `vote` tinyint(3) UNSIGNED NOT NULL,
  `id_app` int(10) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_user` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`, `type_user`) VALUES
(1, 'gsuruguay', '', 'G--uQ3mqPcxXc0Y9FkgtdY64H0cieguU', '$2y$13$jP7uQMVgZqHHDgD/ky8zq.v77NjV.04zPfe1e9FoextexGMasKmuC', NULL, 'guillermo.suruguay@gmail.com', 10, 1610744111, 1610744111, 'wk6Qo7KICICaedn9v2g-vNeYSF1bmlFU_1610744111', 'developers'),
(2, 'msuruguay', '', 'sWGOypbe_8aSxocAK8UGNSc91vhl0_Lh', '$2y$13$SS4EnABUK.cKwQ13m8MkQ.L8CMxf8V0FrUkvSgmalh.coDSGI/WHS', NULL, 'martinhlj@gmail.com', 10, 1610745291, 1610745291, 'ooCJ1-MUBAUkjFyZVZHfH37yFiNSSVkd_1610745291', 'developers'),
(3, 'lcortes', '', 'Ijbk8WW29W6x06we0Y2eRSdnPUhkAwRV', '$2y$13$119nx.2fXB3/2vWAzv7rzu3U66DGyl/4lFKJUuVVpoYbAlFjv4ddG', NULL, 'michelito112694@gmail.com', 10, 1611333228, 1611333228, 'X9cJ_4ev2rF0y2QAk1jSJYOFnNUj--0Z_1611333228', 'developers'),
(4, 'gabysuru', '', 'Ttv9zW6NFBTj_99chicA_PLjqYUZGIfU', '$2y$13$TkDAmtX.NL37.kqjHaZDf.IqNwdjlg4oxHMJ./9fETT2BMuTsJqE.', NULL, 'gabymerlim1992@gmail.com', 10, 1611333467, 1611333467, '3P_MwOtTW03tbeAwGUHKnS9M3f-2czth_1611333467', 'client'),
(6, 'Kcony', '', 'rVSnwRk5X6G4RHBtKSbxxmXXNx3sehmv', '$2y$13$P6kRrwP4RN0CpN1qd0zoluH/d2JQ4x4EY/HqyWgJSgvCqGr.816lC', NULL, 'keriacony@gmail.com', 10, 1611443980, 1611443980, '871ilcH-ChqMMq2XNeBEHbvuCEFZUANI_1611443980', 'client');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apps`
--
ALTER TABLE `apps`
  ADD PRIMARY KEY (`id_app`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indices de la tabla `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indices de la tabla `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id_purchase`);

--
-- Indices de la tabla `survey`
--
ALTER TABLE `survey`
  ADD PRIMARY KEY (`id_survey`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apps`
--
ALTER TABLE `apps`
  MODIFY `id_app` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id_purchase` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `survey`
--
ALTER TABLE `survey`
  MODIFY `id_survey` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
