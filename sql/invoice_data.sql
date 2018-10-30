--
-- Data for Name: invoice_orders; Type: TABLE DATA; Schema: public; Owner: sjypzttvwajipn
--

COPY public.invoice_orders (id, account, order_no, order_date, bill_to_name, bill_to_address, bill_to_city, ship_to_name, ship_to_address, ship_to_city, terms, ship_via, ship_date, due_date, po_number, po_date, sales_person, allowance_percent, subtotal, total_allowance, tax, total) FROM stdin;
1	C0000011	SO351424	2018-10-08	7-Eleven, Corp.	1722 Routh St  Suite 1000	Dallas 75201	7-Eleven, Corp.	1722 Routh St  Suite 1000	Dallas 75201	14D	VARIOUS	2018-10-08	2018-10-22	711P100002648	2018-10-08	HOUSE	15	96232.35	-14434.85	0.00	81797.50
2	C0000087	SI101670	2018-10-08	Brothers Dist. - Independent	13310 Ralston Ave.	Sylmar 91342	Brothers Dist. - Independent	13310 Ralston Ave.	Sylmar 91342	2%CCWO	HOUSE	2018-10-08	2018-10-10	SI101670	2018-10-08	BROTHERS	15	5053.88	-758.08	0.00	4295.80
3	C0000087	SI101675	2018-10-08	Brothers Dist. - Independent	13310 Ralston Ave.	Sylmar 91342	Brothers Dist. - Independent	13310 Ralston Ave.	Sylmar 91342	2%CCWO	HOUSE	2018-10-08	2018-10-10	SI101675	2018-10-08	BROTHERS	15	802.68	-120.40	0.00	682.28
4	C0000087	SO347903	2018-10-08	Brothers Dist. - Independent	13310 Ralston Ave.	Sylmar 91342	Brothers Dist. - Independent	13310 Ralston Ave.	Sylmar 91342	2%CCWO	HOUSE	2018-10-08	2018-10-10	BDSY100118	2018-10-08	BROTHERS	15	3031.60	-454.74	0.00	2576.86
5	C0000087	SO349130	2018-10-08	Brothers Dist. - Independent	13310 Ralston Ave.	Sylmar 91342	Brothers Dist. - Independent	13310 Ralston Ave.	Sylmar 91342	2%CCWO	HOUSE	2018-10-08	2018-10-10	RT 12 TUESDAY	2018-10-08	BROTHERS	15	266.50	-39.98	0.00	226.52
\.


--
-- Data for Name: invoice_items; Type: TABLE DATA; Schema: public; Owner: sjypzttvwajipn
--

