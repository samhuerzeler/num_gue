--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(22)
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (10, 21, 1);
INSERT INTO public.games VALUES (11, 21, 1);
INSERT INTO public.games VALUES (12, 21, 1);
INSERT INTO public.games VALUES (13, 22, 1);
INSERT INTO public.games VALUES (14, 23, 1);
INSERT INTO public.games VALUES (15, 22, 1);
INSERT INTO public.games VALUES (16, 22, 1);
INSERT INTO public.games VALUES (17, 22, 1);
INSERT INTO public.games VALUES (18, 24, 1);
INSERT INTO public.games VALUES (19, 25, 1);
INSERT INTO public.games VALUES (20, 24, 1);
INSERT INTO public.games VALUES (21, 24, 1);
INSERT INTO public.games VALUES (22, 24, 1);
INSERT INTO public.games VALUES (23, 21, 1);
INSERT INTO public.games VALUES (24, 27, 1);
INSERT INTO public.games VALUES (25, 28, 1);
INSERT INTO public.games VALUES (26, 28, 1);
INSERT INTO public.games VALUES (27, 29, 1);
INSERT INTO public.games VALUES (28, 29, 1);
INSERT INTO public.games VALUES (29, 28, 1);
INSERT INTO public.games VALUES (30, 28, 1);
INSERT INTO public.games VALUES (31, 28, 1);
INSERT INTO public.games VALUES (32, 30, 1);
INSERT INTO public.games VALUES (33, 31, 1);
INSERT INTO public.games VALUES (34, 32, 1);
INSERT INTO public.games VALUES (35, 32, 1);
INSERT INTO public.games VALUES (36, 33, 1);
INSERT INTO public.games VALUES (37, 33, 1);
INSERT INTO public.games VALUES (38, 32, 1);
INSERT INTO public.games VALUES (39, 32, 1);
INSERT INTO public.games VALUES (40, 32, 1);
INSERT INTO public.games VALUES (41, 31, 1);
INSERT INTO public.games VALUES (42, 34, 1);
INSERT INTO public.games VALUES (43, 34, 1);
INSERT INTO public.games VALUES (44, 35, 1);
INSERT INTO public.games VALUES (45, 35, 1);
INSERT INTO public.games VALUES (46, 34, 1);
INSERT INTO public.games VALUES (47, 34, 1);
INSERT INTO public.games VALUES (48, 34, 1);
INSERT INTO public.games VALUES (49, 21, 1);
INSERT INTO public.games VALUES (50, 36, 1);
INSERT INTO public.games VALUES (51, 36, 1);
INSERT INTO public.games VALUES (52, 37, 1);
INSERT INTO public.games VALUES (53, 37, 1);
INSERT INTO public.games VALUES (54, 36, 1);
INSERT INTO public.games VALUES (55, 36, 1);
INSERT INTO public.games VALUES (56, 36, 1);
INSERT INTO public.games VALUES (57, 21, 1);
INSERT INTO public.games VALUES (58, 21, 2);
INSERT INTO public.games VALUES (59, 21, 9);
INSERT INTO public.games VALUES (60, 21, 4);
INSERT INTO public.games VALUES (61, 21, 1);
INSERT INTO public.games VALUES (62, 21, 2);
INSERT INTO public.games VALUES (63, 38, 11);
INSERT INTO public.games VALUES (64, 38, 5);
INSERT INTO public.games VALUES (65, 39, 7);
INSERT INTO public.games VALUES (66, 39, 5);
INSERT INTO public.games VALUES (67, 38, 11);
INSERT INTO public.games VALUES (68, 38, 7);
INSERT INTO public.games VALUES (69, 38, 10);
INSERT INTO public.games VALUES (70, 40, 963);
INSERT INTO public.games VALUES (71, 40, 500);
INSERT INTO public.games VALUES (72, 41, 528);
INSERT INTO public.games VALUES (73, 41, 290);
INSERT INTO public.games VALUES (74, 40, 85);
INSERT INTO public.games VALUES (75, 40, 84);
INSERT INTO public.games VALUES (76, 40, 584);
INSERT INTO public.games VALUES (77, 42, 982);
INSERT INTO public.games VALUES (78, 42, 421);
INSERT INTO public.games VALUES (79, 43, 351);
INSERT INTO public.games VALUES (80, 43, 527);
INSERT INTO public.games VALUES (81, 42, 195);
INSERT INTO public.games VALUES (82, 42, 848);
INSERT INTO public.games VALUES (83, 42, 218);
INSERT INTO public.games VALUES (84, 44, 500);
INSERT INTO public.games VALUES (85, 44, 356);
INSERT INTO public.games VALUES (86, 45, 208);
INSERT INTO public.games VALUES (87, 45, 817);
INSERT INTO public.games VALUES (88, 44, 211);
INSERT INTO public.games VALUES (89, 44, 563);
INSERT INTO public.games VALUES (90, 46, 276);
INSERT INTO public.games VALUES (91, 46, 36);
INSERT INTO public.games VALUES (92, 47, 55);
INSERT INTO public.games VALUES (93, 47, 52);
INSERT INTO public.games VALUES (94, 46, 678);
INSERT INTO public.games VALUES (95, 46, 620);
INSERT INTO public.games VALUES (96, 48, 472);
INSERT INTO public.games VALUES (97, 48, 398);
INSERT INTO public.games VALUES (98, 49, 15);
INSERT INTO public.games VALUES (99, 49, 906);
INSERT INTO public.games VALUES (100, 48, 108);
INSERT INTO public.games VALUES (101, 48, 197);
INSERT INTO public.games VALUES (102, 48, 493);
INSERT INTO public.games VALUES (103, 50, 494);
INSERT INTO public.games VALUES (104, 50, 982);
INSERT INTO public.games VALUES (105, 51, 966);
INSERT INTO public.games VALUES (106, 51, 120);
INSERT INTO public.games VALUES (107, 50, 898);
INSERT INTO public.games VALUES (108, 50, 891);
INSERT INTO public.games VALUES (109, 50, 989);
INSERT INTO public.games VALUES (110, 52, 568);
INSERT INTO public.games VALUES (111, 52, 379);
INSERT INTO public.games VALUES (112, 53, 260);
INSERT INTO public.games VALUES (113, 53, 346);
INSERT INTO public.games VALUES (114, 52, 482);
INSERT INTO public.games VALUES (115, 52, 196);
INSERT INTO public.games VALUES (116, 52, 374);
INSERT INTO public.games VALUES (117, 54, 585);
INSERT INTO public.games VALUES (118, 54, 486);
INSERT INTO public.games VALUES (119, 55, 166);
INSERT INTO public.games VALUES (120, 55, 85);
INSERT INTO public.games VALUES (121, 54, 372);
INSERT INTO public.games VALUES (122, 54, 589);
INSERT INTO public.games VALUES (123, 54, 385);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (21, 'sam');
INSERT INTO public.users VALUES (22, 'user_1711008511780');
INSERT INTO public.users VALUES (23, 'user_1711008511779');
INSERT INTO public.users VALUES (24, 'user_1711008568779');
INSERT INTO public.users VALUES (25, 'user_1711008568778');
INSERT INTO public.users VALUES (26, 'test');
INSERT INTO public.users VALUES (27, 'thrth');
INSERT INTO public.users VALUES (28, 'user_1711008614710');
INSERT INTO public.users VALUES (29, 'user_1711008614709');
INSERT INTO public.users VALUES (30, 'fghjghj');
INSERT INTO public.users VALUES (31, 'srthsrthsrth');
INSERT INTO public.users VALUES (32, 'user_1711008665458');
INSERT INTO public.users VALUES (33, 'user_1711008665457');
INSERT INTO public.users VALUES (34, 'user_1711008730279');
INSERT INTO public.users VALUES (35, 'user_1711008730278');
INSERT INTO public.users VALUES (36, 'user_1711008803093');
INSERT INTO public.users VALUES (37, 'user_1711008803092');
INSERT INTO public.users VALUES (38, 'user_1711009349041');
INSERT INTO public.users VALUES (39, 'user_1711009349040');
INSERT INTO public.users VALUES (40, 'user_1711009375618');
INSERT INTO public.users VALUES (41, 'user_1711009375617');
INSERT INTO public.users VALUES (42, 'user_1711009401054');
INSERT INTO public.users VALUES (43, 'user_1711009401053');
INSERT INTO public.users VALUES (44, 'user_1711009572786');
INSERT INTO public.users VALUES (45, 'user_1711009572785');
INSERT INTO public.users VALUES (46, 'user_1711009590529');
INSERT INTO public.users VALUES (47, 'user_1711009590528');
INSERT INTO public.users VALUES (48, 'user_1711009626301');
INSERT INTO public.users VALUES (49, 'user_1711009626300');
INSERT INTO public.users VALUES (50, 'user_1711009659913');
INSERT INTO public.users VALUES (51, 'user_1711009659912');
INSERT INTO public.users VALUES (52, 'user_1711009692981');
INSERT INTO public.users VALUES (53, 'user_1711009692980');
INSERT INTO public.users VALUES (54, 'user_1711009778066');
INSERT INTO public.users VALUES (55, 'user_1711009778065');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 123, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 55, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

