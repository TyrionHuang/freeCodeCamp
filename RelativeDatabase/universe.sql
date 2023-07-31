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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size double precision
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.earth_earth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.earth_earth_id_seq OWNER TO freecodecamp;

--
-- Name: earth_earth_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.earth_earth_id_seq OWNED BY public.earth.earth_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    quantity integer,
    size integer,
    length numeric,
    introduction text,
    bigger_than_milky_way boolean,
    is_organic_life_exist boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    size double precision,
    length double precision,
    height double precision
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star integer,
    size double precision,
    length double precision,
    height double precision,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    size double precision,
    length double precision,
    height double precision
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_seq OWNER TO freecodecamp;

--
-- Name: star_star_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_seq OWNED BY public.star.star_id;


--
-- Name: earth earth_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth ALTER COLUMN earth_id SET DEFAULT nextval('public.earth_earth_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_seq'::regclass);


--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (27, '1', NULL);
INSERT INTO public.earth VALUES (28, '2', NULL);
INSERT INTO public.earth VALUES (29, '3', NULL);
INSERT INTO public.earth VALUES (30, '4', NULL);
INSERT INTO public.earth VALUES (31, '5', NULL);
INSERT INTO public.earth VALUES (32, '6', NULL);
INSERT INTO public.earth VALUES (33, '7', NULL);
INSERT INTO public.earth VALUES (34, '8', NULL);
INSERT INTO public.earth VALUES (35, '9', NULL);
INSERT INTO public.earth VALUES (36, '10', NULL);
INSERT INTO public.earth VALUES (37, '11', NULL);
INSERT INTO public.earth VALUES (38, '12', NULL);
INSERT INTO public.earth VALUES (39, '13', NULL);
INSERT INTO public.earth VALUES (40, '14', NULL);
INSERT INTO public.earth VALUES (41, '15', NULL);
INSERT INTO public.earth VALUES (42, '16', NULL);
INSERT INTO public.earth VALUES (43, '17', NULL);
INSERT INTO public.earth VALUES (44, '18', NULL);
INSERT INTO public.earth VALUES (45, '19', NULL);
INSERT INTO public.earth VALUES (46, '20', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (16, '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, '2', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, '3', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, '4', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, '5', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (21, '6', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (22, '7', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (23, '8', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (24, '9', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (25, '10', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (26, '11', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (27, '12', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (28, '13', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (29, '14', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (30, '15', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (31, '16', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (32, '17', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (33, '18', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (34, '19', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (35, '20', NULL, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (29, '2', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (30, '3', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (31, '4', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (32, '5', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (33, '6', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (34, '7', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (35, '8', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (36, '9', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (37, '10', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (38, '11', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (39, '12', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (40, '13', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (41, '14', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (42, '15', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (43, '16', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (44, '17', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (45, '18', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (46, '19', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (47, '20', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (28, '1', 35, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (17, '2', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, '3', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, '4', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, '5', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (21, '6', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (22, '7', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (23, '8', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (24, '9', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (25, '10', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (26, '11', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (27, '12', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (28, '13', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (29, '14', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (30, '15', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (31, '16', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (32, '17', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (33, '18', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (34, '19', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (35, '20', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, '1', NULL, NULL, NULL, NULL, 61);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (42, '1', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (43, '2', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (44, '3', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (45, '4', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (46, '5', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (47, '6', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (48, '7', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (49, '8', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (50, '9', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (51, '10', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (52, '11', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (53, '12', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (54, '13', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (55, '14', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (56, '15', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (57, '16', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (58, '17', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (59, '18', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (60, '19', NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (61, '20', 16, NULL, NULL, NULL);


--
-- Name: earth_earth_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.earth_earth_id_seq', 46, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 35, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 47, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 35, true);


--
-- Name: star_star_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_seq', 61, true);


--
-- Name: galaxy constraint_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constraint_galaxy_name UNIQUE (galaxy_id);


--
-- Name: moon constraint_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT constraint_moon_id UNIQUE (moon_id);


--
-- Name: earth constraint_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT constraint_name UNIQUE (earth_id);


--
-- Name: planet constraint_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT constraint_planet_id UNIQUE (planet_id);


--
-- Name: star constraint_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT constraint_star_id UNIQUE (star_id);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