COPY public.invoice_items (id, order_no, item_no, description, unit, order_qty, shipped_qty, unit_price, price, spoilage_allowance, total_allowance, total_price) FROM stdin;
1	SO351424	90001	7-11 CB Prem Chili Sauce 6Lb.	BAG	136	136	8.06	1096.16	-1.21	-164.42	931.74
2	SO351424	90003	7-11 CB MedChdrChse Sauce 6Lb.	BAG	224	224	8.58	1921.92	-1.29	-288.29	1633.63
3	SO351424	90004	7-11 Chili w/ Beef Sauce 4Lb.	BAG	190	190	6.77	1286.30	-1.02	-192.95	1093.36
4	SO351424	90005	7-11 Med Chse Sauce 4Lb.	BAG	281	281	6.49	1823.69	-0.97	-273.55	1550.14
5	SO351424	95001	7-11 Egg Salad on Wheat	Each	2273	2273	2	4546.00	-0.30	-681.90	3864.10
6	SO351424	95002	Chili Peppers, tub	Each	116	116	2.35	272.60	-0.35	-40.89	231.71
7	SO351424	95003	Diced Tomatoes, tub	Each	0	0	2.31	0.00	-0.35	0.00	0.00
8	SO351424	95004	Diced Onions, tub	Each	494	494	2.15	1062.10	-0.32	-159.32	902.79
9	SO351424	95005	Pico de Gallo, tub	Each	0	0	3.12	0.00	-0.47	0.00	0.00
10	SO351424	95008	Sour Cream, tub 	Each	0	0	2.48	0.00	-0.37	0.00	0.00
11	SO351424	95009	7-11 Deluxe Italian Sub	Each	2120	2120	2.9	6148.00	-0.44	-922.20	5225.80
12	SO351424	95010	7-11 Sausage Egg&Chs Croissant	Each	1354	1354	1.82	2464.28	-0.27	-369.64	2094.64
13	SO351424	95011	7-11 Ham Egg & Chs Croissant	Each	988	988	1.6	1580.80	-0.24	-237.12	1343.68
14	SO351424	95019	Mayonnaise, tub	Each	0	0	2.45	0.00	-0.37	0.00	0.00
15	SO351424	95024	7-11 Ssg Egg & Chs Muffin	Each	833	833	1.46	1216.18	-0.22	-182.43	1033.75
16	SO351424	95026	7-11 Smkd Trky&Jack w/SW Mayo	Each	2617	2617	2.25	5888.25	-0.34	-883.24	5005.01
17	SO351424	95027	7-11 Trky&Sws w/Hrb Dijon Mayo	Each	1017	1017	2.29	2328.93	-0.34	-349.34	1979.59
18	SO351424	95029	7-11 Chkn Salad on Wheat	Each	2969	2969	2.22	6591.18	-0.33	-988.68	5602.50
19	SO351424	95030	7-11 Tuna Salad on Wheat	Each	3121	3121	2.22	6928.62	-0.33	-1039.29	5889.33
20	SO351424	95031	7-11 Bagel & Cream Chse	Each	180	180	1.35	243.00	-0.20	-36.45	206.55
21	SO351424	95033	7-11 Biscuit with Sausage	Each	1985	1985	0.88	1746.80	-0.13	-262.02	1484.78
22	SO351424	95034	7-11 American Sub	Each	667	667	1.96	1307.32	-0.29	-196.10	1111.22
23	SO351424	95035	7-11 Turkey Cheese Sub	Each	1624	1624	1.88	3053.12	-0.28	-457.97	2595.15
24	SO351424	95044	7-11 All American 12" Sub	Each	417	417	2.91	1213.47	-0.44	-182.02	1031.45
25	SO351424	95099	7-11 ChixBacRanchMelt	Each	189	189	2.64	498.96	-0.40	-74.84	424.12
26	SO351424	95107	LAX Tuna Salad on Wheat	Each	25	25	2.22	55.50	-0.33	-8.33	47.18
27	SO351424	95110	LAX Trky&Sws w/Hrb Dijon Mayo	Each	20	20	2.29	45.80	-0.34	-6.87	38.93
28	SO351424	95112	LAX Chkn Salad on Wheat	Each	25	25	2.22	55.50	-0.33	-8.33	47.18
29	SO351424	95114	LAX Deluxe Italian Sub	Each	25	25	2.64	66.00	-0.40	-9.90	56.10
30	SO351424	95117	LAX Biscuit with Sausage	Each	8	8	0.88	7.04	-0.13	-1.06	5.98
31	SO351424	95118	LAX Ssg Egg & Chs Muffin	Each	5	5	1.45	7.25	-0.22	-1.09	6.16
32	SO351424	95119	LAX Sausage Egg&Chs Croissant	Each	8	8	1.82	14.56	-0.27	-2.18	12.38
33	SO351424	95126	LAX Smkd Trky&Jack w/SW Mayo	Each	25	25	2.45	61.25	-0.37	-9.19	52.06
34	SO351424	95133	7-11 Go! Smart Roasted Turkey	Each	1901	1901	2.38	4524.38	-0.36	-678.66	3845.72
35	SO351424	95144	7-11 Turkey & Ham Combo Wheat	Each	2536	2536	2.29	5807.44	-0.34	-871.12	4936.32
36	SO351424	95145	7-11 Italian Sub 6" Value	Each	2520	2520	1.89	4762.80	-0.28	-714.42	4048.38
37	SO351424	95151	7-11 Chicken Alfredo	Each	669	669	3.2	2140.80	-0.48	-321.12	1819.68
38	SO351424	95162	7-11 Chicken Caesar Wrap	Each	407	407	2.7	1098.90	-0.41	-164.84	934.07
39	SO351424	95165	7-11 Cheese Tortellini	Each	276	276	3.31	913.56	-0.50	-137.03	776.53
40	SO351424	95166	7-11 Chicken Parmesan	Each	294	294	3.09	908.46	-0.46	-136.27	772.19
41	SO351424	95180	7-11 Turkey Pepperjack Sub 	Each	729	729	1.94	1414.26	-0.29	-212.14	1202.12
42	SO351424	95182	7-11 Bcn Chsbgr MacNChs Entrée	Each	246	246	3.77	927.42	-0.57	-139.11	788.31
43	SO351424	95186	LAX Turkey Pepperjack Sub 	Each	25	25	1.94	48.50	-0.29	-7.28	41.23
44	SO351424	95189	7-11 Turkey Pesto on Ciabatta	Each	333	333	2.69	895.77	-0.40	-134.37	761.40
45	SO351424	95191	7-11 Smokehouse Ham & Turkey	Each	345	345	3.32	1145.40	-0.50	-171.81	973.59
46	SO351424	95192	7-11 Bistro Trio	Each	314	314	3.3	1036.20	-0.50	-155.43	880.77
47	SO351424	95193	LAX Turkey Pesto on Ciabatta	Each	20	20	2.69	53.80	-0.40	-8.07	45.73
48	SO351424	95194	LAX Bcn Chsbgr MacNChs Entrée	Each	4	4	3.77	15.08	-0.57	-2.26	12.82
49	SO351424	95195	LAX Cheese Tortellini	Each	4	4	3.31	13.24	-0.50	-1.99	11.25
50	SO351424	95196	LAX Chicken Parmesan	Each	6	6	3.09	18.54	-0.46	-2.78	15.76
51	SO351424	95197	LAX Chicken Alfredo	Each	12	12	3.2	38.40	-0.48	-5.76	32.64
52	SO351424	95199	7-11 Bcn Ssg Egg Chs on Prtzl	Each	810	810	2.49	2016.90	-0.37	-302.54	1714.37
53	SO351424	95202	7-11 PB & J on White	Each	1023	1023	1.59	1626.57	-0.24	-243.99	1382.58
54	SO351424	95203	LAX PB & J on White	Each	20	20	1.59	31.80	-0.24	-4.77	27.03
55	SO351424	95204	7-11 Turkey on Jalapeño Bun	Each	267	267	2.61	696.87	-0.39	-104.53	592.34
56	SO351424	95206	7-11 Ham Sausage Chs on Bagel 	Each	600	600	2.42	1452.00	-0.36	-217.80	1234.20
57	SO351424	95207	7-11 Spicy Melt Multi Pack	Each	68	68	7.16	486.88	-1.07	-73.03	413.85
58	SO351424	95208	7-11 Classic Melt Multi Pack	Each	86	86	7.3	627.80	-1.10	-94.17	533.63
59	SO351424	95209	LAX Turkey on Jalapeño Bun	Each	10	10	2.61	26.10	-0.39	-3.92	22.19
60	SO351424	95212	7-11 Muffuletta Bistro	Each	373	373	3.43	1279.39	-0.51	-191.91	1087.48
61	SO351424	95216	7-11 Spicy Chicken Biscuit	Each	535	535	1.77	946.95	-0.27	-142.04	804.91
62	SO351424	95217	7-11 Chicken Egg Chs Biscuit	Each	471	471	2.04	960.84	-0.31	-144.13	816.71
63	SO351424	95220	7-11 Bistro Chicken Artichoke	Each	286	286	3.38	966.68	-0.51	-145.00	821.68
64	SO351424	95221	LAX Bistro Chicken Artichoke	Each	8	8	3.38	27.04	-0.51	-4.06	22.98
65	SO351424	95226	7-11 Bistro Windy City Sub	Each	921	921	0	0.00	0.00	0.00	0.00
66	SO351424	95227	LAX Bistro Windy City Sub	Each	0	0	0	0.00	0.00	0.00	0.00
67	SO351424	95229	7-11 Spicy Tuna on Dark Wheat	Each	1022	1022	2.04	2084.88	-0.31	-312.73	1772.15
68	SO351424	95230	7-11 Falafel Wrap 	Each	637	637	2.76	1758.12	-0.41	-263.72	1494.40
69	SO351424	95231	LAX Spicy Tuna on Dark Wheat	Each	10	10	2.04	20.40	-0.31	-3.06	17.34
70	SO351424	95232	7-11 Tortellini & Marinara	Each	536	536	3.6	1929.60	-0.54	-289.44	1640.16
71	SI101670	\N	Shipment No. SHIP486511:	\N	0	0	0	0.00	0.00	0.00	0.00
72	SI101670	40210	BB Sub Turkey & Bacon	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
73	SI101670	40177	BB Tri Chicken Salad	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
74	SI101670	40183	BB Tri Turkey & Cheddar	Each	60	60	1.29	77.40	-0.19	-11.61	65.79
75	SI101670	40189	BB Sub Big Tex Ham/Cheddar	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
76	SI101670	40180	BB Tri Ham & Cheddar	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
77	SI101670	40185	BB Tri Tuna Salad	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
78	SI101670	40195	BB Sub Big Tex Turkey/	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
79	SI101670	40175	BB Tri Egg Salad	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
80	SI101670	\N	Shipment No. SHIP486513:	\N	0	0	0	0.00	0.00	0.00	0.00
81	SI101670	40203	BB Chicken on Multigrain	Each	24	24	1.73	41.52	-0.26	-6.23	35.29
82	SI101670	40175	BB Tri Egg Salad	Each	36	36	1.29	46.44	-0.19	-6.97	39.47
83	SI101670	40183	BB Tri Turkey & Cheddar	Each	36	36	1.29	46.44	-0.19	-6.97	39.47
84	SI101670	40199	BB Spc Turkey Breast/Jack	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
85	SI101670	40195	BB Sub Big Tex Turkey/	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
86	SI101670	40180	BB Tri Ham & Cheddar	Each	36	36	1.29	46.44	-0.19	-6.97	39.47
87	SI101670	40205	BB TriS Combo Super Tri	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
88	SI101670	40177	BB Tri Chicken Salad	Each	36	36	1.29	46.44	-0.19	-6.97	39.47
89	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
90	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
91	SI101670	40197	BB Sub Turkey & Ham	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
92	SI101670	40191	BB Tuna on Multigrain	Each	24	24	1.73	41.52	-0.26	-6.23	35.29
93	SI101670	40216	BB Cro Turkey & Cheddar 	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
94	SI101670	40193	BB Sub Roast Beef &	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
95	SI101670	40189	BB Sub Big Tex Ham/Cheddar	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
96	SI101670	40209	BB Sub Original Submarine	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
97	SI101670	40185	BB Tri Tuna Salad	Each	36	36	1.29	46.44	-0.19	-6.97	39.47
98	SI101670	40192	BB Turkey & Veg on Multigrain	Each	24	24	1.73	41.52	-0.26	-6.23	35.29
99	SI101670	40190	BB Pta Ham & Cheddar Pita	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
100	SI101670	\N	Shipment No. SHIP486519:	\N	0	0	0	0.00	0.00	0.00	0.00
101	SI101670	40163	BB Wrp Grilled Chicken Caesar 	Each	6	6	2.47	14.82	-0.37	-2.22	12.60
102	SI101670	40175	BB Tri Egg Salad	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
103	SI101670	40195	BB Sub Big Tex Turkey/	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
104	SI101670	40209	BB Sub Original Submarine	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
105	SI101670	40135	BB Peanut Butter/Strawberry	Each	12	12	1.13	13.56	-0.17	-2.03	11.53
106	SI101670	40191	BB Tuna on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
107	SI101670	40216	BB Cro Turkey & Cheddar 	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
108	SI101670	40205	BB TriS Combo Super Tri	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
109	SI101670	40185	BB Tri Tuna Salad	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
110	SI101670	40190	BB Pta Ham & Cheddar Pita	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
111	SI101670	40164	BB Wrp Zesty Turkey Wrap	Each	6	6	2.47	14.82	-0.37	-2.22	12.60
112	SI101670	40189	BB Sub Big Tex Ham/Cheddar	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
113	SI101670	40118	BB Pta Cajun Chicken	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
114	SI101670	40192	BB Turkey & Veg on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
115	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
116	SI101670	40180	BB Tri Ham & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
117	SI101670	40200	BB Spc Turkey & Swiss	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
118	SI101670	40193	BB Sub Roast Beef &	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
119	SI101670	40183	BB Tri Turkey & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
120	SI101670	40199	BB Spc Turkey Breast/Jack	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
121	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
122	SI101670	40177	BB Tri Chicken Salad	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
123	SI101670	\N	Shipment No. SHIP486520:	\N	0	0	0	0.00	0.00	0.00	0.00
124	SI101670	40185	BB Tri Tuna Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
125	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
126	SI101670	40192	BB Turkey & Veg on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
127	SI101670	40183	BB Tri Turkey & Cheddar	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
128	SI101670	40215	BB Cro Tuna Salad Croissant	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
129	SI101670	40190	BB Pta Ham & Cheddar Pita	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
130	SI101670	40193	BB Sub Roast Beef &	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
131	SI101670	40195	BB Sub Big Tex Turkey/	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
132	SI101670	40209	BB Sub Original Submarine	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
133	SI101670	40191	BB Tuna on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
134	SI101670	40175	BB Tri Egg Salad	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
135	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
136	SI101670	40177	BB Tri Chicken Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
137	SI101670	40197	BB Sub Turkey & Ham	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
138	SI101670	\N	Shipment No. SHIP486523:	\N	0	0	0	0.00	0.00	0.00	0.00
139	SI101670	40183	BB Tri Turkey & Cheddar	Each	14	14	1.29	18.06	-0.19	-2.71	15.35
140	SI101670	40185	BB Tri Tuna Salad	Each	14	14	1.29	18.06	-0.19	-2.71	15.35
141	SI101670	40177	BB Tri Chicken Salad	Each	10	10	1.29	12.90	-0.19	-1.94	10.97
142	SI101670	\N	Shipment No. SHIP486550:	\N	0	0	0	0.00	0.00	0.00	0.00
143	SI101670	40183	BB Tri Turkey & Cheddar	Each	72	72	1.29	92.88	-0.19	-13.93	78.95
144	SI101670	40185	BB Tri Tuna Salad	Each	72	72	1.29	92.88	-0.19	-13.93	78.95
145	SI101670	40177	BB Tri Chicken Salad	Each	48	48	1.29	61.92	-0.19	-9.29	52.63
146	SI101670	40135	BB Peanut Butter/Strawberry	Each	4	4	1.13	4.52	-0.17	-0.68	3.84
147	SI101670	40180	BB Tri Ham & Cheddar	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
148	SI101670	\N	Shipment No. SHIP486557:	\N	0	0	0	0.00	0.00	0.00	0.00
149	SI101670	40192	BB Turkey & Veg on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
150	SI101670	40189	BB Sub Big Tex Ham/Cheddar	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
151	SI101670	40185	BB Tri Tuna Salad	Each	14	14	1.29	18.06	-0.19	-2.71	15.35
152	SI101670	40183	BB Tri Turkey & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
153	SI101670	40177	BB Tri Chicken Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
154	SI101670	40216	BB Cro Turkey & Cheddar 	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
155	SI101670	40190	BB Pta Ham & Cheddar Pita	Each	1	1	1.84	1.84	-0.28	-0.28	1.56
156	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
157	SI101670	40195	BB Sub Big Tex Turkey/	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
158	SI101670	40191	BB Tuna on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
159	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	1	1	1.84	1.84	-0.28	-0.28	1.56
160	SI101670	40175	BB Tri Egg Salad	Each	8	8	1.29	10.32	-0.19	-1.55	8.77
161	SI101670	40209	BB Sub Original Submarine	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
162	SI101670	\N	Shipment No. SHIP486625:	\N	0	0	0	0.00	0.00	0.00	0.00
163	SI101670	40175	BB Tri Egg Salad	Each	18	18	1.29	23.22	-0.19	-3.48	19.74
164	SI101670	40183	BB Tri Turkey & Cheddar	Each	18	18	1.29	23.22	-0.19	-3.48	19.74
165	SI101670	40185	BB Tri Tuna Salad	Each	18	18	1.29	23.22	-0.19	-3.48	19.74
166	SI101670	40216	BB Cro Turkey & Cheddar 	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
167	SI101670	40180	BB Tri Ham & Cheddar	Each	18	18	1.29	23.22	-0.19	-3.48	19.74
168	SI101670	40193	BB Sub Roast Beef &	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
169	SI101670	40192	BB Turkey & Veg on Multigrain	Each	12	12	1.73	20.76	-0.26	-3.11	17.65
170	SI101670	40209	BB Sub Original Submarine	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
171	SI101670	40197	BB Sub Turkey & Ham	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
172	SI101670	40177	BB Tri Chicken Salad	Each	18	18	1.29	23.22	-0.19	-3.48	19.74
173	SI101670	40195	BB Sub Big Tex Turkey/	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
174	SI101670	40205	BB TriS Combo Super Tri	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
175	SI101670	40191	BB Tuna on Multigrain	Each	12	12	1.73	20.76	-0.26	-3.11	17.65
176	SI101670	40419	BB TriS Tuna and Jalapeno	Each	6	6	1.99	11.94	-0.30	-1.79	10.15
177	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	8	8	1.84	14.72	-0.28	-2.21	12.51
178	SI101670	40189	BB Sub Big Tex Ham/Cheddar	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
179	SI101670	\N	Shipment No. SHIP486641:	\N	0	0	0	0.00	0.00	0.00	0.00
180	SI101670	40209	BB Sub Original Submarine	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
181	SI101670	40190	BB Pta Ham & Cheddar Pita	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
182	SI101670	40177	BB Tri Chicken Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
183	SI101670	40200	BB Spc Turkey & Swiss	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
184	SI101670	40191	BB Tuna on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
185	SI101670	40180	BB Tri Ham & Cheddar	Each	8	8	1.29	10.32	-0.19	-1.55	8.77
186	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
187	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
188	SI101670	40203	BB Chicken on Multigrain	Each	4	4	1.73	6.92	-0.26	-1.04	5.88
189	SI101670	40199	BB Spc Turkey Breast/Jack	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
190	SI101670	40193	BB Sub Roast Beef &	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
191	SI101670	40195	BB Sub Big Tex Turkey/	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
192	SI101670	40197	BB Sub Turkey & Ham	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
193	SI101670	40189	BB Sub Big Tex Ham/Cheddar	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
194	SI101670	40175	BB Tri Egg Salad	Each	10	10	1.29	12.90	-0.19	-1.94	10.97
195	SI101670	40216	BB Cro Turkey & Cheddar 	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
196	SI101670	40183	BB Tri Turkey & Cheddar	Each	8	8	1.29	10.32	-0.19	-1.55	8.77
197	SI101670	40185	BB Tri Tuna Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
198	SI101670	40215	BB Cro Tuna Salad Croissant	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
199	SI101670	40192	BB Turkey & Veg on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
200	SI101670	40164	BB Wrp Zesty Turkey Wrap	Each	2	2	2.47	4.94	-0.37	-0.74	4.20
201	SI101670	40163	BB Wrp Grilled Chicken Caesar 	Each	2	2	2.47	4.94	-0.37	-0.74	4.20
202	SI101670	\N	Shipment No. SHIP486666:	\N	0	0	0	0.00	0.00	0.00	0.00
203	SI101670	40216	BB Cro Turkey & Cheddar 	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
204	SI101670	40199	BB Spc Turkey Breast/Jack	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
205	SI101670	40195	BB Sub Big Tex Turkey/	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
206	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
207	SI101670	40197	BB Sub Turkey & Ham	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
208	SI101670	40192	BB Turkey & Veg on Multigrain	Each	3	3	1.73	5.19	-0.26	-0.78	4.41
209	SI101670	40209	BB Sub Original Submarine	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
210	SI101670	40190	BB Pta Ham & Cheddar Pita	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
211	SI101670	40191	BB Tuna on Multigrain	Each	3	3	1.73	5.19	-0.26	-0.78	4.41
212	SI101670	40177	BB Tri Chicken Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
213	SI101670	40175	BB Tri Egg Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
214	SI101670	40183	BB Tri Turkey & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
215	SI101670	40185	BB Tri Tuna Salad	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
216	SI101670	\N	Shipment No. SHIP486670:	\N	0	0	0	0.00	0.00	0.00	0.00
217	SI101670	40192	BB Turkey & Veg on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
218	SI101670	40183	BB Tri Turkey & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
219	SI101670	40191	BB Tuna on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
220	SI101670	40210	BB Sub Turkey & Bacon	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
221	SI101670	40185	BB Tri Tuna Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
222	SI101670	40195	BB Sub Big Tex Turkey/	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
223	SI101670	40216	BB Cro Turkey & Cheddar 	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
224	SI101670	40177	BB Tri Chicken Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
225	SI101670	40197	BB Sub Turkey & Ham	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
226	SI101670	40209	BB Sub Original Submarine	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
227	SI101670	40175	BB Tri Egg Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
228	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
229	SI101670	40189	BB Sub Big Tex Ham/Cheddar	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
230	SI101670	40193	BB Sub Roast Beef &	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
231	SI101670	40180	BB Tri Ham & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
232	SI101670	\N	Shipment No. SHIP486671:	\N	0	0	0	0.00	0.00	0.00	0.00
233	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
234	SI101670	40209	BB Sub Original Submarine	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
235	SI101670	40177	BB Tri Chicken Salad	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
236	SI101670	40200	BB Spc Turkey & Swiss	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
237	SI101670	40180	BB Tri Ham & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
238	SI101670	40192	BB Turkey & Veg on Multigrain	Each	12	12	1.73	20.76	-0.26	-3.11	17.65
239	SI101670	40191	BB Tuna on Multigrain	Each	12	12	1.73	20.76	-0.26	-3.11	17.65
240	SI101670	40175	BB Tri Egg Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
241	SI101670	40218	BB TriS Turkey & Cheddar 	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
242	SI101670	40216	BB Cro Turkey & Cheddar 	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
243	SI101670	40183	BB Tri Turkey & Cheddar	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
244	SI101670	40199	BB Spc Turkey Breast/Jack	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
245	SI101670	40185	BB Tri Tuna Salad	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
246	SI101670	40205	BB TriS Combo Super Tri	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
247	SI101670	40195	BB Sub Big Tex Turkey/	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
248	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
249	SI101670	\N	Shipment No. SHIP486672:	\N	0	0	0	0.00	0.00	0.00	0.00
250	SI101670	40192	BB Turkey & Veg on Multigrain	Each	3	3	1.73	5.19	-0.26	-0.78	4.41
251	SI101670	40175	BB Tri Egg Salad	Each	10	10	1.29	12.90	-0.19	-1.94	10.97
252	SI101670	40191	BB Tuna on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
253	SI101670	40180	BB Tri Ham & Cheddar	Each	10	10	1.29	12.90	-0.19	-1.94	10.97
254	SI101670	40199	BB Spc Turkey Breast/Jack	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
255	SI101670	40209	BB Sub Original Submarine	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
256	SI101670	40190	BB Pta Ham & Cheddar Pita	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
257	SI101670	40195	BB Sub Big Tex Turkey/	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
258	SI101670	40185	BB Tri Tuna Salad	Each	10	10	1.29	12.90	-0.19	-1.94	10.97
259	SI101670	40183	BB Tri Turkey & Cheddar	Each	10	10	1.29	12.90	-0.19	-1.94	10.97
260	SI101670	40200	BB Spc Turkey & Swiss	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
261	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
262	SI101670	40177	BB Tri Chicken Salad	Each	10	10	1.29	12.90	-0.19	-1.94	10.97
263	SI101670	40215	BB Cro Tuna Salad Croissant	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
264	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
265	SI101670	40216	BB Cro Turkey & Cheddar 	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
266	SI101670	\N	Shipment No. SHIP486673:	\N	0	0	0	0.00	0.00	0.00	0.00
267	SI101670	40418	BB TriS Turkey and Bacon	Each	2	2	1.99	3.98	-0.30	-0.60	3.38
268	SI101670	40205	BB TriS Combo Super Tri	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
269	SI101670	40190	BB Pta Ham & Cheddar Pita	Each	1	1	1.84	1.84	-0.28	-0.28	1.56
270	SI101670	40216	BB Cro Turkey & Cheddar 	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
271	SI101670	40193	BB Sub Roast Beef &	Each	2	2	1.84	3.68	-0.28	-0.55	3.13
272	SI101670	40183	BB Tri Turkey & Cheddar	Each	9	9	1.29	11.61	-0.19	-1.74	9.87
273	SI101670	40180	BB Tri Ham & Cheddar	Each	9	9	1.29	11.61	-0.19	-1.74	9.87
274	SI101670	40191	BB Tuna on Multigrain	Each	3	3	1.73	5.19	-0.26	-0.78	4.41
275	SI101670	40200	BB Spc Turkey & Swiss	Each	1	1	1.84	1.84	-0.28	-0.28	1.56
276	SI101670	40118	BB Pta Cajun Chicken	Each	1	1	1.84	1.84	-0.28	-0.28	1.56
277	SI101670	40210	BB Sub Turkey & Bacon	Each	2	2	1.84	3.68	-0.28	-0.55	3.13
278	SI101670	40419	BB TriS Tuna and Jalapeno	Each	2	2	1.99	3.98	-0.30	-0.60	3.38
279	SI101670	40185	BB Tri Tuna Salad	Each	9	9	1.29	11.61	-0.19	-1.74	9.87
280	SI101670	40177	BB Tri Chicken Salad	Each	9	9	1.29	11.61	-0.19	-1.74	9.87
281	SI101670	40215	BB Cro Tuna Salad Croissant	Each	2	2	1.84	3.68	-0.28	-0.55	3.13
282	SI101670	40197	BB Sub Turkey & Ham	Each	2	2	1.84	3.68	-0.28	-0.55	3.13
283	SI101670	40199	BB Spc Turkey Breast/Jack	Each	1	1	1.84	1.84	-0.28	-0.28	1.56
284	SI101670	40195	BB Sub Big Tex Turkey/	Each	1	1	1.84	1.84	-0.28	-0.28	1.56
285	SI101670	40189	BB Sub Big Tex Ham/Cheddar	Each	2	2	1.84	3.68	-0.28	-0.55	3.13
286	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	1	1	1.84	1.84	-0.28	-0.28	1.56
287	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
288	SI101670	40192	BB Turkey & Veg on Multigrain	Each	3	3	1.73	5.19	-0.26	-0.78	4.41
289	SI101670	40175	BB Tri Egg Salad	Each	9	9	1.29	11.61	-0.19	-1.74	9.87
290	SI101670	\N	Shipment No. SHIP486675:	\N	0	0	0	0.00	0.00	0.00	0.00
291	SI101670	40218	BB TriS Turkey & Cheddar 	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
292	SI101670	40190	BB Pta Ham & Cheddar Pita	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
293	SI101670	40209	BB Sub Original Submarine	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
294	SI101670	40163	BB Wrp Grilled Chicken Caesar 	Each	12	12	2.47	29.64	-0.37	-4.45	25.19
295	SI101670	40195	BB Sub Big Tex Turkey/	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
296	SI101670	40191	BB Tuna on Multigrain	Each	36	36	1.73	62.28	-0.26	-9.34	52.94
297	SI101670	40183	BB Tri Turkey & Cheddar	Each	48	48	1.29	61.92	-0.19	-9.29	52.63
298	SI101670	40135	BB Peanut Butter/Strawberry	Each	48	48	1.13	54.24	-0.17	-8.14	46.10
299	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
300	SI101670	40118	BB Pta Cajun Chicken	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
301	SI101670	40164	BB Wrp Zesty Turkey Wrap	Each	12	12	2.47	29.64	-0.37	-4.45	25.19
302	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	36	36	1.84	66.24	-0.28	-9.94	56.30
303	SI101670	40189	BB Sub Big Tex Ham/Cheddar	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
304	SI101670	40200	BB Spc Turkey & Swiss	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
305	SI101670	40192	BB Turkey & Veg on Multigrain	Each	36	36	1.73	62.28	-0.26	-9.34	52.94
306	SI101670	40210	BB Sub Turkey & Bacon	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
307	SI101670	40180	BB Tri Ham & Cheddar	Each	48	48	1.29	61.92	-0.19	-9.29	52.63
308	SI101670	40199	BB Spc Turkey Breast/Jack	Each	24	24	1.84	44.16	-0.28	-6.62	37.54
309	SI101670	41012	BB Snk Premium Yogurt Parfait	Each	6	6	1.88	11.28	-0.28	-1.69	9.59
310	SI101670	40193	BB Sub Roast Beef &	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
311	SI101670	40205	BB TriS Combo Super Tri	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
312	SI101670	40197	BB Sub Turkey & Ham	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
313	SI101670	40177	BB Tri Chicken Salad	Each	48	48	1.29	61.92	-0.19	-9.29	52.63
314	SI101670	40216	BB Cro Turkey & Cheddar 	Each	36	36	1.84	66.24	-0.28	-9.94	56.30
315	SI101670	40185	BB Tri Tuna Salad	Each	48	48	1.29	61.92	-0.19	-9.29	52.63
316	SI101670	\N	Shipment No. SHIP486676:	\N	0	0	0	0.00	0.00	0.00	0.00
317	SI101670	40183	BB Tri Turkey & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
318	SI101670	40190	BB Pta Ham & Cheddar Pita	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
319	SI101670	40180	BB Tri Ham & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
320	SI101670	40175	BB Tri Egg Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
321	SI101670	40185	BB Tri Tuna Salad	Each	24	24	1.29	30.96	-0.19	-4.64	26.32
322	SI101670	40188	BB Snk Egg Cup Breakfast	Each	6	6	1.21	7.26	-0.18	-1.09	6.17
323	SI101670	40212	BB Brk Plain Bagel & Cream	Each	6	6	1.27	7.62	-0.19	-1.14	6.48
324	SI101670	40177	BB Tri Chicken Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
325	SI101670	40205	BB TriS Combo Super Tri	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
326	SI101670	40199	BB Spc Turkey Breast/Jack	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
327	SI101670	40164	BB Wrp Zesty Turkey Wrap	Each	6	6	2.47	14.82	-0.37	-2.22	12.60
328	SI101670	41012	BB Snk Premium Yogurt Parfait	Each	6	6	1.88	11.28	-0.28	-1.69	9.59
329	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
330	SI101670	40163	BB Wrp Grilled Chicken Caesar 	Each	6	6	2.47	14.82	-0.37	-2.22	12.60
331	SI101670	\N	Shipment No. SHIP486678:	\N	0	0	0	0.00	0.00	0.00	0.00
332	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
333	SI101670	40200	BB Spc Turkey & Swiss	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
334	SI101670	40163	BB Wrp Grilled Chicken Caesar 	Each	2	2	2.47	4.94	-0.37	-0.74	4.20
335	SI101670	40199	BB Spc Turkey Breast/Jack	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
336	SI101670	40216	BB Cro Turkey & Cheddar 	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
337	SI101670	40185	BB Tri Tuna Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
338	SI101670	40205	BB TriS Combo Super Tri	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
339	SI101670	40164	BB Wrp Zesty Turkey Wrap	Each	2	2	2.47	4.94	-0.37	-0.74	4.20
340	SI101670	40175	BB Tri Egg Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
341	SI101670	40180	BB Tri Ham & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
342	SI101670	40183	BB Tri Turkey & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
343	SI101670	40197	BB Sub Turkey & Ham	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
344	SI101670	40192	BB Turkey & Veg on Multigrain	Each	12	12	1.73	20.76	-0.26	-3.11	17.65
345	SI101670	40190	BB Pta Ham & Cheddar Pita	Each	2	2	1.84	3.68	-0.28	-0.55	3.13
346	SI101670	40191	BB Tuna on Multigrain	Each	12	12	1.73	20.76	-0.26	-3.11	17.65
347	SI101670	40218	BB TriS Turkey & Cheddar 	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
348	SI101670	40196	BB Pta Turkey & Cheddar Pita	Each	2	2	1.84	3.68	-0.28	-0.55	3.13
349	SI101670	40177	BB Tri Chicken Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
350	SI101670	\N	Shipment No. SHIP486680:	\N	0	0	0	0.00	0.00	0.00	0.00
351	SI101670	40191	BB Tuna on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
352	SI101670	40185	BB Tri Tuna Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
353	SI101670	40118	BB Pta Cajun Chicken	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
354	SI101670	40192	BB Turkey & Veg on Multigrain	Each	6	6	1.73	10.38	-0.26	-1.56	8.82
355	SI101670	40189	BB Sub Big Tex Ham/Cheddar	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
356	SI101670	40177	BB Tri Chicken Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
357	SI101670	40419	BB TriS Tuna and Jalapeno	Each	6	6	1.99	11.94	-0.30	-1.79	10.15
358	SI101670	40183	BB Tri Turkey & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
359	SI101670	40199	BB Spc Turkey Breast/Jack	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
360	SI101670	40180	BB Tri Ham & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
361	SI101670	40175	BB Tri Egg Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
362	SI101670	40209	BB Sub Original Submarine	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
363	SI101670	40207	BB Cro Ham & Swiss Croissant	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
364	SI101670	40205	BB TriS Combo Super Tri	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
365	SI101670	40200	BB Spc Turkey & Swiss	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
366	SI101670	40216	BB Cro Turkey & Cheddar 	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
367	SI101670	\N	Shipment No. SHIP486681:	\N	0	0	0	0.00	0.00	0.00	0.00
368	SI101670	40209	BB Sub Original Submarine	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
369	SI101670	40195	BB Sub Big Tex Turkey/	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
370	SI101670	40175	BB Tri Egg Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
371	SI101675	\N	Shipment No. SHIP487138:	\N	0	0	0	0.00	0.00	0.00	0.00
372	SI101675	11126	FG Cro Cran Chicken Croissant	Each	2	2	2.51	5.02	-0.38	-0.75	4.27
373	SI101675	40207	BB Cro Ham & Swiss Croissant	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
374	SI101675	40195	BB Sub Big Tex Turkey/	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
375	SI101675	40216	BB Cro Turkey & Cheddar 	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
376	SI101675	40191	BB Tuna on Multigrain	Each	12	12	1.73	20.76	-0.26	-3.11	17.65
377	SI101675	40180	BB Tri Ham & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
378	SI101675	40175	BB Tri Egg Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
379	SI101675	40189	BB Sub Big Tex Ham/Cheddar	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
380	SI101675	40209	BB Sub Original Submarine	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
381	SI101675	40419	BB TriS Tuna and Jalapeno	Each	6	6	1.99	11.94	-0.30	-1.79	10.15
382	SI101675	10293	FG Protein Plate	Each	3	3	2.65	7.95	-0.40	-1.19	6.76
383	SI101675	11058	FG Sub Premium Ham & Swiss 	Each	2	2	2.34	4.68	-0.35	-0.70	3.98
384	SI101675	40177	BB Tri Chicken Salad	Each	36	36	1.29	46.44	-0.19	-6.97	39.47
385	SI101675	10111	FG Sub Spicy Italian	Each	2	2	2.72	5.44	-0.41	-0.82	4.62
386	SI101675	40197	BB Sub Turkey & Ham	Each	12	12	1.84	22.08	-0.28	-3.31	18.77
387	SI101675	40183	BB Tri Turkey & Cheddar	Each	84	84	1.29	108.36	-0.19	-16.25	92.11
388	SI101675	40185	BB Tri Tuna Salad	Each	36	36	1.29	46.44	-0.19	-6.97	39.47
389	SI101675	11033	FG TriL Smkd Trky&Jack w/SW Ma	Each	3	3	2.25	6.75	-0.34	-1.01	5.74
390	SI101675	\N	Shipment No. SHIP487167:	\N	0	0	0	0.00	0.00	0.00	0.00
391	SI101675	40190	BB Pta Ham & Cheddar Pita	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
392	SI101675	40197	BB Sub Turkey & Ham	Each	8	8	1.84	14.72	-0.28	-2.21	12.51
393	SI101675	40192	BB Turkey & Veg on Multigrain	Each	3	3	1.73	5.19	-0.26	-0.78	4.41
394	SI101675	40196	BB Pta Turkey & Cheddar Pita	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
395	SI101675	40189	BB Sub Big Tex Ham/Cheddar	Each	8	8	1.84	14.72	-0.28	-2.21	12.51
396	SI101675	40175	BB Tri Egg Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
397	SI101675	40216	BB Cro Turkey & Cheddar 	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
398	SI101675	40177	BB Tri Chicken Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
399	SI101675	40180	BB Tri Ham & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
400	SI101675	40199	BB Spc Turkey Breast/Jack	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
401	SI101675	40183	BB Tri Turkey & Cheddar	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
402	SI101675	40185	BB Tri Tuna Salad	Each	12	12	1.29	15.48	-0.19	-2.32	13.16
403	SI101675	40195	BB Sub Big Tex Turkey/	Each	8	8	1.84	14.72	-0.28	-2.21	12.51
404	SI101675	40191	BB Tuna on Multigrain	Each	3	3	1.73	5.19	-0.26	-0.78	4.41
405	SI101675	40207	BB Cro Ham & Swiss Croissant	Each	5	5	1.84	9.20	-0.28	-1.38	7.82
406	SI101675	\N	Shipment No. SHIP487168:	\N	0	0	0	0.00	0.00	0.00	0.00
407	SI101675	40197	BB Sub Turkey & Ham	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
408	SI101675	40191	BB Tuna on Multigrain	Each	3	3	1.73	5.19	-0.26	-0.78	4.41
409	SI101675	40177	BB Tri Chicken Salad	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
410	SI101675	40193	BB Sub Roast Beef &	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
411	SI101675	40175	BB Tri Egg Salad	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
412	SI101675	40180	BB Tri Ham & Cheddar	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
413	SI101675	40209	BB Sub Original Submarine	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
414	SI101675	40192	BB Turkey & Veg on Multigrain	Each	3	3	1.73	5.19	-0.26	-0.78	4.41
415	SI101675	40118	BB Pta Cajun Chicken	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
416	SI101675	40216	BB Cro Turkey & Cheddar 	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
417	SI101675	40183	BB Tri Turkey & Cheddar	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
418	SI101675	40189	BB Sub Big Tex Ham/Cheddar	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
419	SI101675	40185	BB Tri Tuna Salad	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
420	SI101675	40215	BB Cro Tuna Salad Croissant	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
421	SI101675	40195	BB Sub Big Tex Turkey/	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
422	SI101675	\N	Shipment No. SHIP487169:	\N	0	0	0	0.00	0.00	0.00	0.00
423	SI101675	40196	BB Pta Turkey & Cheddar Pita	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
424	SI101675	40197	BB Sub Turkey & Ham	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
425	SI101675	40189	BB Sub Big Tex Ham/Cheddar	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
426	SI101675	40195	BB Sub Big Tex Turkey/	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
427	SI101675	40118	BB Pta Cajun Chicken	Each	2	2	1.84	3.68	-0.28	-0.55	3.13
428	SI101675	40209	BB Sub Original Submarine	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
429	SI101675	40190	BB Pta Ham & Cheddar Pita	Each	3	3	1.84	5.52	-0.28	-0.83	4.69
430	SI101675	40216	BB Cro Turkey & Cheddar 	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
431	SI101675	40177	BB Tri Chicken Salad	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
432	SI101675	40207	BB Cro Ham & Swiss Croissant	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
433	SI101675	40175	BB Tri Egg Salad	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
434	SI101675	40192	BB Turkey & Veg on Multigrain	Each	3	3	1.73	5.19	-0.26	-0.78	4.41
435	SI101675	40180	BB Tri Ham & Cheddar	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
436	SI101675	40185	BB Tri Tuna Salad	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
437	SI101675	40191	BB Tuna on Multigrain	Each	3	3	1.73	5.19	-0.26	-0.78	4.41
438	SI101675	40183	BB Tri Turkey & Cheddar	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
439	SO347903	80145	Naked Juice - Protein Zone	CASE	40	40	16.79	671.60	-2.52	-100.74	570.86
440	SO347903	80007	Naked Juice - Green Machine	CASE	40	40	14.25	570.00	-2.14	-85.50	484.50
441	SO347903	80005	Naked Juice - Blue Machine	CASE	40	40	14.25	570.00	-2.14	-85.50	484.50
442	SO347903	80008	Naked Juice - Mighty Mango	CASE	40	40	14.25	570.00	-2.14	-85.50	484.50
443	SO347903	80012	Naked Juice - StrawBanana	CASE	40	40	14.25	570.00	-2.14	-85.50	484.50
444	SO347903	98000	CRV	Each	1600	1600	0.05	80.00	-0.01	-12.00	68.00
445	SO349130	40215	BB Cro Tuna Salad Croissant	Each	8	8	1.84	14.72	-0.28	-2.21	12.51
446	SO349130	40203	BB Chicken on Multigrain	Each	14	14	1.73	24.22	-0.26	-3.63	20.59
447	SO349130	40210	BB Sub Turkey & Bacon	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
448	SO349130	40196	BB Pta Turkey & Cheddar Pita	Each	8	8	1.84	14.72	-0.28	-2.21	12.51
449	SO349130	40189	BB Sub Big Tex Ham/Cheddar	Each	4	4	1.84	7.36	-0.28	-1.10	6.26
450	SO349130	40195	BB Sub Big Tex Turkey/	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
451	SO349130	40180	BB Tri Ham & Cheddar	Each	6	6	1.29	7.74	-0.19	-1.16	6.58
452	SO349130	40200	BB Spc Turkey & Swiss	Each	10	10	1.84	18.40	-0.28	-2.76	15.64
453	SO349130	40163	BB Wrp Grilled Chicken Caesar 	Each	8	8	2.47	19.76	-0.37	-2.96	16.80
454	SO349130	40192	BB Turkey & Veg on Multigrain	Each	14	14	1.73	24.22	-0.26	-3.63	20.59
455	SO349130	40185	BB Tri Tuna Salad	Each	10	10	1.29	12.90	-0.19	-1.94	10.97
456	SO349130	40199	BB Spc Turkey Breast/Jack	Each	10	10	1.84	18.40	-0.28	-2.76	15.64
457	SO349130	40117	BB Pta Pesto Chicken	Each	0	0	1.84	0.00	-0.28	0.00	0.00
458	SO349130	40191	BB Tuna on Multigrain	Each	14	14	1.73	24.22	-0.26	-3.63	20.59
459	SO349130	40177	BB Tri Chicken Salad	Each	10	10	1.29	12.90	-0.19	-1.94	10.97
460	SO349130	40183	BB Tri Turkey & Cheddar	Each	10	10	1.29	12.90	-0.19	-1.94	10.97
461	SO349130	41126	BB Cro Cran Chicken Croissant	Each	4	4	2.47	9.88	-0.37	-1.48	8.40
462	SO349130	40193	BB Sub Roast Beef &	Each	6	6	1.84	11.04	-0.28	-1.66	9.38
463	SO349130	40216	BB Cro Turkey & Cheddar 	Each	8	8	1.84	14.72	-0.28	-2.21	12.51
\.