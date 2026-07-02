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
WHERE slug='passenger-cars'
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
WHERE slug='passenger-cars'
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
WHERE slug='passenger-cars'
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
WHERE slug='passenger-cars'
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
WHERE slug='passenger-cars'
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
WHERE slug='passenger-cars'
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
WHERE slug='passenger-cars'
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
WHERE slug='passenger-cars'
),
'Volkswagen',
'volkswagen',
TRUE,
8,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'BMW',
'bmw',
TRUE,
9,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Chery',
'chery',
TRUE,
10,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Chevrolet',
'chevrolet',
TRUE,
11,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Citroën',
'citroen',
TRUE,
12,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Daewoo',
'daewoo',
TRUE,
13,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Ford',
'ford',
TRUE,
14,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Geely',
'geely',
TRUE,
15,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Mercedes-Benz',
'mercedes-benz',
TRUE,
16,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Mitsubishi',
'mitsubishi',
TRUE,
17,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Nissan',
'nissan',
TRUE,
18,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Opel',
'opel',
TRUE,
19,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Seat',
'seat',
TRUE,
20,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Skoda',
'skoda',
TRUE,
21,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Suzuki',
'suzuki',
TRUE,
22,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Audi',
'audi',
TRUE,
23,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'BAIC',
'baic',
TRUE,
24,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Haval',
'haval',
TRUE,
25,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Honda',
'honda',
TRUE,
26,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Lada',
'lada',
TRUE,
27,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Iran Khodro',
'iran-khodro',
TRUE,
28,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Jeep',
'jeep',
TRUE,
29,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Land Rover',
'land-rover',
TRUE,
30,
TRUE
)
,
(
(
SELECT id
FROM vehicle_categories
WHERE slug='passenger-cars'
),
'Mazda',
'mazda',
TRUE,
31,
TRUE
)

;


COMMIT;
