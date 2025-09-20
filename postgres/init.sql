CREATE TABLE IF NOT EXISTS movies (
    tmdb_id INTEGER PRIMARY KEY,   -- prevents duplicates across reruns
    language VARCHAR(10),
    original_title TEXT,
    release_date DATE,
    title TEXT,
    overview TEXT,
    popularity NUMERIC,
    adult BOOLEAN,
    fetched_at TIMESTAMP DEFAULT NOW()
);

-- Helpful index for daily/date-range filtering in dashboards
CREATE INDEX IF NOT EXISTS idx_movies_release_date ON movies (release_date);
