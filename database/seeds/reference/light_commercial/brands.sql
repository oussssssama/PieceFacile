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
WHERE slug='light-commercial-vehicles'
),
'Dacia',
'dacia',
TRUE,
1,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Fiat',
'fiat',
TRUE,
2,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Hyundai',
'hyundai',
TRUE,
3,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Kia',
'kia',
TRUE,
4,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Peugeot',
'peugeot',
TRUE,
5,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Renault',
'renault',
TRUE,
6,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Toyota',
'toyota',
TRUE,
7,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Citroën',
'citroen',
TRUE,
8,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'DFSK',
'dfsk',
TRUE,
9,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Ford',
'ford',
TRUE,
10,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
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
WHERE slug='light-commercial-vehicles'
),
'Iveco',
'iveco',
TRUE,
12,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'JAC',
'jac',
TRUE,
13,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Mercedes-Benz',
'mercedes-benz',
TRUE,
14,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Mitsubishi',
'mitsubishi',
TRUE,
15,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Nissan',
'nissan',
TRUE,
16,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Volkswagen',
'volkswagen',
TRUE,
17,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Foton',
'foton',
TRUE,
18,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'Great Wall',
'great-wall',
TRUE,
19,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='light-commercial-vehicles'
),
'JMC',
'jmc',
TRUE,
20,
TRUE
)

;


COMMIT;
