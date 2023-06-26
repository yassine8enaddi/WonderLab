-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 12 juin 2023 à 00:43
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `wonderlab`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`id`, `title`) VALUES
(1, 'Astronomy'),
(2, 'Biochemistry'),
(3, 'Biotechnology'),
(4, 'Cell Biology'),
(5, 'Chemistry'),
(6, 'Civil Engineering'),
(7, 'Computer Science'),
(8, 'Ecology'),
(9, 'Economics'),
(10, 'Electrical Engineering'),
(11, 'Environmental Science'),
(12, 'Genetics'),
(13, 'Geology'),
(14, 'Immunology'),
(15, 'Information Science'),
(16, 'Marine Biology'),
(17, 'Mathematics'),
(18, 'Mechanical Engineering'),
(19, 'Medicine'),
(20, 'Microbiology'),
(21, 'Molecular Biology'),
(22, 'Nanotechnology'),
(23, 'Neuroscience'),
(24, 'Nuclear Physics'),
(25, 'Oceanography'),
(26, 'Optics'),
(27, 'Organic Chemistry'),
(28, 'Paleontology'),
(29, 'Pathology'),
(30, 'Pharmaceutical Science'),
(31, 'Pharmacology'),
(32, 'Physics'),
(33, 'Physiology'),
(34, 'Plant Biology'),
(35, 'Psychology'),
(36, 'Robotics'),
(37, 'Seismology'),
(38, 'Social Science'),
(39, 'Sociology'),
(40, 'Space Science'),
(41, 'Statistics'),
(42, 'Structural Engineering'),
(43, 'Sustainability'),
(44, 'Systems Biology'),
(45, 'Theoretical Physics'),
(46, 'Thermodynamics'),
(47, 'Toxicology'),
(48, 'Virology'),
(49, 'Zoology'),
(50, 'Artificial Intelligence'),
(51, 'Astrophysics'),
(52, 'Atmospheric Science'),
(53, 'Behavioral Science'),
(54, 'Biogeography'),
(55, 'Biostatistics'),
(56, 'Ceramic Engineering'),
(57, 'Chaos Theory'),
(58, 'Climate Science'),
(59, 'Cognitive Science'),
(60, 'Communication Science'),
(61, 'Computational Science'),
(62, 'Criminology'),
(63, 'Crystallography'),
(64, 'Cryogenics'),
(65, 'Cybersecurity'),
(66, 'Data Science'),
(67, 'Demography'),
(68, 'Dentistry'),
(69, 'Earth Science'),
(70, 'Ecotoxicology'),
(71, 'Electronics'),
(72, 'Energy Science'),
(73, 'Entomology'),
(74, 'Epigenetics'),
(75, 'Food Science'),
(76, 'Forensic Science'),
(77, 'Game Theory'),
(78, 'Geography'),
(79, 'Geophysics'),
(80, 'Glaciology'),
(81, 'High Energy Physics'),
(82, 'Humanities'),
(83, 'Industrial Engineering'),
(84, 'Inorganic Chemistry'),
(85, 'International Relations'),
(86, 'Linguistics'),
(87, 'Machine Learning'),
(88, 'Materials Science'),
(89, 'Mechatronics'),
(90, 'Medical Physics'),
(91, 'Meteorology'),
(92, 'Mineralogy'),
(93, 'Musicology'),
(94, 'Nephrology');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int UNSIGNED DEFAULT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`) VALUES
(58, 'Lego Robot with an Organic ‘Brain’ Learns to Navigate a Maze', 'In the winter of 1997 Carver Mead lectured on an unusual topic for a computer scientist: the nervous systems of animals, such as the humble fly. Mead, a researcher at the California Institute of Technology, described his earlier idea for an electronic problem-solving system inspired by nerve cells, a technique he had dubbed “neuromorphic” computing. A quarter-century later, researchers have designed a carbon-based neuromorphic computing device—essentially an organic robot brain—that can learn to navigate a maze.\r\n\r\nA neuromorphic chip memorizes information similarly to the way an animal does. When a brain learns something new, a group of its neurons rearrange their connections so they can communicate more quickly and easily. As a common saying in neuroscience goes, “Neurons that fire together wire together.” When a neuromorphic chip learns, it rewires its electric circuits to save the new behavior like a brain does to save a memory.\r\n\r\nThe idea of brainlike computation has been around for a while. But Paschalis Gkoupidenis of the Max Planck Institute for Polymer Research in Mainz, Germany, and his neuromorphic research team are pioneers in crafting this technology from organic materials. To build their chip, the researchers used long chains of carbon-based molecules called polymers, which are soft and, in some ways, behave similarly to living tissues. In order to let their material carry an electric charge like real neurons, which are energy-efficient and operate in a watery medium, the scientists coated the organic material with an ion-rich gel. This provided “more degrees of freedom to mimic biological processes,” Gkoupidenis says.', '1686440750ro.webp', '2023-06-10 23:45:50', 36, 61),
(57, 'Rethinking reality', 'Conceived at the turn of the 20th century and then emerging in its full form in the mid-1920s, quantum mechanics is the math that explains matter. It’s the theory for describing the physics of the microworld, where atoms and molecules interact to generate the world of human experience. And it’s at the heart of everything that made the century just past so dramatically unlike the century preceding it. From cell phones to supercomputers, DVDs to pdfs, quantum physics fueled the present-day electronics-based economy, transforming commerce, communication and entertainment.\r\n\r\nBut quantum theory taught scientists much more than how to make computer chips. It taught that reality isn’t what it seems.\r\n“The fundamental nature of reality could be radically different from our familiar world of objects moving around in space and interacting with each other,” physicist Sean Carroll suggested in a recent tweet. “We shouldn’t fool ourselves into mistaking the world as we experience it for the world as it really is.”\r\n\r\nIn a technical paper backing up his tweet, Carroll notes that quantum theory consists of equations that describe mathematical entities roaming through an abstract realm of possible natural events. It’s plausible, Carroll argues, that this quantum realm of mathematical possibilities represents the true, fundamental nature of reality. If so, all the physical phenomena we perceive are just a “higher-level emergent description” of what’s really going on.', '1686437275physiologie.jpg', '2023-06-10 22:47:55', 35, 60),
(56, 'To Reignite the U.S. Chip Industry, Invite More Chefs into the Kitchen', 'Making the next generation of computer chips demands the care, on an industrial scale, of making a gourmet meal. The finest ingredients, techniques, tools and, of course, the sharpest minds, must whip together something transformative. In kitchens missing just one, the meal falls short.\r\n\r\nIn that regard, the Department of Commerce will soon command a feast of sorts, doling out $11 billion for research and development under the CHIPS Act to revive America’s sluggish chipmaking industry—now making only 12 percent of chips worldwide. In passing CHIPS, America asserted a bold desire to return to the forefront of chipmaking. Between desire and doing, however, lies a profound gap. It will not be easily spanned.\r\n\r\nThe CHIPS Act funding is a lot of money, but numbers hardly guarantee success. Chipmaking is an almost incomprehensibly precise, difficult and expensive business. Ensuring the U.S. has a seat at the table with the world’s leading makers will take innovation and collaboration of epic proportions.', '1686435261ele.webp', '2023-06-10 22:14:21', 10, 59),
(54, '50 years ago, flesh-eating screwworms pushed scientists to mass produce flies', 'Mexico and the United States joined forces to finally purge North America of the screwworm scourge. The fly factory opened in 1976 and legions of sterilized screwworm flies were released in both countries, including along Mexico’s Isthmus of T­ehuantepec to obstruct northerly incursions. The eradication program was so successful that it spread to Panama.\r\n\r\nBy 2006, the United States, Mexico and Central America declared themselves rid of the pest. Though brief outbreaks still occur, such as in Florida in 2016, deploying sterile flies remains an effective remedy. The tactic has inspired more recent efforts to control mosquitoes and other harmful pests (SN: 11/23/18, SN: 8/5/16).', '1686412320flies.jpg', '2023-06-10 15:52:00', 20, 57),
(55, 'Humans might be able to hibernate during space travel', 'A teenager joins a line of people boarding a spaceship. Once on board, she approaches a bed, crawls in, closes the lid and falls asleep. Her body is frozen for a trip to a planet several light-years from Earth. A few years later she wakes up, still the same age. This ability to put her life on pause while asleep is called “suspended animation.”\r\n\r\nScenes like this are a staple of science fiction. There’s plenty of other ways that suspended animation has touched our imagination, too. There’s Captain America, for instance, who survived nearly 70 years frozen in ice. And Han Solo was frozen in carbonite in Star Wars: The Empire Strikes Back. The Mandalorian’s main character brings in some of his bounties cold, too.\r\n\r\nAll of these stories have something in common. People enter an unconscious state in which they can survive for a long time.\r\n\r\nNothing like this is yet possible in the real world, at least for us humans. But some animals and birds have their own forms of suspended animation: They hibernate. This might hold some lessons for how to put astronauts of the future into hibernation for long space flights. But for really long journeys, a deep freeze might be the best option.', '1686414756medecine.jpg', '2023-06-10 16:32:36', 19, 58),
(52, 'An AI can decode speech from brain activity with surprising accuracy', 'An artificial intelligence can decode words and sentences from brain activity with surprising — but still limited — accuracy. Using only a few seconds of brain activity data, the AI guesses what a person has heard. It lists the correct answer in its top 10 possibilities up to 73 percent of the time, researchers found in a preliminary study.\r\n\r\nThe AI’s “performance was above what many people thought was possible at this stage,” says Giovanni Di Liberto, a computer scientist at Trinity College Dublin who was not involved in the research.', '1686410940ai.jpg', '2023-06-10 15:29:00', 50, 48),
(53, 'SpaceX caps off busy May with 8th Falcon 9 launch', 'SpaceX successfully launched another Starlink mission at 11:02 PM PT (06:02 UTC), this time sending 52 V1.5 Starlink satellites to orbit from SLC-4E at Vandenberg Space Force Base. These satellites will be placed into a 70-degree orbital inclination around the Earth.\r\n\r\nLaunching the Starlink Group 2-10 mission, was B1061, on its 14th flight. Previously having supported the Crew 1 and Crew 2 missions, 4 prior Starlink missions, and numerous commercial satellite missions.\r\n\r\nApproximately 17 minutes after launch, the 52 Starlink satellites were deployed from stage 2, however, this took place over an area with no ground stations and SpaceX had to wait a bit longer to confirm a successful mission. With this Starlink mission, SpaceX has launched over 4,500 Starlink satellites, of which, around 4,100 are working. This current Group 2-10 satellites will now go through checkouts before actively joining the constellation.\r\n\r\nFollowing stage separation, B1061 successfully touched down on the droneship ‘Of Course I Still Love You’ and will be brought back to the Port of Los Angeles in the following days before being refurbished and readied for its next mission. Currently, no Falcon 9 has flown more than 15 times but SpaceX is currently in the process of extending the 15 flight certification to 20 as they prove the reusability capabilities of the Falcon 9.', '1686411298spacex.jpg', '2023-06-10 15:34:58', 1, 55),
(59, 'Scientists Make Best-Yet Map of Solar System’s Interstellar Boundaries Researchers have gained a new view of the journey ahead for the', 'We live in a bubble—literally.\r\n\r\nIt’s called the heliosphere, and it’s made of tenuous plasma billowing from the sun. This ionized gas flows outward along magnetic field lines emerging from our star, spooling out in radial spirals tied to the sun’s rotation. To venture beyond where this wind wanes against the greater flows of plasma coursing through our galaxy is, in a very real sense, to leave our solar system behind.\r\n\r\nYet despite the heliosphere being known and studied since the late 1950s, its hazy boundaries have only relatively recently come to light—with a surprising discovery. Just more than a decade ago, NASA’s Voyager 1 beamed back data suggesting it had finally exited the heliosphere to enter interstellar space. But one measurement didn’t fit expectations: the spiral magnetic field didn’t straighten out like it was supposed to if the spacecraft had indeed crossed over.', '1686442738detector.jpg', '2023-06-11 00:18:58', 1, 48),
(73, 'Quantum entanglement makes quantum communication even more secure ', 'Stealthy communication just got more secure, thanks to quantum entanglement.\r\n\r\nQuantum physics provides a way to share secret information that’s mathematically proven to be safe from the prying eyes of spies. But until now, demonstrations of the technique, called quantum key distribution, rested on an assumption: The devices used to create and measure quantum particles have to be known to be flawless. Hidden defects could allow a stealthy snoop to penetrate the security unnoticed.\r\n\r\nNow, three teams of researchers have demonstrated the ability to perform secure quantum communication without prior confirmation that the devices are foolproof. Called device-independent quantum key distribution, the method is based on quantum entanglement, a mysterious relationship between particles that links their properties even when separated over long distances.\r\nIn everyday communication, such as the transmission of credit card numbers over the internet, a secret code, or key, is used to garble the information, so that it can be read only by someone else with the key. But there’s a quandary: How can a distant sender and receiver share that key with one another while ensuring that no one else has intercepted it along the way?\r\n\r\nQuantum physics provides a way to share keys by transmitting a series of quantum particles, such as particles of light called photons, and performing measurements on them. By comparing notes, the users can be sure that no one else has intercepted the key. Those secret keys, once established, can then be used to encrypt the sensitive intel (SN: 12/13/17). By comparison, standard internet security rests on a relatively shaky foundation of math problems that are difficult for today’s computers to solve, which could be vulnerable to new technology, namely quantum computers (SN: 6/29/17).\r\n\r\nBut quantum communication typically has a catch. “There cannot be any glitch that is unforeseen,” says quantum physicist Valerio Scarani of the National University of Singapore. For example, he says, imagine that your device is supposed to emit one photon but unknown to you, it emits two photons. Any such flaws would mean that the mathematical proof of security no longer holds up. A hacker could sniff out your secret key, even though the transmission seems secure.\r\n\r\nDevice-independent quantum key distribution can rule out such flaws. The method builds off of a quantum technique known as a Bell test, which involves measurements of entangled particles. Such tests can prove that quantum mechanics really does have “spooky” properties, namely nonlocality, the idea that measurements of one particle can be correlated with those of a distant particle. In 2015, researchers performed the first “loophole-free” Bell tests, which certified beyond a doubt that quantum physics’ counterintuitive nature is real (SN: 12/15/15).\r\n\r\n“The Bell test basically acts as a guarantee,” says Jean-Daniel Bancal of CEA Saclay in France. A faulty device would fail the test, so “we can infer that the device is working properly.”\r\n\r\nIn their study, Bancal and colleagues used entangled, electrically charged strontium atoms separated by about two meters. Measurements of those ions certified that their devices were behaving properly, and the researchers generated a secret key, the team reports in the July 28 Nature.\r\n\r\nTypically, quantum communication is meant for long-distance dispatches. (To share a secret with someone two meters away, it would be easier to simply walk across the room.) So Scarani and colleagues studied entangled rubidium atoms 400 meters apart. The setup had what it took to produce a secret key, the researchers report in the same issue of Nature. But the team didn’t follow the process all the way through: The extra distance meant that producing a key would have taken months.\r\n\r\nIn the third study, published in the July 29 Physical Review Letters, researchers wrangled entangled photons rather than atoms or ions. Physicist Wen-Zhao Liu of the University of Science and Technology of China in Hefei and colleagues also demonstrated the capability to generate keys, at distances up to 220 meters. This is particularly challenging to do with photons, Liu says, because photons are often lost in the process of transmission and detection.\r\n\r\nLoophole-free Bell tests are already no easy feat, and these techniques are even more challenging, says physicist Krister Shalm of the National Institute of Standards and Technology in Boulder, Colo. “The requirements for this experiment are so absurdly high that it’s just an impressive achievement to be able to demonstrate some of these capabilities,” says Shalm, who wrote a perspective in the same issue of Nature.\r\n\r\nThat means that the technique won’t see practical use anytime soon, says physicist Nicolas Gisin of the University of Geneva, who was not involved with the research.', '1686475342phy.jpg', '2023-06-11 09:22:23', 32, 62),
(61, 'A chemical imbalance doesn’t explain depression. So what does?', 'You’d be forgiven for thinking that depression has a simple explanation.\r\n\r\nThe same mantra — that the mood disorder comes from a chemical imbalance in the brain — is repeated in doctors’ offices, medical textbooks and pharmaceutical advertisements. Those ads tell us that depression can be eased by tweaking the chemicals that are off-kilter in the brain. The only problem — and it’s a big one — is that this explanation isn’t true.\r\n\r\nThe phrase “chemical imbalance” is too vague to be true or false; it doesn’t mean much of anything when it comes to the brain and all its complexity. Serotonin, the chemical messenger often tied to depression, is not the one key thing that explains depression. The same goes for other brain chemicals.\r\nThe hard truth is that despite decades of sophisticated research, we still don’t understand what depression is. There are no clear descriptions of it, and no obvious signs of it in the brain or blood.\r\n\r\nThe reasons we’re in this position are as complex as the disease itself. Commonly used measures of depression, created decades ago, neglect some important symptoms and overemphasize others, particularly among certain groups of people. Even if depression could be measured perfectly, the disorder exists amid myriad levels of complexity, from biological confluences of minuscule molecules in the brain all the way out to the influences of the world at large. Countless combinations of genetics, personality, history and life circumstances may all conspire to create the disorder in any one person. No wonder the science is stuck.\r\n\r\nIt’s easy to see why a simple “chemical imbalance” explanation holds appeal, even if it’s false, says Awais Aftab, a psychiatrist at Case Western Reserve University in Cleveland. What causes depression is nuanced, he says — “not something that can easily be captured in a slogan or buzzword.”\r\n\r\nSo here, up front, is your fair warning: There will be no satisfying wrap-up at the end of this story. You will not come away with a scientific explanation for depression, because one does not exist. But there is a way forward for depression researchers, Aftab says. It requires grappling with nuances, complexity and imperfect data.\r\n\r\nThose hard examinations are under way. “There’s been some really interesting and exciting scientific and philosophical work,” Aftab says. That forward motion, however slow, gives him hope and may ultimately benefit the millions of people around the world weighed down by depression.', '1686475675me.jpg', '2023-06-11 09:27:56', 19, 55),
(63, 'Nanocrystal ‘painted’ films may someday help relieve summer heat', 'As summer heats up, future homes may cool down, thanks to coatings of vibrantly colored nanocrystals.\r\n\r\nNormal coatings, such as paint, heat up in the sun. The new crystal films get cooler than the air around them when exposed to sunlight. They do this by reflecting the sun’s rays and releasing that heat into outer space.\r\nExplainer: Reflection, refraction and the power of lenses\r\n\r\nThose coatings could provide a sustainable way to keep cool — no power required — for cars, homes and offices. This would be a big step up from air conditioners, which guzzle a lot of energy and can leak gases that add to global warming.\r\n\r\nQingchen Shen and his colleagues created a colorful selection of the new coatings. Shen studies materials science at the University of Cambridge in England. His team shared its work on March 26 at the spring meeting of the American Chemical Society (ACS). It took place in Indianapolis, Ind.\r\nUnusual cooling\r\n\r\nSurfaces that get cooler than their surroundings are unusual.\r\n\r\nThe reason: Hot objects shed heat through invisible infrared light. They transfer their heat to the air around them. When the object and the air reach the same temperature, that transfer stops. So the cooling stops.  ', '1686478019azerty.jpg', '2023-06-11 10:06:59', 11, 63),
(64, 'Octopuses and squid are masters of RNA editing while leaving DNA intact ', 'Many writers grouse when an editor makes a change in a story, but the consequences of changing a single word usually aren’t that dire.\r\n\r\nNot so with genetic instructions for making proteins. Even a small change can prevent a protein from doing its job properly, with possibly deadly consequences. Only occasionally is a change beneficial. It seems wisest to preserve genetic instructions as they are written. Unless you’re an octopus.\r\n\r\nOctopuses are like aliens living among us — they do a lot of things differently from land animals, or even other sea creatures. Their flexible tentacles taste what they touch and have minds of their own. Octopuses’ eyes are color-blind, but their skin can detect light on its own (SN: 6/27/15, p. 10). They are masters of disguise, changing color and skin textures to blend into their surroundings or scare off rivals. And to a greater extent than most creatures, octopuses squirt the molecular equivalent of red ink over their genetic instructions with astounding abandon, like a copy editor run amok.\r\nThese edits modify RNA, the molecule used to translate information from the genetic blueprint stored in DNA, while leaving the DNA unaltered.\r\n\r\nScientists don’t yet know for sure why octopuses, and other shell-less cephalopods including squid and cuttlefish, are such prolific editors. Researchers are debating whether this form of genetic editing gave cephalopods an evolutionary leg (or tentacle) up or whether the editing is just a sometimes useful accident. Scientists are also probing what consequences the RNA alterations may have under various conditions. Some evidence suggests editing may give cephalopods some of their smarts but could come at the cost of holding back evolution in their DNA (SN: 4/29/17, p. 6).\r\n\r\n“These animals are just magical,” says Caroline Albertin, a comparative developmental biologist at the Marine Biological Laboratory in Woods Hole, Mass. “They have all sorts of different solutions to living in the world they come from.” RNA editing may help give the creatures vast numbers of solutions for problems they may face.', '1686480952050623_cephalopods_feat-800x450.jpg', '2023-06-11 10:55:53', 49, 58),
(65, 'Wildfire smoke is blanketing the U.S. East Coast. It won’t be the last time', 'Even as the thick clouds of smoke from wildfires raging in eastern Canada, which blanketed the U.S. East Coast in a dangerous orange haze, begin to dissipate, researchers are warning it’s a sign of the times.\r\n\r\nCanada’s fire outlook will remain higher than normal for June. And on a larger scale, climate change is projected to make fire conditions more common across Canada, Russia and Alaska’s boreal forests.\r\n\r\nThe current fires were sparked by lightning in the Canadian province of Quebec; like much of Canada, parts of Quebec were abnormally dry this spring.', '1686494566060923_cg_canadian-fires-smoke_feat-1030x580.jpg', '2023-06-11 14:42:47', 58, 64),
(66, 'Weird black holes may hold secrets of the early universe', 'Our galaxy’s heart is a gluttonous monster. Like the mythical Kammapa of the Sotho people of southern Africa, the Milky Way’s central, supermassive black hole has swallowed nearly everything around it, growing heftier and heftier the more it eats. And it’s not alone. Black holes weighing as much as thousands, millions or even billions of suns sit at the center of nearly all known massive galaxies.\r\n\r\nFor decades, scientists thought that was the only place they’d find such behemoths, because only massive galaxies had enough material to feed the monsters’ excessive appetites. But beginning about two decades ago, computer simulations of the earliest black holes started turning up oddities — big black holes that weren’t smack-dab where they were expected. These misfits must be nothing more than flukes, many scientists reasoned at the time, dismissing the results without a second thought.', '1686499200aaaaaaa.jpg', '2023-06-11 16:00:00', 1, 65),
(67, 'A simulation of a dying star shows how it could create gravitational waves', 'Cocoons of debris around dying stars could shake ripples in spacetime unlike any astronomers have ever seen.\r\n\r\n“This is a potential source of gravitational waves that has never been investigated before,” astrophysicist Ore Gottlieb of Northwestern University in Evanston, Ill., said June 5 in a news conference at the American Astronomical Society meeting in Albuquerque.\r\n\r\nThe waves could potentially be picked up in the latest run of LIGO, which began on May 24.\r\n\r\nSince LIGO’s first detection in 2015, all the gravitational waves seen thus far have been from the spiraling death dance of two compact objects — black holes, neutron stars or both (SN: 2/11/16). These events give off what are called coherent gravitational waves. “You can think of it as an orchestra playing harmonically,” Gottlieb said.', '1686517071ass.jpg', '2023-06-11 20:57:51', 1, 66),
(68, 'How ChatGPT and similar AI will disrupt education', '“We need to talk,” Brett Vogelsinger said. A student had just asked for feedback on an essay. One paragraph stood out. Vogelsinger, a ninth grade English teacher in Doylestown, Pa., realized that the student hadn’t written the piece himself. He had used ChatGPT.\r\n\r\nThe artificial intelligence tool, made available for free late last year by the company OpenAI, can reply to simple prompts and generate essays and stories. It can also write code.\r\n\r\nWithin a week, it had more than a million users. As of early 2023, Microsoft planned to invest $10 billion into OpenAI, and OpenAI’s value had been put at $29 billion, more than double what it was in 2021.', '1686517501aaaaaaaaaaa.gif', '2023-06-11 21:05:01', 50, 59),
(69, 'Game theory approach describes how social networks produce “six degrees of separation”', '“Six degrees of separation” refers to a long-held notion about social networks—namely, that any two people in a social network are connected to each other, through friends of friends, by a maximum of five individuals. But there’s more to this notion than folk wisdom: Researchers have found, repeatedly (for example, via studies of Twitter), that the maximum number of social connections between any two people remains small, even as the network balloons.\r\n\r\nEven so, understanding how that happens has remained something of a mystery. In a recent paper published in Physical Review X, an international group of physicists, mathematicians, social scientists, and others took a game theory approach to show how the phenomenon develops. They found that assigning simple rules to new members—rules analogous to real-world behaviors related to altruism and cooperation—gave rise to a network in which the path length between any two members never exceeded six.\r\n\r\nThe work connects the emergence of six degrees in the network to individual choices, says Stefano Boccaletti, a physicist at the CNR Institute of Complex Systems, near Florence, Italy, who organized and led the study. “Six degrees is a very deep property,” Boccaletti notes.\r\n\r\n“The paper is extending a line of research that thinks about networks as the result of strategic decisions by a large set of participants,” says computer scientist Jon Kleinberg at Cornell University. “When many people individually strategize about how to form connections to others, the network that results is the sum total of their overlapping decisions about linking.”', '1686518138gamea.jpg', '2023-06-11 21:15:38', 77, 67),
(71, 'Chernobyl ', 'Chernobyl is a nuclear power plant in Ukraine that was the site of a disastrous nuclear accident on April 26, 1986. A routine test at the power plant went horribly wrong, and two massive explosions blew the 1,000-ton roof off one of the plant’s reactors, releasing 400 times more radiation than the atomic bomb dropped on Hiroshima. The worst nuclear disaster in history killed two workers in the explosions and, within months, at least 28 more would be dead by acute radiation exposure. Eventually, thousands of people would show signs of health effects—including cancer—from the fallout.\r\n\r\nThe Chernobyl disaster not only stoked fears over the dangers of nuclear power, it also exposed the Soviet government’s lack of openness to the Soviet people and the international community. The meltdown and its aftermath drained the Soviet Union of billions in clean-up costs, led to the loss of a primary energy source and dealt a serious blow to national pride.\r\n\r\nThen-Soviet leader Mikhail Gorbachev would later say that he thought the Chernobyl meltdown, “even more than my launch of perestroika, was perhaps the real cause of the collapse of the Soviet Union five years later.”', '1686519839hisssss.jpg', '2023-06-11 21:43:59', 5, 61),
(60, 'What HBO’s “Chernobyl” Got Right, and What It Got Terribly Wrong', 'vetlana Alexievich, the Russian-language Belarusian writer who won the Nobel Prize for Literature, in 2015, for her work with oral history, has said that the book she found easiest to report was her book about Chernobyl. (Its English title, depending on the translation, is “Voices from Chernobyl” or “Chernobyl Prayer.”) The reason, she said, was that none of her interlocutors—people who lived in the area affected by the disaster—knew how they were supposed to talk about it. For her other books, Alexievich interviewed people about their experience of the Second World War, the Soviet war in Afghanistan, and the dissolution of the Soviet Union. For all of these other events and periods in Russian history, there were widely adopted narratives, habits of speaking that, Alexievich found, had a way of overshadowing actual personal experience and private memory. But when she asked survivors about Chernobyl they accessed their own stories more easily, because the story hadn’t been told. The Soviet media disseminated very little information about the disaster. There were no books or movies or songs. There was a vacuum.\r\n\r\nAlexievich’s book about Chernobyl was published in Russian in 1997, more than ten years after one of the reactors at the Chernobyl power plant exploded, in what was probably the worst nuclear accident in history. One of the most remarkable facts about Chernobyl is that the narrative vacuum had persisted for that long, and, in fact, it has persisted since: Alexievich’s book came to prominence, both in Russia and in the West, only following her Nobel Prize win. There have been stories in the media in Russia and abroad, many of them on the odd tourist industry that has sprung up in the disaster zone; there has been a BBC documentary and a bizarre American-Ukrainian documentary. But in the past year two books, one by a historian and the other by a journalist, have attempted to tell the definitive documentary story of the disaster. Finally, the HBO series “Chernobyl,” the fifth and final episode of which aired Monday, tells a fictionalized version. It being television, and very well-received television at that, it is the series, rather than the books, that will probably finally fill the vacuum where the story of Chernobyl should be. This is not a good thing.', '1686522534cherno.jpg', '2023-06-11 14:28:54', 5, 68),
(74, 'The metric system is growing. Here’s what you need to know', 'Meet the metric system’s newest prefixes: ronna-, quetta-, ronto- and quecto-.\r\n\r\nAdopted November 18 at the 27th General Conference on Weights and Measures in Versailles, France, ronna- and quetta- describe exceedingly large numbers while ronto- and quecto- describe the exceedingly small. This is the first time that the International System of Units, or SI, has expanded since 1991, when the prefixes zetta-, yotta-, zepto and yocto- were added (SN: 1/16/93).\r\n\r\nNumerically, ronna- is 1027 (that’s a digit followed by 27 zeroes) and quetta- is 1030 (30 zeroes). Their tiny counterparts ronto- and quecto- refer to 10–27 and 10–30, the way milli- refers to 10–3, or 0.001. Until now, yotta- and yocto- (24 zeros) capped off the metric system’s range.\r\n\r\nScience News spoke with Richard Brown, head of metrology at the National Physical Laboratory in Teddington, England, about what the latest SI expansion means for science. The following conversation has been edited for clarity and brevity.\r\n\r\nSN: Why do we need the new prefixes?\r\n\r\nBrown: The quantity of data in the world is increasing exponentially. And we expect that to continue to increase and probably accelerate because of quantum computing, digitalization and things like that. At the same time, this quantity of data is starting to get close to the top range of the prefixes we currently use. People start to ask what comes next?', '1686523406aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.jpg', '2023-06-11 22:43:26', 17, 68),
(75, 'These worms can escape tangled blobs in an instant. Here’s how', 'Like tiny, wriggling Houdinis, California blackworms are master escape artists. Groups of the worms work themselves into gnarly tangles but they can undo the knots in just tens of milliseconds. Now scientists have teased out how they do it.\r\n\r\nFound in ponds and other standing water, California blackworms (Lumbriculus variegatus) interlace themselves into clumps to control their temperature or conserve moisture (SN: 1/11/19). The worms are typically just a few centimeters long. Their clumps, which can contain anywhere from 5 to 50,000 worms, take minutes to weave. But when spooked by a potential predator, the worms are outta there in an instant.', '1686523961phyyy.jpg', '2023-06-11 22:52:41', 32, 69),
(76, 'Here’s how to make a fiber-optic cable out of air using a laser', 'Tubular laser beams can create what amount to fiber-optic cables made of thin air, researchers report in a study to appear in Physical Review X.\r\n\r\nLaser-heated air can efficiently transmit light signals without the need to lay fiber-optic cables. These air-based “waveguides” can also provide pathways for ultrahigh-energy lasers that don’t propagate well through air on their own, building on earlier efforts that have been touted as a route to laser beam weapons', '1686524320optics.jpg', '2023-06-11 22:58:40', 26, 64),
(77, 'Solving problems by computer just got a lot faster', 'A new computer program works smarter, not harder, to solve problems faster than its predecessors.\r\n\r\nThe algorithm is designed to find the best solution to a given problem among all possible options. Whereas other computer programs winnow down the possibilities one at a time, the new program — presented July 12 at the International Conference on Machine Learning in Stockholm — rules out many choices at once.\r\n\r\nFor instance, imagine a computer is assigned to compile movie recommendations based on a particular film. The ideal recommendation list would include suggestions that are both similar to the original flick — say, in the same genre — yet different enough from each other to give the viewer a variety of choice. A traditional recommendation system would pore over an entire movie library to find films that best met those criteria and add films to its roster of recommendations one by one, a relatively slow and tedious process.', '1686524550computer.jpg', '2023-06-11 23:02:30', 61, 62),
(78, '‘We Are Electric’ delivers the shocking story of bioelectricity', 'It took just a 9-volt battery and a little brain zapping to turn science writer Sally Adee into a stone-cold sharpshooter.\r\n\r\nShe had flown out to California to test an experimental DARPA technology that used electric jolts to speed soldiers’ sniper training. When the juice was flowing, Adee could tell. In a desert simulation that pit her against virtual bad guys, she hit every one.\r\n\r\n“Getting my neurons slapped around by an electric field instantly sharpened my ability to focus,” Adee writes in her new book, We Are Electric. That brain-stimulating experience ignited her 10-year quest to understand how electricity and biology intertwine. And she’s not just talking neurons.', '1686525219bio.jpg', '2023-06-11 23:13:39', 53, 70),
(79, 'Scientists can’t agree about Chernobyl’s impact on wildlife', 'Thirty-five years after the meltdown at the Chernobyl nuclear power plant in northern Ukraine, reports often portray the area as a paradise for wildlife. Photos show foxes roaming the buildings of abandoned towns and bison and wild horses flourishing after people were permanently evacuated. But to some scientists, nature isn’t doing as well as it seems.\r\n\r\nIn fact, a debate roils in the scientific literature about the health of the microbes, fungi, plants and animals that live around Chernobyl. Some scientists have documented thriving wildlife now that people have left, suggesting that lingering radioactive contamination doesn’t pose a significant threat. But other scientists have found mostly negative effects of radiation on the health and abundance of creatures, from birds to mammals, with many populations smaller in more heavily contaminated areas. This controversy has only sharpened in recent years.', '1686526009chha.jpg', '2023-05-11 23:26:49', 11, 57),
(82, 'The classic map of how the human brain manages movement gets an update', 'The classical view of how the human brain controls voluntary movement might not tell the whole story.\r\n\r\nThat map of the primary motor cortex — the motor homunculus — shows how this brain region is divided into sections assigned to each body part that can be controlled voluntarily (SN: 6/16/15). It puts your toes next to your ankle, and your neck next to your thumb. The space each part takes up on the cortex is also proportional to how much control one has over that part. Each finger, for example, takes up more space than a whole thigh. ', '1686529329neuroscince.jpg', '2023-06-12 00:22:09', 23, 73);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`) VALUES
(45, 'Wonder', 'Lab', 'WonderLab', 'WonderLab@Wonder', 'wonderlab', 'user'),
(66, 'Zineb', 'Amri', 'Zinebzi', 'zinebamri@gmail.com', 'zinebzineb', '1686516980Sans titre.jpg'),
(48, 'mouad', 'makkour', 'conan', 'conan999@gmail.com', '123456789', '1686411850mak.jpg'),
(65, 'Garcia', 'Romero', 'Romero', 'Romerojijantes@gmail.com', 'calmacoundé', '1686499345prooooof.jpg'),
(64, 'oustad', 'mohammed', 'OTD', 'mohammedoustad@gmail.com', 'oujdaoujda', '1686495078WhatsApp Image 2023-06-11 at 15.48.15.jpeg'),
(52, 'Karim', 'amri', 'karim_amri', 'karim@gmail.com', 'karim1234', '1684021284Sans titre.jpg'),
(53, 'khalid', 'faras', 'khalid', 'khalid@k', '147852369', 'user'),
(54, 'Amineaa', 'fadili', 'amine10', 'fadili@gmail', '123456789', '16845131235b9nowdD_4x.jpg'),
(55, 'Amine', 'Kamal', 'amineKa', 'amine10@gmail.com', '100Ou001', '16863246701683538561hack.jpg'),
(56, 'Farid', 'Amri', 'amri456', 'amri@gmail.com', '123456789', 'user'),
(57, 'John', 'flik', 'john_flik', 'filk@gmail.com', 'flikflik', '1686412014john.jpg'),
(58, 'Aya', 'Idrissi', 'AyaAya', 'idr1254aya10@gmail.com', 'ayaidrissi', '1686414654aya.jpg'),
(59, 'Saad', 'Barrodi', 'saad96', 'saadsa@gmail.com', 'saadsaad', '1686435166superman.jpg'),
(60, 'Katrin', 'katrina', 'katrin123', 'ka123ka@gmail.com', 'katrina10', '1686437111kat.jpg'),
(61, 'Oussama', 'Remli', 'Oussama_Rem', 'remlioussama@gmailcom', 'remli123456789', '1686440879WhatsApp Image 2023-06-11 at 00.46.21.jpeg'),
(62, 'Smith', 'Brown', 'smithbrown', 'smith@gmail.com', 'smithsmith', '1686475494a.jpg'),
(63, 'Alice', 'Hamilton ', 'Hamilton ', 'Hamilton@gmail.com', 'hamiltonalice', '1686476180prof.jpg'),
(67, 'Jamal', 'Kamil', 'Jamalkamil', 'jamal@gmail.com', 'jamalkamil', 'user'),
(68, 'Yassine ', 'benaddi', 'yassineben', 'yassinebenaddi@gmail.com', 'yassineyassine', '1686522930WhatsApp Image 2023-06-11 at 23.29.00.jpeg'),
(69, 'Camilia', 'Cam', 'camilia', 'camilia@gmail.com', 'camiliacamilia', '1686523546camilia.jpg'),
(70, 'Mehdi', 'Benani', 'Mehdi500', 'mehdibenani@gmail.com', 'mehdi50000', '1686525322sim.jpg'),
(73, 'Mohammed', 'Khaldi', 'Abdi10', 'abdi@gmail.com', 'abdiabdi10', '1686529397profile.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
