CREATE TABLE IF NOT EXISTS ak_analytics.chat_activity_state_all_time (
    deal_id                     TEXT PRIMARY KEY,
    total_sessions              INTEGER DEFAULT 0,
    client_started_sessions     INTEGER DEFAULT 0,
    total_messages              INTEGER DEFAULT 0,
    last_message_at             TIMESTAMPTZ,
    updated_at                  TIMESTAMPTZ DEFAULT NOW()
);

