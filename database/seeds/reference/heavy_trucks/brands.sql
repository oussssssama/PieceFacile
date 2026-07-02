-- =============================================================================
-- PieceFacile
-- AUTO GENERATED FILE
-- DO NOT EDIT
-- =============================================================================

BEGIN;

INSERT INTO brands
(
vehicle_category_id,
name,
slug,
is_popular,
sort_order,
is_active
)
VALUES

(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Iveco',
'iveco',
TRUE,
1,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Mercedes-Benz',
'mercedes-benz',
TRUE,
2,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Renault Trucks',
'renault-trucks',
TRUE,
3,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Shacman',
'shacman',
TRUE,
4,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'SNVI',
'snvi',
TRUE,
5,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Volvo Trucks',
'volvo-trucks',
TRUE,
6,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Berliet',
'berliet',
TRUE,
7,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'FAW',
'faw',
TRUE,
8,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Ford Trucks',
'ford-trucks',
TRUE,
9,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Hyundai',
'hyundai',
TRUE,
10,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Isuzu',
'isuzu',
TRUE,
11,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'KamAZ',
'kamaz',
TRUE,
12,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'MAN',
'man',
TRUE,
13,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Scania',
'scania',
TRUE,
14,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Sinotruk',
'sinotruk',
TRUE,
15,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Astra',
'astra',
TRUE,
16,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'DAF',
'daf',
TRUE,
17,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Dongfeng',
'dongfeng',
TRUE,
18,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Foton',
'foton',
TRUE,
19,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Hino',
'hino',
TRUE,
20,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'JAC',
'jac',
TRUE,
21,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Tata Daewoo',
'tata-daewoo',
TRUE,
22,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'UD Trucks',
'ud-trucks',
TRUE,
23,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'TIRSAM',
'tirsam',
TRUE,
24,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'International',
'international',
TRUE,
25,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Mack',
'mack',
TRUE,
26,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Tatra',
'tatra',
TRUE,
27,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'Ural',
'ural',
TRUE,
28,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='heavy-trucks'
),
'ZIL',
'zil',
TRUE,
29,
TRUE
)

;


COMMIT;
