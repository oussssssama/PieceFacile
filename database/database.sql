-- =============================================================================
-- PieceFacile Database
-- Master Database Script
-- =============================================================================

\i init/01_extensions.sql
\i init/02_types.sql
\i init/03_functions.sql
\i init/04_triggers.sql

-- Reference Schema

\i schema/01_reference/vehicle_categories.sql
\i schema/01_reference/vehicle_brands.sql
\i schema/01_reference/vehicle_families.sql
\i schema/01_reference/vehicle_models.sql
\i schema/01_reference/vehicle_generations.sql
\i schema/01_reference/vehicle_engines.sql

\i schema/01_reference/part_categories.sql
\i schema/01_reference/parts.sql
\i schema/01_reference/part_aliases.sql

-- Authentication

\i schema/02_auth/profiles.sql

-- Marketplace

\i schema/03_marketplace/shops.sql
\i schema/03_marketplace/requests.sql
\i schema/03_marketplace/request_items.sql
\i schema/03_marketplace/offers.sql
\i schema/03_marketplace/offer_items.sql
\i schema/03_marketplace/deals.sql
\i schema/03_marketplace/ratings.sql

-- Communication

\i schema/04_communication/conversations.sql
\i schema/04_communication/messages.sql
\i schema/04_communication/notifications.sql
