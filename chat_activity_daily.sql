CREATE TABLE IF NOT EXISTS ak_analytics.chat_activity_daily (
    deal_id                     TEXT NOT NULL,
    activity_date               DATE NOT NULL,
    total_sessions_day          INTEGER DEFAULT 0,
    client_started_sessions_day INTEGER DEFAULT 0,
    total_messages_day          INTEGER DEFAULT 0,
    updated_at                  TIMESTAMPTZ DEFAULT NOW(),
    
    PRIMARY KEY (deal_id, activity_date)
);

CREATE INDEX IF NOT EXISTS idx_cad_date 
    ON ak_analytics.chat_activity_daily (activity_date);
