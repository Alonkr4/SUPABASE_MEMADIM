CREATE TABLE IF NOT EXISTS ak_analytics.cons_opinion (
    opinion_id  BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    deal_id     UUID                NOT NULL,
    createdon   TIMESTAMPTZ,
    opinion     TEXT,
    full_name   TEXT,
    synced_at   TIMESTAMPTZ
);

-- אינדקסים שימושיים
CREATE INDEX IF NOT EXISTS idx_cons_opinion_deal_id
    ON ak_analytics.cons_opinion (deal_id);

CREATE INDEX IF NOT EXISTS idx_cons_opinion_createdon
    ON ak_analytics.cons_opinion (createdon);
