--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1 (Debian 16.1-1.pgdg120+1)
-- Dumped by pg_dump version 16.1

-- Started on 2024-02-09 19:31:27 UTC

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
-- TOC entry 216 (class 1259 OID 49217)
-- Name: friend; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.friend (
    id integer NOT NULL,
    type character varying(255),
    name character varying(255),
    hp integer,
    attack integer,
    defense integer,
    trainerid integer
);


ALTER TABLE public.friend OWNER TO root;

--
-- TOC entry 218 (class 1259 OID 49241)
-- Name: friendequip; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.friendequip (
    friendid integer NOT NULL,
    weaponid integer NOT NULL
);


ALTER TABLE public.friendequip OWNER TO root;

--
-- TOC entry 219 (class 1259 OID 49256)
-- Name: tasks; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.tasks (
    friendid integer,
    id integer NOT NULL,
    reward integer
);


ALTER TABLE public.tasks OWNER TO root;

--
-- TOC entry 215 (class 1259 OID 49165)
-- Name: trainer; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.trainer (
    id integer NOT NULL,
    name character varying(255),
    money integer
);


ALTER TABLE public.trainer OWNER TO root;

--
-- TOC entry 217 (class 1259 OID 49229)
-- Name: weapon; Type: TABLE; Schema: public; Owner: root
--

CREATE TABLE public.weapon (
    id integer NOT NULL,
    name character varying(255),
    type character varying(255),
    attackpower integer,
    defense integer,
    trainerid integer
);


ALTER TABLE public.weapon OWNER TO root;

--
-- TOC entry 3379 (class 0 OID 49217)
-- Dependencies: 216
-- Data for Name: friend; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.friend VALUES (1, 'Electric', 'NotPikachu', 50, 40, 30, 1);
INSERT INTO public.friend VALUES (2, 'Fire', 'FireBoy', 40, 60, 20, 2);
INSERT INTO public.friend VALUES (3, 'Fire', 'Flareon', 100, 30, 20, 1);
INSERT INTO public.friend VALUES (4, 'Water', 'Vaporeon', 120, 25, 25, 1);
INSERT INTO public.friend VALUES (5, 'Grass', 'Leafon', 90, 35, 15, 2);
INSERT INTO public.friend VALUES (6, 'Electric', 'Jolteon', 80, 40, 18, 2);
INSERT INTO public.friend VALUES (7, 'Rock', 'Rocky', 150, 28, 30, 3);
INSERT INTO public.friend VALUES (8, 'Flying', 'Feather', 110, 32, 22, 3);
INSERT INTO public.friend VALUES (9, 'Psychic', 'Mindreader', 95, 38, 25, 1);
INSERT INTO public.friend VALUES (10, 'Ice', 'Frostbite', 110, 30, 28, 2);
INSERT INTO public.friend VALUES (11, 'Poison', 'Venomous', 80, 42, 20, 3);
INSERT INTO public.friend VALUES (12, 'Dragon', 'Draco', 150, 50, 40, 6);
INSERT INTO public.friend VALUES (13, 'Dragon', 'Scorch', 140, 55, 35, 6);
INSERT INTO public.friend VALUES (14, 'Dragon', 'Inferno', 160, 48, 45, 6);
INSERT INTO public.friend VALUES (15, 'Rock', 'BigRock', 200, 30, 50, 4);
INSERT INTO public.friend VALUES (16, 'Rock', 'BiggerRock', 250, 40, 65, 4);
INSERT INTO public.friend VALUES (17, 'Water', 'Fish', 5, 1000, 20, 5);


--
-- TOC entry 3381 (class 0 OID 49241)
-- Dependencies: 218
-- Data for Name: friendequip; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.friendequip VALUES (1, 1);
INSERT INTO public.friendequip VALUES (2, 2);
INSERT INTO public.friendequip VALUES (3, 3);
INSERT INTO public.friendequip VALUES (4, 4);
INSERT INTO public.friendequip VALUES (5, 5);
INSERT INTO public.friendequip VALUES (6, 6);


--
-- TOC entry 3382 (class 0 OID 49256)
-- Dependencies: 219
-- Data for Name: tasks; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.tasks VALUES (1, 101, 50);
INSERT INTO public.tasks VALUES (2, 102, 40);
INSERT INTO public.tasks VALUES (3, 103, 60);
INSERT INTO public.tasks VALUES (4, 104, 55);
INSERT INTO public.tasks VALUES (5, 105, 70);
INSERT INTO public.tasks VALUES (6, 106, 45);
INSERT INTO public.tasks VALUES (7, 107, 65);
INSERT INTO public.tasks VALUES (8, 108, 55);
INSERT INTO public.tasks VALUES (9, 109, 70);
INSERT INTO public.tasks VALUES (1, 113, 60);
INSERT INTO public.tasks VALUES (1, 114, 75);
INSERT INTO public.tasks VALUES (1, 115, 80);
INSERT INTO public.tasks VALUES (2, 116, 50);
INSERT INTO public.tasks VALUES (2, 117, 65);
INSERT INTO public.tasks VALUES (3, 118, 70);
INSERT INTO public.tasks VALUES (3, 119, 55);
INSERT INTO public.tasks VALUES (3, 120, 75);
INSERT INTO public.tasks VALUES (3, 121, 90);
INSERT INTO public.tasks VALUES (4, 122, 45);
INSERT INTO public.tasks VALUES (5, 123, 65);
INSERT INTO public.tasks VALUES (5, 124, 80);
INSERT INTO public.tasks VALUES (5, 125, 55);
INSERT INTO public.tasks VALUES (6, 126, 70);
INSERT INTO public.tasks VALUES (6, 127, 85);
INSERT INTO public.tasks VALUES (7, 128, 60);
INSERT INTO public.tasks VALUES (7, 129, 75);
INSERT INTO public.tasks VALUES (8, 130, 50);
INSERT INTO public.tasks VALUES (9, 131, 65);
INSERT INTO public.tasks VALUES (9, 132, 80);
INSERT INTO public.tasks VALUES (9, 133, 55);
INSERT INTO public.tasks VALUES (10, 134, 80);
INSERT INTO public.tasks VALUES (10, 135, 95);
INSERT INTO public.tasks VALUES (10, 136, 70);
INSERT INTO public.tasks VALUES (10, 137, 85);
INSERT INTO public.tasks VALUES (11, 138, 75);
INSERT INTO public.tasks VALUES (11, 139, 90);
INSERT INTO public.tasks VALUES (11, 140, 65);
INSERT INTO public.tasks VALUES (11, 141, 80);
INSERT INTO public.tasks VALUES (12, 142, 85);
INSERT INTO public.tasks VALUES (12, 143, 100);
INSERT INTO public.tasks VALUES (12, 144, 75);
INSERT INTO public.tasks VALUES (12, 145, 90);


