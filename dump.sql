--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3

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

--
-- Name: eso; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE eso WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


ALTER DATABASE eso OWNER TO postgres;

\connect d4m21vcstmd8ie

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
-- Name: knex_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knex_migrations (
    id integer NOT NULL,
    name character varying(255),
    batch integer,
    migration_time timestamp with time zone
);


ALTER TABLE public.knex_migrations OWNER TO postgres;

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.knex_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knex_migrations_id_seq OWNER TO postgres;

--
-- Name: knex_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.knex_migrations_id_seq OWNED BY public.knex_migrations.id;


--
-- Name: knex_migrations_lock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.knex_migrations_lock (
    index integer NOT NULL,
    is_locked integer
);


ALTER TABLE public.knex_migrations_lock OWNER TO postgres;

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.knex_migrations_lock_index_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.knex_migrations_lock_index_seq OWNER TO postgres;

--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.knex_migrations_lock_index_seq OWNED BY public.knex_migrations_lock.index;


--
-- Name: sets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sets (
    id integer NOT NULL,
    name text NOT NULL,
    type text NOT NULL,
    weight text NOT NULL,
    bonuses text NOT NULL
);


ALTER TABLE public.sets OWNER TO postgres;

--
-- Name: sets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sets_id_seq OWNER TO postgres;

--
-- Name: sets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sets_id_seq OWNED BY public.sets.id;


--
-- Name: knex_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations ALTER COLUMN id SET DEFAULT nextval('public.knex_migrations_id_seq'::regclass);


--
-- Name: knex_migrations_lock index; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations_lock ALTER COLUMN index SET DEFAULT nextval('public.knex_migrations_lock_index_seq'::regclass);


--
-- Name: sets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sets ALTER COLUMN id SET DEFAULT nextval('public.sets_id_seq'::regclass);


--
-- Data for Name: knex_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knex_migrations (id, name, batch, migration_time) FROM stdin;
104	20200902202820_sets_table.js	1	2020-09-03 11:21:30.475-05
\.


--
-- Data for Name: knex_migrations_lock; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.knex_migrations_lock (index, is_locked) FROM stdin;
1	0
\.


