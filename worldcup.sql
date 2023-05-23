--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (182, 191, 192, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (183, 193, 194, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (184, 192, 194, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (185, 191, 193, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (186, 192, 195, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (187, 194, 196, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (188, 193, 197, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (189, 191, 198, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (190, 194, 199, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (191, 196, 200, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (192, 193, 201, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (193, 197, 202, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (194, 192, 203, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (195, 195, 204, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (196, 198, 205, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (197, 191, 206, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (198, 207, 206, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (199, 208, 197, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (200, 206, 208, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (201, 207, 197, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (202, 208, 209, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (203, 206, 193, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (204, 197, 199, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (205, 207, 191, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (206, 197, 210, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (207, 199, 198, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (208, 191, 211, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (209, 207, 212, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (210, 208, 202, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (211, 209, 213, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (212, 206, 200, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (213, 193, 214, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (191, 'France');
INSERT INTO public.teams VALUES (192, 'Croatia');
INSERT INTO public.teams VALUES (193, 'Belgium');
INSERT INTO public.teams VALUES (194, 'England');
INSERT INTO public.teams VALUES (195, 'Russia');
INSERT INTO public.teams VALUES (196, 'Sweden');
INSERT INTO public.teams VALUES (197, 'Brazil');
INSERT INTO public.teams VALUES (198, 'Uruguay');
INSERT INTO public.teams VALUES (199, 'Colombia');
INSERT INTO public.teams VALUES (200, 'Switzerland');
INSERT INTO public.teams VALUES (201, 'Japan');
INSERT INTO public.teams VALUES (202, 'Mexico');
INSERT INTO public.teams VALUES (203, 'Denmark');
INSERT INTO public.teams VALUES (204, 'Spain');
INSERT INTO public.teams VALUES (205, 'Portugal');
INSERT INTO public.teams VALUES (206, 'Argentina');
INSERT INTO public.teams VALUES (207, 'Germany');
INSERT INTO public.teams VALUES (208, 'Netherlands');
INSERT INTO public.teams VALUES (209, 'Costa Rica');
INSERT INTO public.teams VALUES (210, 'Chile');
INSERT INTO public.teams VALUES (211, 'Nigeria');
INSERT INTO public.teams VALUES (212, 'Algeria');
INSERT INTO public.teams VALUES (213, 'Greece');
INSERT INTO public.teams VALUES (214, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 213, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 214, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--



