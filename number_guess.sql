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
    username character varying(22) NOT NULL,
    guesses_to_win integer
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 'Frank', 3);
INSERT INTO public.games VALUES (2, 'Frank', 7);
INSERT INTO public.games VALUES (3, 'Frank', 12);
INSERT INTO public.games VALUES (4, 'Frank', 9);
INSERT INTO public.games VALUES (65, 'barf', 12);
INSERT INTO public.games VALUES (66, 'user_1712849664897', 590);
INSERT INTO public.games VALUES (67, 'user_1712849664897', 576);
INSERT INTO public.games VALUES (68, 'user_1712849664896', 782);
INSERT INTO public.games VALUES (69, 'user_1712849664896', 644);
INSERT INTO public.games VALUES (70, 'user_1712849664897', 600);
INSERT INTO public.games VALUES (71, 'user_1712849664897', 525);
INSERT INTO public.games VALUES (72, 'user_1712849664897', 707);
INSERT INTO public.games VALUES (73, 'user_1712849669725', 16);
INSERT INTO public.games VALUES (74, 'user_1712849669725', 775);
INSERT INTO public.games VALUES (75, 'user_1712849669724', 689);
INSERT INTO public.games VALUES (76, 'user_1712849669724', 674);
INSERT INTO public.games VALUES (77, 'user_1712849669725', 866);
INSERT INTO public.games VALUES (78, 'user_1712849669725', 488);
INSERT INTO public.games VALUES (79, 'user_1712849669725', 314);
INSERT INTO public.games VALUES (80, 'user_1712849671524', 882);
INSERT INTO public.games VALUES (81, 'user_1712849671524', 440);
INSERT INTO public.games VALUES (82, 'user_1712849671523', 76);
INSERT INTO public.games VALUES (83, 'user_1712849671523', 892);
INSERT INTO public.games VALUES (84, 'user_1712849671524', 797);
INSERT INTO public.games VALUES (85, 'user_1712849671524', 874);
INSERT INTO public.games VALUES (86, 'user_1712849671524', 736);
INSERT INTO public.games VALUES (87, 'user_1712849673152', 137);
INSERT INTO public.games VALUES (88, 'user_1712849673152', 638);
INSERT INTO public.games VALUES (89, 'user_1712849673151', 704);
INSERT INTO public.games VALUES (90, 'user_1712849673151', 735);
INSERT INTO public.games VALUES (91, 'user_1712849673152', 229);
INSERT INTO public.games VALUES (92, 'user_1712849673152', 946);
INSERT INTO public.games VALUES (93, 'user_1712849673152', 590);
INSERT INTO public.games VALUES (94, 'Frank', 10);
INSERT INTO public.games VALUES (95, 'user_1712849758358', 440);
INSERT INTO public.games VALUES (96, 'user_1712849758358', 423);
INSERT INTO public.games VALUES (97, 'user_1712849758357', 157);
INSERT INTO public.games VALUES (98, 'user_1712849758357', 452);
INSERT INTO public.games VALUES (99, 'user_1712849758358', 617);
INSERT INTO public.games VALUES (100, 'user_1712849758358', 835);
INSERT INTO public.games VALUES (101, 'user_1712849758358', 412);
INSERT INTO public.games VALUES (102, 'user_1712849766332', 468);
INSERT INTO public.games VALUES (103, 'user_1712849766332', 287);
INSERT INTO public.games VALUES (104, 'user_1712849766331', 865);
INSERT INTO public.games VALUES (105, 'user_1712849766331', 481);
INSERT INTO public.games VALUES (106, 'user_1712849766332', 260);
INSERT INTO public.games VALUES (107, 'user_1712849766332', 837);
INSERT INTO public.games VALUES (108, 'user_1712849766332', 444);
INSERT INTO public.games VALUES (109, 'user_1712849827602', 138);
INSERT INTO public.games VALUES (110, 'user_1712849827602', 45);
INSERT INTO public.games VALUES (111, 'user_1712849827601', 566);
INSERT INTO public.games VALUES (112, 'user_1712849827601', 328);
INSERT INTO public.games VALUES (113, 'user_1712849827602', 640);
INSERT INTO public.games VALUES (114, 'user_1712849827602', 88);
INSERT INTO public.games VALUES (115, 'user_1712849827602', 322);
INSERT INTO public.games VALUES (116, 'user_1712849830721', 979);
INSERT INTO public.games VALUES (117, 'user_1712849830721', 929);
INSERT INTO public.games VALUES (118, 'user_1712849830720', 678);
INSERT INTO public.games VALUES (119, 'user_1712849830720', 45);
INSERT INTO public.games VALUES (120, 'user_1712849830721', 787);
INSERT INTO public.games VALUES (121, 'user_1712849830721', 623);
INSERT INTO public.games VALUES (122, 'user_1712849830721', 522);
INSERT INTO public.games VALUES (63, 'Frank', 4);
INSERT INTO public.games VALUES (64, 'Shelley', 11);
INSERT INTO public.games VALUES (123, 'user_1712849832348', 669);
INSERT INTO public.games VALUES (124, 'user_1712849832348', 581);
INSERT INTO public.games VALUES (125, 'user_1712849832347', 859);
INSERT INTO public.games VALUES (126, 'user_1712849832347', 192);
INSERT INTO public.games VALUES (127, 'user_1712849832348', 51);
INSERT INTO public.games VALUES (128, 'user_1712849832348', 90);
INSERT INTO public.games VALUES (129, 'user_1712849832348', 695);
INSERT INTO public.games VALUES (130, 'user_1712849834209', 288);
INSERT INTO public.games VALUES (131, 'user_1712849834209', 898);
INSERT INTO public.games VALUES (132, 'user_1712849834208', 707);
INSERT INTO public.games VALUES (133, 'user_1712849834208', 901);
INSERT INTO public.games VALUES (134, 'user_1712849834209', 357);
INSERT INTO public.games VALUES (135, 'user_1712849834209', 640);
INSERT INTO public.games VALUES (136, 'user_1712849834209', 992);
INSERT INTO public.games VALUES (137, 'user_1712849856194', 653);
INSERT INTO public.games VALUES (138, 'user_1712849856194', 346);
INSERT INTO public.games VALUES (139, 'user_1712849856193', 937);
INSERT INTO public.games VALUES (140, 'user_1712849856193', 247);
INSERT INTO public.games VALUES (141, 'user_1712849856194', 1);
INSERT INTO public.games VALUES (142, 'user_1712849856194', 394);
INSERT INTO public.games VALUES (143, 'user_1712849856194', 936);
INSERT INTO public.games VALUES (144, 'user_1712849859379', 625);
INSERT INTO public.games VALUES (145, 'user_1712849859379', 499);
INSERT INTO public.games VALUES (146, 'user_1712849859378', 71);
INSERT INTO public.games VALUES (147, 'user_1712849859378', 953);
INSERT INTO public.games VALUES (148, 'user_1712849859379', 120);
INSERT INTO public.games VALUES (149, 'user_1712849859379', 853);
INSERT INTO public.games VALUES (150, 'user_1712849859379', 599);
INSERT INTO public.games VALUES (151, 'user_1712849861208', 75);
INSERT INTO public.games VALUES (152, 'user_1712849861208', 843);
INSERT INTO public.games VALUES (153, 'user_1712849861207', 790);
INSERT INTO public.games VALUES (154, 'user_1712849861207', 119);
INSERT INTO public.games VALUES (155, 'user_1712849861208', 265);
INSERT INTO public.games VALUES (156, 'user_1712849861208', 171);
INSERT INTO public.games VALUES (157, 'user_1712849861208', 105);
INSERT INTO public.games VALUES (158, 'user_1712849864742', 968);
INSERT INTO public.games VALUES (159, 'user_1712849864742', 359);
INSERT INTO public.games VALUES (160, 'user_1712849864741', 112);
INSERT INTO public.games VALUES (161, 'user_1712849864741', 501);
INSERT INTO public.games VALUES (162, 'user_1712849864742', 588);
INSERT INTO public.games VALUES (163, 'user_1712849864742', 240);
INSERT INTO public.games VALUES (164, 'user_1712849864742', 655);
INSERT INTO public.games VALUES (165, 'user_1712849870845', 760);
INSERT INTO public.games VALUES (166, 'user_1712849870845', 320);
INSERT INTO public.games VALUES (167, 'user_1712849870844', 160);
INSERT INTO public.games VALUES (168, 'user_1712849870844', 480);
INSERT INTO public.games VALUES (169, 'user_1712849870845', 216);
INSERT INTO public.games VALUES (170, 'user_1712849870845', 567);
INSERT INTO public.games VALUES (171, 'user_1712849870845', 909);
INSERT INTO public.games VALUES (172, 'user_1712849972529', 113);
INSERT INTO public.games VALUES (173, 'user_1712849972529', 198);
INSERT INTO public.games VALUES (174, 'user_1712849972528', 287);
INSERT INTO public.games VALUES (175, 'user_1712849972528', 819);
INSERT INTO public.games VALUES (176, 'user_1712849972529', 446);
INSERT INTO public.games VALUES (177, 'user_1712849972529', 572);
INSERT INTO public.games VALUES (178, 'user_1712849972529', 487);
INSERT INTO public.games VALUES (179, 'user_1712850019275', 632);
INSERT INTO public.games VALUES (180, 'user_1712850019275', 61);
INSERT INTO public.games VALUES (181, 'user_1712850019274', 390);
INSERT INTO public.games VALUES (182, 'user_1712850019274', 511);
INSERT INTO public.games VALUES (183, 'user_1712850019275', 762);
INSERT INTO public.games VALUES (184, 'user_1712850019275', 166);
INSERT INTO public.games VALUES (185, 'user_1712850019275', 135);
INSERT INTO public.games VALUES (186, 'user_1712850021846', 459);
INSERT INTO public.games VALUES (187, 'user_1712850021846', 144);
INSERT INTO public.games VALUES (188, 'user_1712850021845', 570);
INSERT INTO public.games VALUES (189, 'user_1712850021845', 726);
INSERT INTO public.games VALUES (190, 'user_1712850021846', 419);
INSERT INTO public.games VALUES (191, 'user_1712850021846', 4);
INSERT INTO public.games VALUES (192, 'user_1712850021846', 963);
INSERT INTO public.games VALUES (193, 'user_1712850089742', 28);
INSERT INTO public.games VALUES (194, 'user_1712850089742', 274);
INSERT INTO public.games VALUES (195, 'user_1712850089741', 660);
INSERT INTO public.games VALUES (196, 'user_1712850089741', 791);
INSERT INTO public.games VALUES (197, 'user_1712850089742', 954);
INSERT INTO public.games VALUES (198, 'user_1712850089742', 921);
INSERT INTO public.games VALUES (199, 'user_1712850089742', 466);
INSERT INTO public.games VALUES (200, 'user_1712850091388', 912);
INSERT INTO public.games VALUES (201, 'user_1712850091388', 495);
INSERT INTO public.games VALUES (202, 'user_1712850091386', 521);
INSERT INTO public.games VALUES (203, 'user_1712850091386', 938);
INSERT INTO public.games VALUES (204, 'user_1712850091388', 424);
INSERT INTO public.games VALUES (205, 'user_1712850091388', 789);
INSERT INTO public.games VALUES (206, 'user_1712850091388', 565);
INSERT INTO public.games VALUES (207, 'user_1712850122950', 636);
INSERT INTO public.games VALUES (208, 'user_1712850122950', 819);
INSERT INTO public.games VALUES (209, 'user_1712850122949', 422);
INSERT INTO public.games VALUES (210, 'user_1712850122949', 236);
INSERT INTO public.games VALUES (211, 'user_1712850122950', 481);
INSERT INTO public.games VALUES (212, 'user_1712850122950', 968);
INSERT INTO public.games VALUES (213, 'user_1712850122950', 562);
INSERT INTO public.games VALUES (214, 'user_1712850125457', 267);
INSERT INTO public.games VALUES (215, 'user_1712850125457', 254);
INSERT INTO public.games VALUES (216, 'user_1712850125456', 236);
INSERT INTO public.games VALUES (217, 'user_1712850125456', 253);
INSERT INTO public.games VALUES (218, 'user_1712850125457', 87);
INSERT INTO public.games VALUES (219, 'user_1712850125457', 817);
INSERT INTO public.games VALUES (220, 'user_1712850125457', 613);
INSERT INTO public.games VALUES (221, 'user_1712850126931', 920);
INSERT INTO public.games VALUES (222, 'user_1712850126931', 8);
INSERT INTO public.games VALUES (223, 'user_1712850126930', 342);
INSERT INTO public.games VALUES (224, 'user_1712850126930', 154);
INSERT INTO public.games VALUES (225, 'user_1712850126931', 47);
INSERT INTO public.games VALUES (226, 'user_1712850126931', 555);
INSERT INTO public.games VALUES (227, 'user_1712850126931', 733);
INSERT INTO public.games VALUES (228, 'user_1712850128705', 67);
INSERT INTO public.games VALUES (229, 'user_1712850128705', 572);
INSERT INTO public.games VALUES (230, 'user_1712850128704', 864);
INSERT INTO public.games VALUES (231, 'user_1712850128704', 759);
INSERT INTO public.games VALUES (232, 'user_1712850128705', 695);
INSERT INTO public.games VALUES (233, 'user_1712850128705', 43);
INSERT INTO public.games VALUES (234, 'user_1712850128705', 513);
INSERT INTO public.games VALUES (235, 'user_1712849664897', 12);
INSERT INTO public.games VALUES (236, 'user_1712849664897', 13);
INSERT INTO public.games VALUES (237, 'user_1712849664897', 10);
INSERT INTO public.games VALUES (238, 'user_1712849664897', 12);
INSERT INTO public.games VALUES (239, 'user_1712851247263', 402);
INSERT INTO public.games VALUES (240, 'user_1712851247263', 774);
INSERT INTO public.games VALUES (241, 'user_1712851247262', 134);
INSERT INTO public.games VALUES (242, 'user_1712851247262', 151);
INSERT INTO public.games VALUES (243, 'user_1712851247263', 497);
INSERT INTO public.games VALUES (244, 'user_1712851247263', 820);
INSERT INTO public.games VALUES (245, 'user_1712851247263', 182);
INSERT INTO public.games VALUES (246, 'user_1712849664897', 11);
INSERT INTO public.games VALUES (247, 'user_1712851336134', 75);
INSERT INTO public.games VALUES (248, 'user_1712851336134', 886);
INSERT INTO public.games VALUES (249, 'user_1712851336133', 676);
INSERT INTO public.games VALUES (250, 'user_1712851336133', 856);
INSERT INTO public.games VALUES (251, 'user_1712851336134', 549);
INSERT INTO public.games VALUES (252, 'user_1712851336134', 513);
INSERT INTO public.games VALUES (253, 'user_1712851336134', 929);
INSERT INTO public.games VALUES (254, 'user_1712851337869', 414);
INSERT INTO public.games VALUES (255, 'user_1712851337869', 259);
INSERT INTO public.games VALUES (256, 'user_1712851337868', 929);
INSERT INTO public.games VALUES (257, 'user_1712851337868', 226);
INSERT INTO public.games VALUES (258, 'user_1712851337869', 226);
INSERT INTO public.games VALUES (259, 'user_1712851337869', 73);
INSERT INTO public.games VALUES (260, 'user_1712851337869', 102);
INSERT INTO public.games VALUES (261, 'user_1712851339422', 282);
INSERT INTO public.games VALUES (262, 'user_1712851339422', 415);
INSERT INTO public.games VALUES (263, 'user_1712851339421', 341);
INSERT INTO public.games VALUES (264, 'user_1712851339421', 271);
INSERT INTO public.games VALUES (265, 'user_1712851339422', 444);
INSERT INTO public.games VALUES (266, 'user_1712851339422', 496);
INSERT INTO public.games VALUES (267, 'user_1712851339422', 685);
INSERT INTO public.games VALUES (268, 'user_1712851341333', 6);
INSERT INTO public.games VALUES (269, 'user_1712851341333', 453);
INSERT INTO public.games VALUES (270, 'user_1712851341332', 857);
INSERT INTO public.games VALUES (271, 'user_1712851341332', 63);
INSERT INTO public.games VALUES (272, 'user_1712851341333', 840);
INSERT INTO public.games VALUES (273, 'user_1712851341333', 836);
INSERT INTO public.games VALUES (274, 'user_1712851341333', 144);
INSERT INTO public.games VALUES (275, 'user_1712851343867', 485);
INSERT INTO public.games VALUES (276, 'user_1712851343867', 369);
INSERT INTO public.games VALUES (277, 'user_1712851343866', 731);
INSERT INTO public.games VALUES (278, 'user_1712851343866', 290);
INSERT INTO public.games VALUES (279, 'user_1712851343867', 667);
INSERT INTO public.games VALUES (280, 'user_1712851343867', 451);
INSERT INTO public.games VALUES (281, 'user_1712851343867', 896);
INSERT INTO public.games VALUES (282, 'user_1712851346183', 742);
INSERT INTO public.games VALUES (283, 'user_1712851346183', 799);
INSERT INTO public.games VALUES (284, 'user_1712851346181', 844);
INSERT INTO public.games VALUES (285, 'user_1712851346181', 287);
INSERT INTO public.games VALUES (286, 'user_1712851346183', 283);
INSERT INTO public.games VALUES (287, 'user_1712851346183', 927);
INSERT INTO public.games VALUES (288, 'user_1712851346183', 611);
INSERT INTO public.games VALUES (289, 'user_1712851451244', 99);
INSERT INTO public.games VALUES (290, 'user_1712851451244', 438);
INSERT INTO public.games VALUES (291, 'user_1712851451243', 633);
INSERT INTO public.games VALUES (292, 'user_1712851451243', 340);
INSERT INTO public.games VALUES (293, 'user_1712851451244', 108);
INSERT INTO public.games VALUES (294, 'user_1712851451244', 259);
INSERT INTO public.games VALUES (295, 'user_1712851451244', 193);
INSERT INTO public.games VALUES (296, 'user_1712851481649', 449);
INSERT INTO public.games VALUES (297, 'user_1712851481649', 780);
INSERT INTO public.games VALUES (298, 'user_1712851481648', 208);
INSERT INTO public.games VALUES (299, 'user_1712851481648', 510);
INSERT INTO public.games VALUES (300, 'user_1712851481649', 836);
INSERT INTO public.games VALUES (301, 'user_1712851481649', 503);
INSERT INTO public.games VALUES (302, 'user_1712851481649', 264);
INSERT INTO public.games VALUES (303, 'user_1712851492635', 410);
INSERT INTO public.games VALUES (304, 'user_1712851492635', 19);
INSERT INTO public.games VALUES (305, 'user_1712851492634', 123);
INSERT INTO public.games VALUES (306, 'user_1712851492634', 718);
INSERT INTO public.games VALUES (307, 'user_1712851492635', 190);
INSERT INTO public.games VALUES (308, 'user_1712851492635', 594);
INSERT INTO public.games VALUES (309, 'user_1712851492635', 333);
INSERT INTO public.games VALUES (310, 'user_1712849664897', 10);
INSERT INTO public.games VALUES (311, 'user_1712851665702', 443);
INSERT INTO public.games VALUES (312, 'user_1712851665702', 428);
INSERT INTO public.games VALUES (313, 'user_1712851665701', 64);
INSERT INTO public.games VALUES (314, 'user_1712851665701', 43);
INSERT INTO public.games VALUES (315, 'user_1712851665702', 97);
INSERT INTO public.games VALUES (316, 'user_1712851665702', 20);
INSERT INTO public.games VALUES (317, 'user_1712851665702', 186);
INSERT INTO public.games VALUES (318, 'user_1712851676995', 611);
INSERT INTO public.games VALUES (319, 'user_1712851676995', 285);
INSERT INTO public.games VALUES (320, 'user_1712851676994', 957);
INSERT INTO public.games VALUES (321, 'user_1712851676994', 781);
INSERT INTO public.games VALUES (322, 'user_1712851676995', 629);
INSERT INTO public.games VALUES (323, 'user_1712851676995', 794);
INSERT INTO public.games VALUES (324, 'user_1712851676995', 843);
INSERT INTO public.games VALUES (325, 'user_1712851753624', 218);
INSERT INTO public.games VALUES (326, 'user_1712851753624', 729);
INSERT INTO public.games VALUES (327, 'user_1712851753623', 285);
INSERT INTO public.games VALUES (328, 'user_1712851753623', 41);
INSERT INTO public.games VALUES (329, 'user_1712851753624', 826);
INSERT INTO public.games VALUES (330, 'user_1712851753624', 511);
INSERT INTO public.games VALUES (331, 'user_1712851753624', 522);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 331, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- PostgreSQL database dump complete
--