--
-- Data for Name: sets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sets (id, name, type, weight, bonuses) FROM stdin;
2	Aegis Caller	Dungeon Set	Medium Armor	<strong>(2 piece)</strong>\n<span>Adds 129 <span class='weapon'>Weapon Damage</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 129 <span class='stamina'>Stamina Recovery</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 129 <span class='weapon'>Weapon Damage</span></span><br>\n<strong>(5 piece)</strong>\n<span>When you deal critical melee damage, summon a Lesser Aegis for 11 seconds. After 2.5 seconds, the Lesser Aegis spins its blades, dealing 3730 Bleed Damage every 1 second. This effect can occur once every 12 seconds.</span><br>
4	Affliction	Item Set	Heavy Armor	<strong>(2 piece)</strong>\n<span>Adds 129 <span class='weapon'>Weapon Damage</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1096 <span class='stamina'>Maximum Stamina</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 129 <span class='stamina'>Stamina Recovery</span></span><br>\n<strong>(5 piece)</strong>\n<span>When you deal damage, you have a 50% chance to deal 1830 Disease damage to the target. This damage immediately applies the Diseased status effect, applying <span class='debuff'>Minor Defile</span> to the target, reducing their Healing Received and <span class='health'>Health</span> Recovery by 15% for 4 seconds.</span><br>
6	Akaviri Dragonguard	Overland Set	Heavy Armor	<strong>(2 piece)</strong>\n<span>Adds 129 <span class='magicka'>Magicka Recovery</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 4% <span class='health'>Healing Taken</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(5 piece)</strong>\n<span>Adds 158 <span class='health'>Health</span> Recovery</span><br>\n<strong>(5 piece)</strong>\n<span>Reduces the cost of your Ultimate abilities by 15%.</span><br>
8	Alessian Order	Item Set	Heavy Armor	<strong>(2 piece)</strong>\n<span>Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(5 piece)</strong>\n<span>Increase your <span class='health'>Health</span> Recovery by 1% of your sum total <span class='p-resist'>Physical Resistance</span> and <span class='s-resist'>Physical Resistance</span>. Current Bonus <span class='health'>Health</span> Recovery</span><br>\n<span>0.</span><br>
9	Almalexia's Mercy	Item Set	Light Armor	<strong>(2 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(5 piece)</strong>\n<span>When you take damage, you have a 20% chance to heal you and your allies within 7 meters of you for 2429 <span class='health'>Health</span>. This effect can occur once every 3 seconds.</span><br>
10	Amber Plasm	Dungeon Set	Light Armor	<strong>(2 piece)</strong>\n<span>Adds 1096 <span class='magicka'>Maximum Magicka</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 833 <span class='spell'>Spell Critical</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 129 <span class='spell'>Spell Damage</span></span><br>\n<strong>(5 piece)</strong>\n<span>Adds 276 <span class='magicka'>Magicka Recovery</span></span><br>\n<strong>(5 piece)</strong>\n<span>Adds 276 <span class='stamina'>Stamina Recovery</span></span><br>\n<strong>(5 piece)</strong>\n<span>Adds 276 <span class='health'>Health</span> Recovery</span><br>
1	Adept Rider	Craftable Set	Any	<strong>(2 piece)</strong>\n<span>Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(5 piece)</strong>\n<span>While mounted you gain <span class='buff'>Major Evasion</span>, reducing damage from area attacks by 25%. Dismounting spawns a dust cloud at your position for 12 seconds that deals 1436 Physical Damage every 1 second to enemies who stand inside it. You and group members inside the dust cloud gain <span class='buff'>Major Evasion</span>. Dust cloud can be created once every 12 seconds.</span><br>
12	The Arch-Mage	Item Set	Light Armor	<strong>(2 piece)</strong>\n<span>Adds 129 <span class='magicka'>Magicka Recovery</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 129 <span class='spell'>Spell Damage</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 1096 <span class='magicka'>Maximum Magicka</span></span><br>\n<strong>(5 piece)</strong>\n<span>Dealing damage with a charged Heavy Attack increases your <span class='magicka'>Magicka Recovery</span> by 369 for 10 seconds.</span><br>
13	Archer's Mind	Dragon Star Arena Set	Medium Armor	<strong>(2 piece)</strong>\n<span>Adds 1096 <span class='stamina'>Maximum Stamina</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 833 <span class='weapon'>Weapon Critical</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 833 <span class='weapon'>Weapon Critical</span></span><br>\n<strong>(5 piece)</strong>\n<span>Increases your Critical Damage by 5%. Increases your Critical Damage by an additional 10% when attacking from Sneak or invisibility.</span><br>
19	Armor of the Veiled Heritance	Overland Set	Heavy Armor	<strong>(2 piece)</strong>\n<span>Adds 129 <span class='weapon'>Weapon Damage</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 833 <span class='weapon'>Weapon Critical</span></span><br>\n<strong>(5 piece)</strong>\n<span>When you interrupt an enemy, you gain 516 <span class='weapon'>Weapon Damage</span> for 15 seconds. Your bash attacks permanently deal 516 more Damage.</span><br>
20	Armor of Truth	Dungeon Set	Heavy Armor	<strong>(2 piece)</strong>\n<span>Adds 833 <span class='weapon'>Weapon Critical</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1096 <span class='stamina'>Maximum Stamina</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 129 <span class='weapon'>Weapon Damage</span></span><br>\n<strong>(5 piece)</strong>\n<span>When you deal damage to an enemy who is Off Balance, your <span class='weapon'>Weapon Damage</span> is increased by 460 for 10 seconds.</span><br>
25	Aspect of Mazzatun	Dungeon Set	Heavy Armor	<strong>(2 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1096 <span class='stamina'>Maximum Stamina</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 1096 <span class='magicka'>Maximum Magicka</span></span><br>\n<strong>(5 piece)</strong>\n<span>When you take damage while under 30% <span class='health'>Health</span>, you heal for 7052 <span class='health'>Health</span> and restore 6020 Magicka and Stamina. This effect can occur once every 45 seconds.</span><br>
28	Auroran's Thunder	Dungeon Set	Light Armor	<strong>(2 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 129 <span class='spell'>Spell Damage</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 1487 <span class='s-pen'>Physical Penetration</span></span><br>\n<strong>(5 piece)</strong>\n<span>Dealing direct damage with a single target attack summons a cone of lightning from your chest for 3 seconds, dealing 1147 Shock Damage every 0.5 seconds to enemies in the cone. This effect can occur every 6 seconds.</span><br>
21	Arms of Infernace	Dropped	Any	<strong>(3 piece)</strong>\n<span>Adds 129 <span class='weapon'>Weapon Damage</span></span><br>
23	Arms of the Ancestors	Dropped	n/a	<strong>(3 piece)</strong>\n<span>Adds 1487 <span class='p-pen'>Physical Penetration</span></span><br>
30	Azureblight Reaper	Dungeon Set	Medium Armor	<strong>(2 piece)</strong>\n<span>Adds 833 <span class='weapon'>Weapon Critical</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1096 <span class='stamina'>Maximum Stamina</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 129 <span class='stamina'>Stamina Recovery</span></span><br>\n<strong>(5 piece)</strong>\n<span>When you deal damage with a damage over time effect, you apply a stack of Blight Seed to your target for 5 seconds. At 20 stacks, the Blight Seeds explode, dealing 11100 Disease Damage to the target and nearby enemies. An enemy can only have one instance of Blight Seeds applied at a time. An enemy that has reached 20 stacks cannot be infected with Blight Seed for 2 seconds.</span><br>
5	Agility	Dropped	n/a	<strong>(2 piece)</strong>\n<span>Adds 1752 <span class='stamina'>Maximum Stamina</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 206 <span class='weapon'>Weapon Damage</span></span><br>
7	Alessia's Bulwark	Craftable Set	Any	<strong>(2 piece)</strong>\n<span>Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(5 piece)</strong>\n<span>When you take damage from a melee attack, you have a 15% chance to reduce the attacker's <span class='weapon'>Weapon Damage</span> by 300 for 5 seconds.</span><br>
11	Ancient Dragonguard	Craftable Set	Any	<strong>(2 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 129 <span class='weapon'>Weapon Damage</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 129 <span class='spell'>Spell Damage</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 833 <span class='weapon'>Weapon Critical</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 833 <span class='spell'>Spell Critical</span></span><br>\n<strong>(5 piece)</strong>\n<span>Adds 300 Weapon and <span class='spell'>Spell Damage</span> while your <span class='health'>Health</span> is above 50%. Adds 3460 Physical and <span class='s-resist'>Physical Resistance</span> while your <span class='health'>Health</span> is 50% or less.</span><br>
3	Aegis of Galenwe	Trial Set	Heavy Armor	<strong>(2 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(3 piece)</strong>\n<span>Gain <span class='buff'>Minor Aegis</span> at all times, reducing your damage taken from Dungeon, Trial, and Arena Monsters by 5%.</span><br>\n<strong>(4 piece)</strong>\n<span>Adds 4% <span class='health'>Healing Taken</span></span><br>\n<strong>(5 piece)</strong>\n<span>After successfully blocking, you grant <span class='buff'>Empower</span> to 11 allies within 15 meters for 5 seconds, increasing the damage of their next Light Attack by 40%. This effect can occur once every 2 seconds.</span><br>
14	Arkasis's Genius	Dungeon Set	Heavy Armor	<strong>(2 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(5 piece)</strong>\n<span>Whenever you drink a potion, you and 3 group members gain 44 Ultimate. This effect can occur once every 30 seconds.</span><br>
15	Armor Master	Craftable Set	Any	<strong>(2 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 1487 <span class='armor'>Armor</span></span><br>\n<strong>(5 piece)</strong>\n<span>While you have an <span class='armor'>Armor</span> ability slotted, your Max <span class='health'>Health</span> is increased by 5%. When you use an Armor ability, your Physical and <span class='s-resist'>Physical Resistance</span> is increased by 5332 for 10 seconds.</span><br>
17	Armor of the Seducer	Craftable Set	Any	<strong>(2 piece)</strong>\n<span>Adds 129 <span class='magicka'>Magicka Recovery</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1096 <span class='magicka'>Maximum Magicka</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 129 <span class='magicka'>Magicka Recovery</span></span><br>\n<strong>(5 piece)</strong>\n<span>Reduces the cost of your Magicka abilities by 10%.</span><br>
18	Armor of the Trainee	Overland Set	Any	<strong>(1 piece)</strong>\n<span>Adds 1096 Maximum <span class='health'>Health</span></span><br>\n<strong>(2 piece)</strong>\n<span>Adds 1096 <span class='magicka'>Maximum Magicka</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 1096 <span class='stamina'>Maximum Stamina</span></span><br>
22	Arms of Relequen	Trial Set	Medium Armor	<strong>(2 piece)</strong>\n<span>Adds 833 <span class='weapon'>Weapon Critical</span></span><br>\n<strong>(3 piece)</strong>\n<span>Gain <span class='buff'>Minor Slayer</span> at all times, increasing your damage done to Dungeon, Trial, and Arena Monsters by 5%.</span><br>\n<strong>(4 piece)</strong>\n<span>Adds 833 <span class='weapon'>Weapon Critical</span></span><br>\n<strong>(5 piece)</strong>\n<span>Your Light and Heavy attacks apply a stack of harmful winds to your target for 5 seconds. Harmful winds deal 200 Physical Damage per stack every 1 second. 20 stacks max.</span><br>
24	Ashen Grip	Craftable Set	Any	<strong>(2 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 129 <span class='weapon'>Weapon Damage</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 833 <span class='weapon'>Weapon Critical</span></span><br>\n<strong>(5 piece)</strong>\n<span>When you deal melee damage, you breathe fire to all enemies in front of you for 5350 Flame damage. This effect can occur once every 4 seconds.</span><br>
26	Assassin's Guile	Craftable Set	Any	<strong>(2 piece)</strong>\n<span>Adds 833 <span class='spell'>Spell Critical</span></span><br>\n<strong>(3 piece)</strong>\n<span>Adds 833 <span class='weapon'>Weapon Critical</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 129 <span class='spell'>Spell Damage</span></span><br>\n<strong>(4 piece)</strong>\n<span>Adds 129 <span class='weapon'>Weapon Damage</span></span><br>\n<strong>(5 piece)</strong>\n<span>Increases the duration of your alchemical poisons by 4 seconds.</span><br>
29	Automated Defense	Trial Set	Heavy Armor	<strong>(2 piece)</strong>\n<span>Adds 1206 Maximum <span class='health'>Health</span></span><br>\n<strong>(3 piece)</strong>\n<span>Gain <span class='buff'>Minor Aegis</span> at all times, reducing your damage taken from Dungeon, Trial, and Arena Monsters by 5%.</span><br>\n<strong>(4 piece)</strong>\n<span>Adds 4% <span class='health'>Healing Taken</span></span><br>\n<strong>(5 piece)</strong>\n<span>When you use an Ultimate ability, you and the closest 2 allies within 28 meters of you gain <span class='buff'>Major Aegis</span> for 10 seconds, reducing your damage taken from Dungeon, Trial, and Arena Monsters by 15%.</span><br>
\.


--
-- Name: knex_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knex_migrations_id_seq', 104, true);


--
-- Name: knex_migrations_lock_index_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.knex_migrations_lock_index_seq', 1, true);


--
-- Name: sets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sets_id_seq', 30, true);


--
-- Name: knex_migrations_lock knex_migrations_lock_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations_lock
    ADD CONSTRAINT knex_migrations_lock_pkey PRIMARY KEY (index);


--
-- Name: knex_migrations knex_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.knex_migrations
    ADD CONSTRAINT knex_migrations_pkey PRIMARY KEY (id);


--
-- Name: sets sets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sets
    ADD CONSTRAINT sets_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

