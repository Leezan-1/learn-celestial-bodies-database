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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    age_in_millions integer,
    start_count_in_billions integer,
    mass_in_solar_units numeric,
    is_active boolean NOT NULL,
    has_supermassive_blackhole boolean NOT NULL,
    description text
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
-- Name: just_formality; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.just_formality (
);


ALTER TABLE public.just_formality OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    orbital_period_days integer,
    surface_temp integer,
    mass_in_kg numeric,
    is_tidally_locked boolean NOT NULL,
    has_geological_activity boolean NOT NULL,
    planet_id integer,
    description text
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
    name character varying(20) NOT NULL,
    number_of_moons integer,
    orbit_position integer,
    mass_in_kg numeric,
    is_habitable boolean NOT NULL,
    has_atmosphere boolean NOT NULL,
    star_id integer,
    description text
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
    name character varying(20) NOT NULL,
    age_in_millions integer,
    distance_from_earth_in_light_years integer,
    luminosity_in_solar_units numeric,
    is_binary boolean NOT NULL,
    has_planets boolean NOT NULL,
    galaxy_id integer,
    description text
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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10000, 1000, 1250.5, true, true, 'The closest large galaxy to the Milky Way.');
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13600, 250, 1400.0, true, true, 'Our home galaxy, a barred spiral galaxy.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 10000, 40, 500.75, true, true, 'A member of the Local Group and third-largest galaxy.');
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 400, 160, 290.8, false, true, 'Famous for its spiral structure and interaction with NGC 5195.');
INSERT INTO public.galaxy VALUES (5, 'Sculptor', 9300, 15, 230.3, false, false, 'A large, irregular galaxy in the Sculptor group.');
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 12000, 200, 2500000000000, true, true, 'An elliptical galaxy with a massive jet coming from its black hole.');
INSERT INTO public.galaxy VALUES (7, 'NGC 1300', 7000, 75, 110000000000, true, false, 'A barred spiral galaxy with a well-defined shape.');
INSERT INTO public.galaxy VALUES (8, 'Centaurus A', 11000, 300, 1200000000000, false, true, 'A peculiar galaxy resulting from a past galactic collision.');
INSERT INTO public.galaxy VALUES (9, 'IC 1101', 12000, 500, 4000000000000, false, true, 'One of the largest known galaxies, located in the Abell 2029 cluster.');
INSERT INTO public.galaxy VALUES (10, 'NGC 6744', 10000, 200, 100000000000, true, false, 'A large, Milky Way-like spiral galaxy located in the constellation Pavo.');