--
-- TOC entry 3378 (class 0 OID 49165)
-- Dependencies: 215
-- Data for Name: trainer; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.trainer VALUES (6, 'Lance', 7000);
INSERT INTO public.trainer VALUES (5, 'Misty', 3000);
INSERT INTO public.trainer VALUES (4, 'Brock', 250);
INSERT INTO public.trainer VALUES (3, 'Ash', 3000);
INSERT INTO public.trainer VALUES (2, 'Blue', 2000);
INSERT INTO public.trainer VALUES (1, 'Red', 1000);


--
-- TOC entry 3380 (class 0 OID 49229)
-- Dependencies: 217
-- Data for Name: weapon; Type: TABLE DATA; Schema: public; Owner: root
--

INSERT INTO public.weapon VALUES (1, 'Fireball', 'Fire', 40, 10, 1);
INSERT INTO public.weapon VALUES (2, 'Aqua Blade', 'Water', 35, 15, 1);
INSERT INTO public.weapon VALUES (3, 'Leaf Spear', 'Grass', 45, 8, 2);
INSERT INTO public.weapon VALUES (4, 'Thunder Staff', 'Electric', 50, 12, 2);
INSERT INTO public.weapon VALUES (5, 'Rock Hammer', 'Rock', 38, 20, 3);
INSERT INTO public.weapon VALUES (6, 'Feather Dart', 'Flying', 30, 18, 3);
INSERT INTO public.weapon VALUES (7, 'Psychic Orb', 'Psychic', 48, 15, 1);
INSERT INTO public.weapon VALUES (8, 'Frost Lance', 'Ice', 33, 20, 2);
INSERT INTO public.weapon VALUES (9, 'Poison Dagger', 'Poison', 55, 10, 3);


--
-- TOC entry 3221 (class 2606 OID 49223)
-- Name: friend friend_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.friend
    ADD CONSTRAINT friend_pkey PRIMARY KEY (id);


--
-- TOC entry 3225 (class 2606 OID 49245)
-- Name: friendequip friendequip_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.friendequip
    ADD CONSTRAINT friendequip_pkey PRIMARY KEY (weaponid, friendid);


--
-- TOC entry 3229 (class 2606 OID 49260)
-- Name: tasks tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT tasks_pkey PRIMARY KEY (id);


--
-- TOC entry 3219 (class 2606 OID 49171)
-- Name: trainer trainer_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.trainer
    ADD CONSTRAINT trainer_pkey PRIMARY KEY (id);


--
-- TOC entry 3227 (class 2606 OID 65542)
-- Name: friendequip unique_fid; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.friendequip
    ADD CONSTRAINT unique_fid UNIQUE (friendid);


--
-- TOC entry 3223 (class 2606 OID 49235)
-- Name: weapon weapon_pkey; Type: CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.weapon
    ADD CONSTRAINT weapon_pkey PRIMARY KEY (id);


--
-- TOC entry 3232 (class 2606 OID 49251)
-- Name: friendequip fk_friend; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.friendequip
    ADD CONSTRAINT fk_friend FOREIGN KEY (friendid) REFERENCES public.friend(id);


--
-- TOC entry 3234 (class 2606 OID 49261)
-- Name: tasks fk_friend; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.tasks
    ADD CONSTRAINT fk_friend FOREIGN KEY (friendid) REFERENCES public.friend(id);


--
-- TOC entry 3230 (class 2606 OID 49224)
-- Name: friend fk_trainer; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.friend
    ADD CONSTRAINT fk_trainer FOREIGN KEY (trainerid) REFERENCES public.trainer(id);


--
-- TOC entry 3231 (class 2606 OID 49236)
-- Name: weapon fk_trainer; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.weapon
    ADD CONSTRAINT fk_trainer FOREIGN KEY (trainerid) REFERENCES public.trainer(id);


--
-- TOC entry 3233 (class 2606 OID 49246)
-- Name: friendequip fk_weapon; Type: FK CONSTRAINT; Schema: public; Owner: root
--

ALTER TABLE ONLY public.friendequip
    ADD CONSTRAINT fk_weapon FOREIGN KEY (weaponid) REFERENCES public.weapon(id);


-- Completed on 2024-02-09 19:31:27 UTC

--
-- PostgreSQL database dump complete
--

