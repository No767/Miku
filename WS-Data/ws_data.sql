--
-- PostgreSQL database dump
--

-- Dumped from database version 14.3 (Debian 14.3-1.pgdg110+1)
-- Dumped by pg_dump version 14.3 (Debian 14.3-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: ws_data; Type: TABLE; Schema: public; Owner: Kumiko
--

CREATE TABLE public.ws_data (
    uuid character varying NOT NULL,
    event_name character varying,
    name character varying,
    description text,
    star_rank integer,
    type character varying
);


ALTER TABLE public.ws_data OWNER TO "Miku";

--
-- Data for Name: ws_data; Type: TABLE DATA; Schema: public; Owner: Kumiko
--

COPY public.ws_data (uuid, event_name, name, description, star_rank, type) FROM stdin;
9b701bd2-96dc-40d9-8c72-5c36052be1e1	wanderlust	Jean	As the Acting Grand Master of the Knights, Jean has always been devoted to her duties and maintaining peace in Mondstadt.	5	character
ccd0d36f-f868-4288-b06b-1791f8edf8ce	\N	Zhongli	Wangsheng Funeral Parlor's mysterious consultant. Handsome, elegant, and surpassingly learned. Though no one knows where Zhongli is from, he is a master of courtesy and rules. From his seat at Wangsheng Funeral Parlor, he performs all manner of rituals.	5	character
ed8cf2bd-84b4-485c-89d7-18d6b7f86f77	\N	Klee	Knights of Favonius Spark Knight! Forever with a bang and a flash! —And then disappearing from the stern gaze of Acting Grand Master Jean. Sure, time in solitary confinement gives lots of time to think about new gunpowder formulas... But it'd still be better to not be in solitary in the first place.	5	character
5a36221a-38ec-4fd4-bee5-7f9b9ceb7ef5	\N	Traveler's Handy Sword	A handy steel sword which contains scissors, a magnifying glass, tinder, and other useful items in its sheath.	3	weapon
f7b5e82f-d9d2-46f2-b818-0590e18c95ee	\N	Messenger	A basic wooden bow. It is said to have once been used as a tool for long-distance communication.	3	weapon
6858b60a-b6c2-4601-b3ce-709b72706447	\N	Solar Pearl	A dull, golden pearl made of an unknown substance that harbors the light of the sun and the moon, and pulses with a warm strength.	4	weapon
f3242cb4-ed1d-4030-8380-40d0027230c9	\N	Mistsplitter Reforged	A sword that blazes with a fierce violet light. The name "Reforged" comes from it having been broken once before.	5	weapon
91f0cd0a-63bb-4399-bf6c-76e177cb290e	wanderlust	Shinobu	The deputy leader of the Arataki Gang. She wears a unique mask and is rather stoic.	4	character
546a628e-7434-444b-84e7-e436702c7179	wanderlust	Thoma	The Kamisato Clan's housekeeper. A well-known "fixer" in Inazuma.	4	character
1997f56e-d7f3-4ed8-b17e-a3582e6bc8c7	\N	Venti	A bard that seems to have arrived on some unknown wind — sometimes sing songs as old as the hills, and other times sing poems fresh and new. Likes apples and lively places, but is not a fan of cheese or anything sticky. When using his Anemo power to control the wind, it often appears as feathers, as he's fond of that which appears light and breezy.	5	character
401bc41d-cf94-45d6-8134-f03aed6402ce	\N	Aether	Aether used to be a world traveler with his sister, Lumine, until the day of their unfortunate encounter with the unknown goddess on Teyvat. Robbed of his powers, the surviving sibling starts his journey to find his lost sister.	5	character
6eca6572-de3c-4058-9b12-90fc50dbf236	\N	Windblume Ode	A bow adorned with nameless flowers that bears the earnest hopes of an equally nameless person.	4	weapon
c3f253bc-6c7a-4264-b710-d6b4a81b249b	\N	Mappa Mare	A nautical chart featuring nearby currents and climates that somehow found its way into Liyue via foreign traders.	4	weapon
2b1e7432-e6b9-4466-8f77-a0561d99f50c	wanderlust	Skyward Pride	A claymore that symbolizes the pride of Dvalin soaring through the skies. When swung, it emits a deep hum as the full force of Dvalin's command of the sky and the wind is unleashed.	5	weapon
2190d03d-8e2f-4560-9520-7f1fbb0b2a73	wanderlust	Skyward Atlas	A cloud atlas symbolizing Dvalin and its former master, the Anemo Archon. It details the winds and clouds of the northern regions and contains the powers of the sky and wind.	5	weapon
4b0c33f7-5ca0-427c-8685-6064e2803754	wanderlust	Skyward Harp	A greatbow that symbolizes Dvalins's affiliation with the Anemo Archon. The sound of the bow firing is music to the Anemo Archon's ears. It contains the power of sky and wind within.	5	weapon
26563286-6de6-4d6e-bb50-a8bd1adc19aa	wanderlust	Primordial Jade Winged-Spear	A jade polearm made by the archons, capable of slaying ancient beasts.	5	weapon
acf4e758-5e5c-42b8-8ea3-c7d3699d32ab	wanderlust	Skyward Spine	A polearm that symbolizes Dvalin's firm resolve. The upright shaft of this weapon points towards the heavens, clad in the might of sky and wind.	5	weapon
673d86dc-1131-4140-ba80-077aff246188	wanderlust	Aquila Favonia	The soul of the Knights of Favonius. Millennia later, it still calls on the winds of swift justice to vanquish all evil - just like the last heroine who wielded it.	5	weapon
bd86cfa9-11be-47f7-945a-a1e8c2b71266	wanderlust	Sucrose	An alchemist with an insatiable curiosity towards the world and everything in it. Attached to the Knights of Favonius as an assistant to Albedo, her area of focus is "bio-alchemy."	4	character
632c4988-979c-4002-9f49-b4ebed76ffe7	wanderlust	Chongyun	An exorcist who roams the land with Liyue as his base of operations, evil spirits fleeing wherever he goes. As the heir to a clan of exorcists, he has always possessed abilities superior to most. However, these abilities are not the result of training, but of an inborn trait — congenital positivity.	4	character
3e0b5b96-aece-4a38-b516-67c5077b116a	wanderlust	Diona	The incredibly popular bartender of the Cat's Tail tavern, rising star of Mondstadt's wine industry, and the greatest challenger to its traditional powerhouses.	4	character
3b2b9d80-433e-4403-a6e0-74a8f2990da6	wanderlust	Kaeya	In the Knights of Favonius, Kaeya is the most trusted aide for the Acting Grand lvlaster Jean. You can always count on him to solve any intractable problems.	4	character
ca8a99d8-757c-43f3-b427-85db98844374	\N	Lumine	Lumine used to be a world traveler with her brother, Aether, until the day of their unfortunate encounter with the unknown goddess on Teyvat. Stolen by her powers, the surviving sibling starts her journey to find her lost brother.	5	character
e64be54c-4415-4481-aa8b-bf424c83b109	\N	Shenhe	Even though she was born in the human world, she ended up being an adepti disciple. She grew up in the mountains far away from Liyue Harbor, her soul bound with red ropes, training both her body and mind.Despite having the elegant temperament of an adeptus, she seems to be shrouded in mystery.	5	character
08021800-f8b6-4d65-9481-9015da90bf65	\N	Dark Iron Sword	A perfectly ordinary iron sword, just sligthly darker than most.Info: Can be obtained by talking to "Chen the Sharp" in Liyue Harbor.	3	weapon
1c9f298c-e2e0-45d7-8dda-3d93a9b427d5	\N	Royal Bow	An old royal longbow that belonged to the erstwhile rulers of Mondstadt. Countless generations later, the bowstring is still tight and can still fire arrows with great force.	4	weapon
b9043610-b808-48e5-913d-90ea6a664c75	\N	Hu Tao	Hu Tao is the 77th Director of the Wangsheng Funeral Parlor, a person vital to managing Liyue's funerary affairs. She does her utmost to flawlessly carry out a person's last rites and preserve the world's balance of yin and yang. Aside from this, she is also a talented poet whose many "masterpieces" have passed around Liyue's populace by word of mouth.	5	character
3d37a2bb-793c-413e-8e2b-79c518fb7704	\N	Albedo	A genius known as the Kreideprinz, he is the Chief Alchemist and Captain of the Investigation Team of the Knights of Favonius. He is master of both of Sucrose and Timaeus.	5	character
d0a9399e-18e6-4e2a-851b-ad439f1feb62	\N	The Catch	In the distant past, this was the beloved spear of a famed Inazuman bandit.	4	weapon
21df8dd5-c2d8-40aa-a248-3144cf02eb61	\N	Fillet Blade	A sharp filleting knife. The blade is long, thin, and incredibly sharp.	3	weapon
104ede3d-8de1-4290-9636-8d01140a3af1	\N	Halberd	A polearm with an axe blade mounted on top that can deal quite a lot of damage. It's favored by the Millelith officiers.	3	weapon
88332b15-3bea-40ef-b2d9-4c6422a8e1e1	\N	Raiden Shogun	The Raiden Shogun is the awesome and terrible power of thunder incarnate, the exalted ruler of the Inazuma Shogunate.	5	character
aca33d1f-24ed-489e-aea1-43a56571c7a7	\N	Yelan	A mysterious person who claims to work for the Ministry of Civil Affairs, but is a "non-entity" on the Ministry of Civil Affairs' list.Elusive, enigmatic, erratic - all of these are Yelan's hallmarks.	5	character
41c6e8be-ebec-4d0e-8a0b-59ede1d35461	\N	Redhorn Stonethresher	According to its previous owner, this weapon is the "Mighty Redhorn Stoic Stonethreshing Gilded Goldcrushing Lion Lord" that can send any monster packing with its tail between its legs.	5	weapon
91a0bb07-fc9d-4edb-bf59-2265cd544947	\N	Royal Longsword	An old longsword that belonged to the erstwhile rulers of Mondstadt. Exquisitely crated, the carvings and embellishments testify to the stature of its owner.	4	weapon
38b145d8-de07-4cbd-9493-337113288a5d	\N	Wine and Song	A songbook from the bygone aristocratic era, whose composer has become forgotten. It chronicles the tale of a certain heroic outlaw.	4	weapon
eea879e7-28f8-4da4-b0e4-445a5e385136	\N	Miko Yae	The head shrine maiden in charge of Grand Narukami Shrine and a descendant of Kitsune lineage, Eternity's servant and friend, and the intimidating editor-in-chief of Yae Publishing House, a publisher of light novels... The enigmatic Guuji, with many identities, may never be fully understood by mortals for what she truly is in her heart of hearts.	5	character
837f2b85-7d1f-476c-b0da-e5609edd6848	wanderlust	Lost Prayer to the Sacred Winds	An educational tome written by anonymous early inhabitants who worshiped the wind. It has been blessed by the wind for its faithfulness and influence over the millennia.	5	weapon
1b6e7d4b-ab28-4a83-a7c8-42d6abae35bb	wanderlust	Wolf's Gravestone	A longsword used by the Wolf Knight. Originally just a heavy sheet of iron given to the knight by a blacksmith from the city, it became endowed with legendary power owing to his friendship with the wolves.	5	weapon
27f692d9-0c64-4b3e-873f-66f99dfa8faa	wanderlust	Skyward Blade	The sword of a knight that symbolizes the restored honor of Dvalin. The blessings of the Anemo Archon rest on the fuller of the blade, imbuing the sword with the powers of the sky and the wind.	5	weapon
bb29acd0-1a78-44a5-a940-10e4f898e477	wanderlust	Favonius Warbow	A standard-issue recurve bow of the Knights of Favonius. Only the best archers can unleash its full potential.	4	weapon
bcaa16b5-2b44-40e3-b2e4-55501c2f6878	wanderlust	Rust	A completly rusted iron greatbow. The average person would lack the strenth to even lift it, let alone fire it.	4	weapon
1cdcd549-aecc-4702-abf0-8f39e3687523	wanderlust	Sacrificial Bow	A ceremonial hunting bow that has become petrified over time. The trinkets on it are still visible. It grants the wielder the power to withstand the winds of time.	4	weapon
cb3a9ec0-8286-4c40-82dc-85c1e662730d	wanderlust	The Stringless	A bow that that once served as an extraordinary instrument. It is no longer capable of getting people up and dancing.	4	weapon
949f8db9-5b34-40d8-8112-9853a352213c	\N	Ganyu	The secretary to the Liyue Qixing. The blood of both human and illuminated beast flows within her veins. Graceful and quiet by nature, yet the gentle disposition of qilin sees not even the slightest conflict with even the most arduous of workloads. After all, Ganyu firmly believes that all the work she does is in honor of her contract with Rex Lapis, seeking the well-being of all living things within Liyue.	5	character
6f4cf3f8-0630-48aa-b042-79d1b681d30d	\N	Frostbearer	A fruit that possesses a strange, frosty will. A faint sense of agony emanates from it.	4	weapon
c8c7e347-dab1-4c26-b347-feb164457134	\N	Cinnabar Spindle	A sword made from materials that do not belong in this world. The power within might even be able to withstand the corruption of a venom that could corrode a mighty dragon.	4	weapon
e89f85ca-9dda-4b67-9e8d-517807790a6d	\N	Iron Sting	An exotic long-bladed rapier that somehow found its way into Liyue via foreign traders. It is light, agile and sharp.	4	weapon
98da7f3b-134b-4ccf-a767-e8f725889921	\N	Kamisato Ayaka	Daughter of the Yashiro Commission's Kamisato Clan. Dignified and elegant, as well as wise and strong. Sincere and pleasant to others. Universally loved by the Inazuma people, she has earned the title of Shirasagi Himegimi.	5	character
dcdbcf86-7fe5-4ad5-96da-7f94c0fdf016	wanderlust	Amos' Bow	An extremely ancient bow that has retained its power despite its original master being long gone. It draws power from everyone and everything in the world, and the further away you are from that which your heart desires, the more powerful it is.	5	weapon
e4e97d04-ee24-49ab-a38b-944c313c4083	wanderlust	Rosaria	Rosaria, a sister in Mondstadt's Church of Favonius.A sister of the church, though you wouldn't know it if it weren't for her attire. An unusual woman with sharp, piercing words and a cold manner.\n	4	character
1506d2ab-18df-46e7-b1fb-7236f5be2c44	wanderlust	Beidou	Captain of the Crux, with quite the reputation in Liyue. There are those who say she can split mountains and part the sea. Others say she draws lightning through her sword. Some say that even the mightiest of sea beasts are no match for her.	4	character
d8d7766f-dec2-4f6d-bc90-054fb9e098ef	wanderlust	Fischl	A mysterious girl who calls herself "Prinzessin der Verurteilung" and travels with a night raven named Oz.Currently serves as an investigator in-the Adventurers' Guild.\n	4	character
162ca7cb-2c81-422d-a470-5fe627173c24	wanderlust	Kujou Sara	Leader of the Tenryou Commission's forces. A charismatic woman who acts as swiftly as a storm wind and always honors her word.	4	character
06945816-9ee9-4e49-9631-48cb3dc83b30	wanderlust	Lisa	She is an intellectual witch who can never get enough naps. As the Librarian of the Knights of Favonius, Lisa is smart in that she always knows exactly what to do with whatever troubles her.	4	character
7a8fda2f-bcc9-4ed0-ad96-71b2d71d0270	wanderlust	Razor	Some say he is an orphan raised by wolves. Others say he is a wolf spirit in human form.	4	character
81a633ea-9e30-462b-9f70-9b547501c9d0	wanderlust	Gorou	The great general of Watatsumi Island's forces. He has gained respect and prestige, but always shows himself to be a humble leader.	4	character
6cad02ff-2006-411d-a10a-60057896f5bd	wanderlust	Ningguang	Owner of the Jade Chamber in the skies above Liyue, there are stories abound about Ningguang, with her elegance and mysterious smile.	4	character
5c5098c8-ea4d-4c45-9350-e2def26c3ffd	wanderlust	Noelle	Like most of Mondstadt's young people, Noelle always dreamed of being a knight of Favonius when she grew up.She may not have what it takes to be a knight just yet, but she is learning. Working as a maid at the Knights' headquarters, she is constantly taking notes on what constitutes knightly speech, knightly conduct, and knightly customs.\n	4	character
1d09e2e2-2970-4ec2-86e6-6ec5f7b27e64	wanderlust	Barbara	"The Deaconess of the Favonius Church and a shining starlet adored by all."	4	character
9b55e02a-b07a-40f7-88b9-ced0ff1747cf	wanderlust	Xingqiu	Second son of the Feiyun Commerce Guild, Xingqiu has had a reputation for being studious and polite ever since he was a young child.	4	character
23cb8327-1dfd-45c4-8d5a-3e0d4197bd52	wanderlust	Amber	A perky, straightforward girl, who is also the only Outrider of the Knights of Fayonius.	4	character
3beec9dd-7024-4ba6-8c20-3affecced424	wanderlust	Bennett	The few young adventurers that the Mondstadt Adventurers' Guild has always find themselves tangled up in baffling bouts of bad luck.	4	character
5d92257a-8a20-4c30-afca-3c07fd3dd3b5	wanderlust	Xiangling	The Head Chef at the Wanmin Restaurant and also a waitress there, Xiangling is extremely passionate about cooking and excels at her signature hot and spicy dishes.	4	character
6c97a9f5-38aa-4257-b5a0-a3c7d35b480d	wanderlust	Xinyan	Rock 'n' roll is an avant-garde art in Liyue Harbor and Xinyan is the pioneer in this field.	4	character
63c75ba4-9a08-4b18-9d42-08729fe36928	wanderlust	Sacrificial Sword	A ceremonial sword that has become petrified over time. The trinkets on it are still visible. It grants the wielder the power to withstand the winds of time.	4	weapon
c86622b0-03e4-46db-8a7a-98c5caf979f6	wanderlust	Bloodtainted Greatsword	A steel sword that is said to have been coated with dragon blood, rendering it invulnerable to damage. This effect is not extended to its wielder, however.	3	weapon
d66bd3e9-5758-4be2-b529-01292f1781bd	wanderlust	Debate Club	A handy club made of fine steel. The most persuasive line of reasoning in any debater's arsenal.	3	weapon
38a18cb8-eb29-4023-8bdc-b4ff8f6a29cd	wanderlust	Yanfei	A half-illuminated beast and highly-skilled legal adviser.She combines adherence to the legal codices and reasonable flexibility to find the perfect balance in her work. She devotes herself to protecting the fairness of contracts in Liyue with her identity as a legal adviser and her unique experience and methods.\n	4	character
becfac60-27d8-40f7-bfd8-daa6bbf45cf8	wanderlust	Eye of Perception	A dim black glaze pearl that is said to have the power to read the purity of one's heart.	4	weapon
1336fd9d-fdda-4776-a1e7-55de2759a856	wanderlust	Favonius Codex	A secret tome that belonged to the scholars of the Knight of Favonius. It describes the logic and power of elements and matter.	4	weapon
6bc81621-136e-48ed-949e-1479498a05db	wanderlust	Sacrificial Fragments	A weathered script, the text of which is no longer legible. A cursed item eroded by the winds of time.	4	weapon
a769874a-faf6-4e3e-b4c3-3228b06c4e53	wanderlust	The Bell	A heavy greatsword. A clock is embedded within it, though its internal mechanisms have long been damaged.	4	weapon
19a2574b-0720-4e3d-adbf-525127143135	wanderlust	Dragon's Bane	A polearm decorated with an entwining golden dragon. Light and sharp, this weapon may very well kill dragons with ease.	4	weapon
89da3f9f-e3f6-43d7-8e96-ef8d4d0580fc	wanderlust	Favonius Lance	A polearm made in the style of the Knights of Favonius. Its shaft is straight, and its tip flows lightly like the wind.	4	weapon
fc9d0d08-4fb6-4f28-91e5-973252c76207	wanderlust	Favonius Sword	A standard-issue longsword of the Knights of Favonius. When you're armed with this agile and sharp weapon, channelling the power of the elements has never been so easy!	4	weapon
79fcb402-f656-4424-aade-1727d1c959ce	wanderlust	Lion's Roar	A sharp blade with extravagant carvings that somehow does not compromise on durability and shapness. It roars like a lion as it cuts through the air.	4	weapon
b7f88b17-28d1-4c43-88f4-f33074056c8f	wanderlust	The Flute	Beneath its rusty exterior is a lavishly decorated thin blade. It swings as swiftly as the wind.	4	weapon
87bc4a11-c424-40ab-8383-ef7c0be8b09e	wanderlust	Raven Bow	Ravens are known to be the ferrymen of the dead. This bow's limb is decorated with raven feathers, which forebode the imminent death of its target.	3	weapon
d32437d5-625c-46b9-bab1-110e42d8872b	wanderlust	Sharpshooter's Oath	This superior bow once belonged to a master archer. However, it gives off a strong scent, thus making it unsuitable for hunting.	3	weapon
0f56abd7-db2e-4671-b072-23394989ecf6	wanderlust	Magic Guide	Version 12. A reprint featuring corrections to Version 11 and brand-new additons based on recent developments.	3	weapon
583f754a-00ed-4e1f-91cd-420620395c89	wanderlust	Thrilling Tales of Dragon Slayers	A fictional story of a band of five heroes who go off on a dragon hunt. It is poorly written and structurally incoherent. Its value lies in the many lessons that can be learned from failure.	3	weapon
20e56e2c-e07b-4221-8381-ea6ac30c393d	wanderlust	Ferrous Shadow	A replica of the famed sword of Arundolyn, the Lion of Light. Feel the power of a legendary hero as you hold this sword in your hand! Imagine yourself as the great warrior himself! Note: Daydreaming not recommended in live combat.	3	weapon
c944f910-72a6-4283-bbe7-220a8a3d2014	wanderlust	Black Tassel	An exceptionally powerful polearm that also offers a simple but elegant solution to the issue of the easily stained white tassel.	3	weapon
f8c2fe0d-3670-41d8-b864-bbc39cab125a	wanderlust	Cool Steel	A reliable steel-forged weapon that serves as a testament to the great adventures of its old master.	3	weapon
4db306c2-9fa7-4d5a-8c8f-093d259fb0f0	wanderlust	Skyrider Sword	A reliable steel sword. The legendary Skyrider once tried to ride it as a flying sword...	3	weapon
0ed7c8f7-5fb0-44a7-841f-530757359c51	wanderlust	Slingshot	A bow, despite the name. After countless experiments and improvements to the design, the creator of the ultimate slingshot found himself to have made what was actually a bow.	3	weapon
87820093-a2a9-4565-ba7a-9082f573032a	wanderlust	Emerald Orb	A catalyst carved out of the hard jade from Jueyun Karst north of Liyue. Small, light, and durable, it is known more colloquially as the "jade ball."	3	weapon
759b1e36-d8a8-4b86-aff3-21bfe9f839f8	wanderlust	Qiqi	An apprentice and herb gatherer at Bubu Pharmacy. "Blessed" by the adepti with a body that cannot die, this petite zombie cannot do anything without first giving herself orders to do it.	5	character
dc046b72-11a1-4444-b7c7-1edc7081ab0b	wanderlust	Keqing	The Yuheng of the Liyue Qixing. Keqing has much to say about Rex Lapis' unilateral approach to policymaking in Liyue ⁠— but in truth, gods admire skeptics such as her quite a lot.	5	character
8c90ad8b-90fa-4f9a-9b7a-9b056e1430dd	wanderlust	Mona	A mysterious young astrologer who proclaims herself to be "Astrologist Mona Megistus," and who possesses abilities to match the title. Erudite, but prideful.	5	character
ac97b800-169e-4d1e-b921-98883dea0d85	wanderlust	Diluc	As the wealthiest gentleman in Mondstadt, the ever-dapper Diluc always presents himself as the epitome of perfection.	5	character
8684b676-13bb-4e4c-807b-823d982f85c0	wanderlust	Sayu	A ninja from the Shuumatsuban that is struggling with growing tall. Sayu believes that sleeping can help her growth, which is why she prefers to use her ninja techniques to hide and "laze around."	4	character
dd5ce81a-e04a-491a-b3c6-93e51a9bc04f	\N	Xiao	One of the mighty and illuminated adepti guarding Liyue, also heralded as the "Vigilant Yaksha." Despite his youthful appearance, tales of his exploits have been documented for millennia. He is especially fond of Wangshu Inn's Almond Tofu. This is because it tastes just like the sweet dreams he used to devour.	5	character
1451fe47-0504-46f3-a995-e90d0eedd18c	\N	The Black Sword	A pitch-black longsword that thirsts for violence and conflict. It is said that this weapon can cause its user to become drunk on the red wine of slaugther.	4	weapon
ae81da40-6b5f-48c6-80b9-c2d5c93d141a	\N	Skyrider Greatsword	A reliable steel sword. The legendary Skyrider once tried to ride it as a flying sword... for the second time.	3	weapon
70aa804b-5b14-4b25-aee0-56e721133cbb	\N	Staff of Homa	A "firewood staff" that was once used in ancient and long-lost rituals.	5	weapon
a9207acb-b4ed-4ea1-b1fe-1fde815babac	\N	Naganohara Yoimiya	A talented pyrotechnician. The current owner of Naganohara Fireworks known as the "Queen of the Summer Festival." A girl filled with fiery passion. The uncompromising childish innocence and the obsession with craftsmanship intertwine in her to create a spectacular blaze.	5	character
e6b5266d-3791-40a5-be66-f666391b19e6	wanderlust	Harbringer of Dawn	A sword that once shone like the sun. The wielder of this sword will be blessed with a "feel-good" buff. The reflective material on the blade has long worn off.	3	weapon
\.


--
-- Name: ws_data ws_data_pkey; Type: CONSTRAINT; Schema: public; Owner: Kumiko
--

ALTER TABLE ONLY public.ws_data
    ADD CONSTRAINT ws_data_pkey PRIMARY KEY (uuid);


--
-- PostgreSQL database dump complete
--

