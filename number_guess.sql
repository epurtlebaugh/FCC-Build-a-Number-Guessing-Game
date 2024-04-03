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
    guesses integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 1);
INSERT INTO public.games VALUES (2, 17, 552);
INSERT INTO public.games VALUES (3, 17, 588);
INSERT INTO public.games VALUES (4, 18, 868);
INSERT INTO public.games VALUES (5, 18, 578);
INSERT INTO public.games VALUES (6, 17, 244);
INSERT INTO public.games VALUES (7, 17, 538);
INSERT INTO public.games VALUES (8, 17, 621);
INSERT INTO public.games VALUES (9, 19, 817);
INSERT INTO public.games VALUES (10, 19, 11);
INSERT INTO public.games VALUES (11, 20, 977);
INSERT INTO public.games VALUES (12, 20, 396);
INSERT INTO public.games VALUES (13, 19, 69);
INSERT INTO public.games VALUES (14, 19, 893);
INSERT INTO public.games VALUES (15, 19, 875);
INSERT INTO public.games VALUES (16, 21, 413);
INSERT INTO public.games VALUES (17, 21, 605);
INSERT INTO public.games VALUES (18, 22, 928);
INSERT INTO public.games VALUES (19, 22, 834);
INSERT INTO public.games VALUES (20, 21, 920);
INSERT INTO public.games VALUES (21, 21, 139);
INSERT INTO public.games VALUES (22, 21, 304);
INSERT INTO public.games VALUES (23, 23, 139);
INSERT INTO public.games VALUES (24, 23, 361);
INSERT INTO public.games VALUES (25, 24, 721);
INSERT INTO public.games VALUES (26, 24, 592);
INSERT INTO public.games VALUES (27, 23, 836);
INSERT INTO public.games VALUES (28, 23, 491);
INSERT INTO public.games VALUES (29, 23, 961);
INSERT INTO public.games VALUES (30, 25, 443);
INSERT INTO public.games VALUES (31, 25, 73);
INSERT INTO public.games VALUES (32, 26, 863);
INSERT INTO public.games VALUES (33, 26, 239);
INSERT INTO public.games VALUES (34, 25, 830);
INSERT INTO public.games VALUES (35, 25, 206);
INSERT INTO public.games VALUES (36, 25, 109);
INSERT INTO public.games VALUES (37, 27, 794);
INSERT INTO public.games VALUES (38, 27, 389);
INSERT INTO public.games VALUES (39, 28, 279);
INSERT INTO public.games VALUES (40, 28, 773);
INSERT INTO public.games VALUES (41, 27, 83);
INSERT INTO public.games VALUES (42, 27, 271);
INSERT INTO public.games VALUES (43, 27, 692);
INSERT INTO public.games VALUES (44, 29, 188);
INSERT INTO public.games VALUES (45, 29, 770);
INSERT INTO public.games VALUES (46, 30, 560);
INSERT INTO public.games VALUES (47, 30, 941);
INSERT INTO public.games VALUES (48, 29, 391);
INSERT INTO public.games VALUES (49, 29, 916);
INSERT INTO public.games VALUES (50, 29, 288);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1712103807997');
INSERT INTO public.users VALUES (2, 'user_1712103807996');
INSERT INTO public.users VALUES (3, 'user_1712105408265');
INSERT INTO public.users VALUES (4, 'user_1712105408264');
INSERT INTO public.users VALUES (5, 'user_1712105922331');
INSERT INTO public.users VALUES (6, 'user_1712105922330');
INSERT INTO public.users VALUES (7, 'user_1712106381967');
INSERT INTO public.users VALUES (8, 'user_1712106381966');
INSERT INTO public.users VALUES (9, 'user_1712106746508');
INSERT INTO public.users VALUES (10, 'user_1712106746507');
INSERT INTO public.users VALUES (11, 'user_1712106870542');
INSERT INTO public.users VALUES (12, 'user_1712106870541');
INSERT INTO public.users VALUES (13, 'user_1712106945355');
INSERT INTO public.users VALUES (14, 'user_1712106945354');
INSERT INTO public.users VALUES (15, 'user_1712107002364');
INSERT INTO public.users VALUES (16, 'user_1712107002363');
INSERT INTO public.users VALUES (17, 'user_1712107180333');
INSERT INTO public.users VALUES (18, 'user_1712107180332');
INSERT INTO public.users VALUES (19, 'user_1712107204703');
INSERT INTO public.users VALUES (20, 'user_1712107204702');
INSERT INTO public.users VALUES (21, 'user_1712107232148');
INSERT INTO public.users VALUES (22, 'user_1712107232147');
INSERT INTO public.users VALUES (23, 'user_1712107375351');
INSERT INTO public.users VALUES (24, 'user_1712107375350');
INSERT INTO public.users VALUES (25, 'user_1712107397951');
INSERT INTO public.users VALUES (26, 'user_1712107397950');
INSERT INTO public.users VALUES (27, 'user_1712107411918');
INSERT INTO public.users VALUES (28, 'user_1712107411917');
INSERT INTO public.users VALUES (29, 'user_1712107447017');
INSERT INTO public.users VALUES (30, 'user_1712107447016');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 50, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 30, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

