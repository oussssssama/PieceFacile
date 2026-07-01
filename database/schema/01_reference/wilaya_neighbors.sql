CREATE TABLE wilaya_neighbors (
id BIGSERIAL PRIMARY KEY,


wilaya_id BIGINT NOT NULL
    REFERENCES wilayas(id)
    ON DELETE CASCADE,

neighbor_wilaya_id BIGINT NOT NULL
    REFERENCES wilayas(id)
    ON DELETE CASCADE,

UNIQUE(wilaya_id, neighbor_wilaya_id)


);
