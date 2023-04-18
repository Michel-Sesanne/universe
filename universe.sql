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
-- Name: fictional; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fictional (
    fictional_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text,
    "from Star Wars" boolean
);


ALTER TABLE public.fictional OWNER TO freecodecamp;

--
-- Name: fictional_fictional_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fictional_fictional_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fictional_fictional_id_seq OWNER TO freecodecamp;

--
-- Name: fictional_fictional_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fictional_fictional_id_seq OWNED BY public.fictional.fictional_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    discovery_year integer,
    "NGC" integer,
    constellation text
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
    discovery_year integer,
    "larger than the Moon ?" boolean,
    planet_id integer NOT NULL
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
    "distance from it star (in millions of miles)" numeric,
    moons_number integer,
    star_id integer NOT NULL,
    planet_type character varying(30)
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
    "distance from Earth (in ligth-year)" numeric,
    constellation text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: fictional fictional_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictional ALTER COLUMN fictional_id SET DEFAULT nextval('public.fictional_fictional_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: fictional; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fictional VALUES (1, 'Tatooïne', 'Rocky planet', true);
INSERT INTO public.fictional VALUES (2, 'Dagobah', 'Rocky planet', true);
INSERT INTO public.fictional VALUES (3, 'Death Star', 'Moon', true);
INSERT INTO public.fictional VALUES (4, 'Pandora', 'Moon', false);
INSERT INTO public.fictional VALUES (5, 'Polyphemus', 'Gas giant', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Large Magellanic Cloud', 964, NULL, 'Dorado');
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic Cloud', 1503, 292, 'Tucana');
INSERT INTO public.galaxy VALUES (4, 'Andromeda', 964, 224, 'Andromeda');
INSERT INTO public.galaxy VALUES (5, 'Omega Centauri', 1677, 5139, 'Centrauri');
INSERT INTO public.galaxy VALUES (6, 'Triangulum galaxy', 1677, 5139, 'Triangulum');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 1877, false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 1877, false, 4);
INSERT INTO public.moon VALUES (4, 'Callisto', 1610, true, 5);
INSERT INTO public.moon VALUES (5, 'Ganymede', 1610, true, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 1610, false, 5);
INSERT INTO public.moon VALUES (7, 'Io', 1610, true, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 1892, false, 5);
INSERT INTO public.moon VALUES (9, 'Himalia', 1904, false, 5);
INSERT INTO public.moon VALUES (10, 'Titan', 1655, true, 6);
INSERT INTO public.moon VALUES (11, 'Lapetus', 1671, false, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 1672, false, 6);
INSERT INTO public.moon VALUES (13, 'Dione', 1684, false, 6);
INSERT INTO public.moon VALUES (14, 'Ariel', 1851, false, 7);
INSERT INTO public.moon VALUES (15, 'Umbriel', 1851, false, 7);
INSERT INTO public.moon VALUES (16, 'Titania', 1787, false, 7);
INSERT INTO public.moon VALUES (17, 'Oberon', 1787, false, 7);
INSERT INTO public.moon VALUES (18, 'Triton', 1846, false, 8);
INSERT INTO public.moon VALUES (19, 'Nereid', 1949, false, 8);
INSERT INTO public.moon VALUES (20, 'Larissa', 1981, false, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 36, 0, 1, 'Rocky');
INSERT INTO public.planet VALUES (2, 'Venus', 67, 0, 1, 'Rocky');
INSERT INTO public.planet VALUES (3, 'Earth', 93, 1, 1, 'Rocky');
INSERT INTO public.planet VALUES (4, 'Mars', 142, 2, 1, 'Rocky');
INSERT INTO public.planet VALUES (5, 'Jupiter', 484, 84, 1, 'Gas giant');
INSERT INTO public.planet VALUES (6, 'Saturn', 886, 83, 1, 'Gas giant');
INSERT INTO public.planet VALUES (7, 'Uranus', 1800, 27, 1, 'Gas giant');
INSERT INTO public.planet VALUES (8, 'Neptune', 2800, 14, 1, 'Ice giant');
INSERT INTO public.planet VALUES (9, 'Proxima B', NULL, 0, 2, 'Probably rocky');
INSERT INTO public.planet VALUES (10, '55 Cancri -b (Galileo)', NULL, 0, 6, 'Gas giant');
INSERT INTO public.planet VALUES (11, '55 Cancri -c (Brahe)', NULL, NULL, 6, 'Gas giant');
INSERT INTO public.planet VALUES (12, '55 Cancri -e (Janssen)', 1.55, NULL, 6, '?');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0.000016, NULL, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4.244, 'Centauri', 1);
INSERT INTO public.star VALUES (3, 'Sirius', 8.6, 'Canis Major', 1);
INSERT INTO public.star VALUES (4, 'Vega', 25.3, 'Lyre', 1);
INSERT INTO public.star VALUES (5, 'Pollux', 33.72, 'Gemini', 1);
INSERT INTO public.star VALUES (6, '55 Cancri A', 41, 'Cancer', 1);
INSERT INTO public.star VALUES (7, 'Sirrah', 96.87, 'Andromeda', 4);


--
-- Name: fictional_fictional_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fictional_fictional_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: fictional fictional_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictional
    ADD CONSTRAINT fictional_name_key UNIQUE (name);


--
-- Name: fictional fictional_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fictional
    ADD CONSTRAINT fictional_pkey PRIMARY KEY (fictional_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

