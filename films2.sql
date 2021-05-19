--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying(30) DEFAULT 'noname'::character varying NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

--
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- Name: country; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country (
    id integer NOT NULL,
    name character varying(255) DEFAULT 'Какая-то страна'::character varying NOT NULL
);


ALTER TABLE public.country OWNER TO postgres;

--
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_id_seq OWNER TO postgres;

--
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;


--
-- Name: film; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film (
    id integer NOT NULL,
    name character varying(255) DEFAULT 'noname of film'::character varying NOT NULL,
    release date DEFAULT CURRENT_DATE NOT NULL,
    description text
);


ALTER TABLE public.film OWNER TO postgres;

--
-- Name: film_actor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film_actor (
    id integer NOT NULL,
    peoples_id integer DEFAULT 1 NOT NULL,
    id_film integer
);


ALTER TABLE public.film_actor OWNER TO postgres;

--
-- Name: film_actor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.film_actor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_actor_id_seq OWNER TO postgres;

--
-- Name: film_actor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.film_actor_id_seq OWNED BY public.film_actor.id;


--
-- Name: film_category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film_category (
    id integer NOT NULL,
    category_id integer DEFAULT 1 NOT NULL,
    id_film integer
);


ALTER TABLE public.film_category OWNER TO postgres;

--
-- Name: film_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.film_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_category_id_seq OWNER TO postgres;

--
-- Name: film_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.film_category_id_seq OWNED BY public.film_category.id;


--
-- Name: film_director; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.film_director (
    id integer NOT NULL,
    peoples_id integer DEFAULT 1 NOT NULL,
    id_film integer
);


ALTER TABLE public.film_director OWNER TO postgres;

--
-- Name: film_director_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.film_director_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_director_id_seq OWNER TO postgres;

--
-- Name: film_director_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.film_director_id_seq OWNED BY public.film_director.id;


--
-- Name: film_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.film_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.film_id_seq OWNER TO postgres;

--
-- Name: film_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.film_id_seq OWNED BY public.film.id;


--
-- Name: peoples; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.peoples (
    id integer NOT NULL,
    firstname character varying(100) DEFAULT 'noname'::character varying NOT NULL,
    lastname character varying(200) DEFAULT 'noname'::character varying NOT NULL,
    nationality integer DEFAULT 1,
    dob date DEFAULT CURRENT_DATE NOT NULL
);


ALTER TABLE public.peoples OWNER TO postgres;

--
-- Name: peoples_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.peoples_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.peoples_id_seq OWNER TO postgres;

--
-- Name: peoples_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.peoples_id_seq OWNED BY public.peoples.id;


--
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- Name: country id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);


--
-- Name: film id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film ALTER COLUMN id SET DEFAULT nextval('public.film_id_seq'::regclass);


--
-- Name: film_actor id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_actor ALTER COLUMN id SET DEFAULT nextval('public.film_actor_id_seq'::regclass);


--
-- Name: film_category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_category ALTER COLUMN id SET DEFAULT nextval('public.film_category_id_seq'::regclass);


--
-- Name: film_director id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_director ALTER COLUMN id SET DEFAULT nextval('public.film_director_id_seq'::regclass);