--
-- Data for Name: just_formality; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 27, 250, 73500000000000000000000, true, false, 3, 'Earth’s only natural satellite and the fifth-largest moon in the Solar System.');
INSERT INTO public.moon VALUES (2, 'Phobos', 1, -4, 10600000000000000, true, false, 4, 'The larger and closer of the two Martian moons, irregularly shaped.');
INSERT INTO public.moon VALUES (3, 'Deimos', 1, -40, 2400000000000000, true, false, 4, 'The smaller and more distant of Mars’s two moons.');
INSERT INTO public.moon VALUES (4, 'Io', 2, -143, 89300000000000000000000, true, true, 5, 'One of Jupiter’s moons, known for its intense volcanic activity.');
INSERT INTO public.moon VALUES (5, 'Europa', 4, -160, 48000000000000000000000, true, true, 5, 'An icy moon of Jupiter with a subsurface ocean.');
INSERT INTO public.moon VALUES (6, 'Ganymede', 7, -110, 148000000000000000000000, true, false, 5, 'The largest moon in the Solar System, even larger than Mercury.');
INSERT INTO public.moon VALUES (7, 'Callisto', 17, -139, 108000000000000000000000, true, false, 5, 'A heavily cratered moon of Jupiter with a thick ice crust.');
INSERT INTO public.moon VALUES (8, 'Titan', 16, -179, 135000000000000000000000, true, true, 6, 'Saturn’s largest moon with a thick atmosphere and lakes of methane.');
INSERT INTO public.moon VALUES (9, 'Enceladus', 1, -201, 108000000000000000000, true, true, 6, 'An icy moon of Saturn with water-rich plumes.');
INSERT INTO public.moon VALUES (10, 'Mimas', 1, -209, 37500000000000000000, true, false, 6, 'A small moon of Saturn, known for its large crater Herschel.');
INSERT INTO public.moon VALUES (11, 'Triton', 6, -235, 21400000000000000000000, true, true, 8, 'Neptune’s largest moon, with a retrograde orbit and possible cryovolcanism.');
INSERT INTO public.moon VALUES (12, 'Charon', 6, -220, 1590000000000000000000, true, false, 8, 'The largest moon of Pluto, comparable in size to the dwarf planet itself.');
INSERT INTO public.moon VALUES (13, 'Oberon', 14, -203, 3010000000000000000000, true, false, 7, 'A large moon of Uranus with heavily cratered surface.');
INSERT INTO public.moon VALUES (14, 'Rhea', 5, -174, 2310000000000000000000, true, false, 6, 'A mid-sized, icy moon of Saturn with thin rings.');
INSERT INTO public.moon VALUES (15, 'Dione', 3, -186, 1100000000000000000000, true, true, 6, 'A moon of Saturn with an icy surface and suspected geological activity.');
INSERT INTO public.moon VALUES (16, 'Umbriel', 4, -210, 1170000000000000000000, true, false, 7, 'A dark and heavily cratered moon of Uranus.');
INSERT INTO public.moon VALUES (17, 'Tethys', 2, -187, 617000000000000000000, true, false, 6, 'An icy moon of Saturn with a giant rift zone and large impact crater.');
INSERT INTO public.moon VALUES (18, 'Miranda', 1, -187, 66000000000000000000, true, true, 7, 'An unusual moon of Uranus with extreme geological features.');
INSERT INTO public.moon VALUES (19, 'Iapetus', 79, -143, 1810000000000000000000, true, false, 6, 'A Saturnian moon with a unique two-toned surface.');
INSERT INTO public.moon VALUES (20, 'Nereid', 360, -223, 30800000000000000000, true, false, 8, 'A small, irregular moon of Neptune with a highly eccentric orbit.');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, 1, 328500000000000000000000, false, false, 2, 'The closest planet to the Sun, small and rocky with extreme temperatures.');
INSERT INTO public.planet VALUES (2, 'Venus', 0, 2, 4867000000000000000000000, false, true, 2, 'A hot, dense atmosphere with thick clouds of sulfuric acid.');
INSERT INTO public.planet VALUES (3, 'Earth', 1, 3, 5972000000000000000000000, true, true, 2, 'The only known habitable planet, home to diverse life forms.');
INSERT INTO public.planet VALUES (4, 'Mars', 2, 4, 639000000000000000000000, false, true, 2, 'A red planet with a thin atmosphere, known for its exploration missions.');
INSERT INTO public.planet VALUES (5, 'Jupiter', 79, 5, 1898000000000000000000000000, false, true, 2, 'The largest planet in the Solar System with a strong magnetic field.');
INSERT INTO public.planet VALUES (6, 'Saturn', 82, 6, 568300000000000000000000000, false, true, 2, 'Famous for its prominent ring system, a gas giant like Jupiter.');
INSERT INTO public.planet VALUES (7, 'Uranus', 27, 7, 86810000000000000000000000, false, true, 2, 'An ice giant with a tilted rotation axis, has a faint ring system.');
INSERT INTO public.planet VALUES (8, 'Neptune', 14, 8, 102400000000000000000000000, false, true, 2, 'An ice giant with strong winds and a deep blue color.');
INSERT INTO public.planet VALUES (9, 'TRAPPIST-1e', 0, 4, 4800000000000000000000000, false, true, 8, 'An Earth-sized exoplanet in the habitable zone of the TRAPPIST-1 system.');
INSERT INTO public.planet VALUES (10, 'TRAPPIST-1f', 0, 5, 5000000000000000000000000, false, true, 8, 'An exoplanet with Earth-like mass and potentially water-rich atmosphere.');
INSERT INTO public.planet VALUES (11, 'Proxima b', 0, 1, 12700000000000000000000000, false, true, 1, 'An Earth-sized planet orbiting in the habitable zone of Proxima Centauri.');
INSERT INTO public.planet VALUES (12, 'Alpha Centauri Bb', 0, 1, 4500000000000000000000000, false, true, 6, 'An exoplanet orbiting Alpha Centauri B, one of the closest exoplanets to Earth.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Proxima Centauri', 4500, 4, 0.0017, false, true, 2, 'The closest known star to the Sun, part of the Alpha Centauri system.');
INSERT INTO public.star VALUES (2, 'Sirius', 250, 9, 25.4, true, false, 2, 'The brightest star in the night sky, located in the constellation Canis Major.');
INSERT INTO public.star VALUES (3, 'Betelgeuse', 10000, 642, 126000, false, false, 2, 'A red supergiant in the constellation Orion, nearing the end of its life.');
INSERT INTO public.star VALUES (4, 'Rigel', 8000, 863, 120000, false, false, 2, 'A blue supergiant in Orion, one of the brightest stars visible from Earth.');
INSERT INTO public.star VALUES (5, 'Vega', 455, 25, 40.1, false, true, 2, 'A bright, rapidly rotating star in the constellation Lyra.');
INSERT INTO public.star VALUES (6, 'Alpha Centauri A', 5000, 4, 1.519, true, true, 2, 'A member of the Alpha Centauri system, the closest star system to Earth.');
INSERT INTO public.star VALUES (7, 'Alpha Centauri B', 5000, 4, 0.5, true, true, 2, 'A slightly smaller companion to Alpha Centauri A in the same system.');
INSERT INTO public.star VALUES (8, 'TRAPPIST-1', 8000, 41, 0.00055, false, true, 2, 'An ultra-cool red dwarf with a planetary system of seven Earth-sized planets.');
INSERT INTO public.star VALUES (9, 'Andromeda Star 1', 2000, 2530000, 0.3, false, true, 1, 'A faint star in the Andromeda galaxy.');
INSERT INTO public.star VALUES (10, 'NGC 604 Star Cluster', 500, 2700000, 2000, true, false, 3, 'A massive young star cluster in the Triangulum galaxy.');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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

