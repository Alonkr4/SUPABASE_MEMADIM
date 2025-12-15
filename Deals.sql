CREATE SCHEMA IF NOT EXISTS ak_analytics;

CREATE TABLE IF NOT EXISTS ak_analytics.deals (
    deal_id                 TEXT PRIMARY KEY,

    status                  INTEGER,
    fat_gap                 NUMERIC,
    protein_gap             NUMERIC,
    carb_gap                NUMERIC,
    log_modifiedon          DATE,
    cons_opinion            INTEGER,
    last_month_form         TIMESTAMPTZ,
    date_request_cancel     TIMESTAMPTZ,
    date_exit_option_request DATE,
    form_reference          DATE,
    change_dir              INTEGER,
    program_start           DATE,
    goal                    INTEGER,
    initial_weight          NUMERIC,
    age                     NUMERIC,
    gender                  INTEGER,
    program_end             DATE,
    rep_closed              TEXT,
    full_name               TEXT,
    modifiedon              TIMESTAMPTZ,
    recent_weight           NUMERIC,
    client_temp             INTEGER,
    why_cancel              TEXT,
    niro_friend             INTEGER,
    last_weight_date        TIMESTAMPTZ,
    is_cotton               INTEGER,
    date_change_dir         DATE,
    froze                   DATE,
    defrost                 DATE,

    synced_at               TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS deals_modifiedon_idx
    ON ak_analytics.deals (modifiedon);

CREATE INDEX IF NOT EXISTS deals_status_idx
    ON ak_analytics.deals (status);