--
-- Name: peoples id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peoples ALTER COLUMN id SET DEFAULT nextval('public.peoples_id_seq'::regclass);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.category (id, name) FROM stdin;
1	Боевик
2	Фантастика
3	Приключения
4	Драма
5	Комедия
6	Триллер
\.


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.country (id, name) FROM stdin;
1	Россия
2	Украина
3	Абхазия
4	Австралия
5	Австрия
6	Азербайджан
7	Албания
8	Алжир
9	Ангола
10	Ангуилья
11	Андорра
12	Антигуа и Барбуда
13	Антильские о-ва
14	Аргентина
15	Армения
16	Арулько
17	Афганистан
18	Багамские о-ва
19	Бангладеш
20	Барбадос
21	Бахрейн
22	Беларусь
23	Белиз
24	Бельгия
25	Бенин
26	Бермуды
27	Болгария
28	Боливия
29	Босния/Герцеговина
30	Ботсвана
31	Бразилия
32	Британские Виргинские о-ва
33	Бруней
34	Буркина Фасо
35	Бурунди
36	Бутан
37	Валлис и Футуна о-ва
38	Вануату
39	Великобритания
40	Венгрия
41	Венесуэла
42	Восточный Тимор
43	Вьетнам
44	Габон
45	Гаити
46	Гайана
47	Гамбия
48	Гана
49	Гваделупа
50	Гватемала
51	Гвинея
52	Гвинея-Бисау
53	Германия
54	Гернси о-в
55	Гибралтар
56	Гондурас
57	Гонконг
58	Гренада
59	Гренландия
60	Греция
61	Грузия
62	Дания
63	Джерси о-в
64	Джибути
65	Доминиканская республика
66	Египет
67	Замбия
68	Западная Сахара
69	Зимбабве
70	Израиль
71	Индия
72	Индонезия
73	Иордания
74	Ирак
75	Иран
76	Ирландия
77	Исландия
78	Испания
79	Италия
80	Йемен
81	Кабо-Верде
82	Казахстан
83	Камбоджа
84	Камерун
85	Канада
86	Катар
87	Кения
88	Кипр
89	Кирибати
90	Китай
91	Колумбия
92	Коморские о-ва
93	Конго (Brazzaville)
94	Конго (Kinshasa)
95	Коста-Рика
96	Кот-д''Ивуар
97	Куба
98	Кувейт
99	Кука о-ва
100	Кыргызстан
101	Лаос
102	Латвия
103	Лесото
104	Либерия
105	Ливан
106	Ливия
107	Литва
108	Лихтенштейн
109	Люксембург
110	Маврикий
111	Мавритания
112	Мадагаскар
113	Македония
114	Малави
115	Малайзия
116	Мали
117	Мальдивские о-ва
118	Мальта
119	Мартиника о-в
120	Мексика
121	Мозамбик
122	Молдова
123	Монако
124	Монголия
125	Марокко
126	Мьянма (Бирма)
127	Мэн о-в
128	Намибия
129	Науру
130	Непал
131	Нигер
132	Нигерия
133	Нидерланды (Голландия)
134	Никарагуа
135	Новая Зеландия
136	Новая Каледония о-в
137	Норвегия
138	Норфолк о-в
139	О.А.Э.
140	Оман
141	Пакистан
142	Панама
143	Папуа Новая Гвинея
144	Парагвай
145	Перу
146	Питкэрн о-в
147	Польша
148	Португалия
149	Пуэрто Рико
150	Реюньон
151	Руанда
152	Румыния
153	США
154	Сальвадор
155	Самоа
156	Сан-Марино
157	Сан-Томе и Принсипи
158	Саудовская Аравия
159	Свазиленд
160	Святая Люсия
161	Святой Елены о-в
162	Северная Корея
163	Сейшеллы
164	Сен-Пьер и Микелон
165	Сенегал
166	Сент Китс и Невис
167	Сент-Винсент и Гренадины
168	Сербия
169	Сингапур
170	Сирия
171	Словакия
172	Словения
173	Соломоновы о-ва
174	Сомали
175	Судан
176	Суринам
177	Сьерра-Леоне
178	Таджикистан
179	Тайвань
180	Таиланд
181	Танзания
182	Того
183	Токелау о-ва
184	Тонга
185	Тринидад и Тобаго
186	Тувалу
187	Тунис
188	Туркменистан
189	Туркс и Кейкос
190	Турция
191	Уганда
192	Узбекистан
193	Уругвай
194	Фарерские о-ва
195	Фиджи
196	Филиппины
197	Финляндия
198	Франция
199	Французская Гвинея
200	Французская Полинезия
201	Хорватия
202	Чад
203	Черногория
204	Чехия
205	Чили
206	Швейцария
207	Швеция
208	Шри-Ланка
209	Эквадор
210	Экваториальная Гвинея
211	Эритрея
212	Эстония
213	Эфиопия
214	ЮАР
215	Южная Корея
216	Южная Осетия
217	Ямайка
218	Япония
\.


--
-- Data for Name: film; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.film (id, name, release, description) FROM stdin;
1	Первому игроку приготовиться	2021-05-15	\N
2	Терминал	2021-05-15	\N
3	Поймай меня, если сможешь	2021-05-15	\N
4	Спасти рядового Райна	2021-05-15	\N
\.


--
-- Data for Name: film_actor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.film_actor (id, peoples_id, id_film) FROM stdin;
\.


--
-- Data for Name: film_category; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.film_category (id, category_id, id_film) FROM stdin;
\.


--
-- Data for Name: film_director; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.film_director (id, peoples_id, id_film) FROM stdin;
\.


--
-- Data for Name: peoples; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.peoples (id, firstname, lastname, nationality, dob) FROM stdin;
1	Angelina	Jolie	1	1975-06-04
2	Johnny	Depp	1	1963-06-09
3	Mel	Gibson	1	1956-01-03
4	Chris	Evans	1	1981-06-13
5	Bruce	Lee	1	1973-07-20
6	Brad	Pitt	1	1963-12-18
7	Benedict	Cumberbatch	1	1976-07-19
8	Luc	Besson	1	1959-03-18
9	Quentin	Tarantino	1	1963-03-27
10	Steven	Spielberg	1	1946-12-18
\.


--
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 6, true);


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_id_seq', 218, true);


--
-- Name: film_actor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.film_actor_id_seq', 1, false);


--
-- Name: film_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.film_category_id_seq', 1, false);


--
-- Name: film_director_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.film_director_id_seq', 1, false);


--
-- Name: film_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.film_id_seq', 4, true);


--
-- Name: peoples_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.peoples_id_seq', 10, true);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (id);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- Name: film_actor film_actor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_actor
    ADD CONSTRAINT film_actor_pkey PRIMARY KEY (id);


--
-- Name: film_category film_category_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_category
    ADD CONSTRAINT film_category_pkey PRIMARY KEY (id);


--
-- Name: film_director film_director_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film_director
    ADD CONSTRAINT film_director_pkey PRIMARY KEY (id);


--
-- Name: film film_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.film
    ADD CONSTRAINT film_pkey PRIMARY KEY (id);


--
-- Name: peoples peoples_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.peoples
    ADD CONSTRAINT peoples_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

