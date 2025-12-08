CREATE TABLE IF NOT EXISTS ak_analytics.customer_service (
    issue_id            BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,  -- internal issue ID
    deal_id             TEXT NOT NULL,                                    -- Fireberry deal ID
    full_name           TEXT,                                             -- client full name
    createdon           TIMESTAMPTZ,                                      -- created at

    service_type        TEXT,                                             -- סוג קריאת שירות
    retention_status    TEXT,                                             -- סטטוס שימור
    date_completed      TIMESTAMPTZ,                                      -- תאריך הושלם
    cancel_reason       TEXT,                                             -- סיבת ביטול
    new_end_date        DATE,                                             -- תאריך סיום חדש
    retention_reason    TEXT,                                             -- איך נשאר במסלול הקיים
    retention_method    TEXT,                                             -- דרך טיפול שימור
    cancel_details      TEXT,                                             -- למה רצה לבטל?
    call_summary        TEXT,                                             -- סיכום השיחה
    price_change_reason TEXT,                                             -- למה שינוי מחיר
    last_chance_status  TEXT,                                             -- סטטוס הזדמנות אחרונה
    billing_status      TEXT,                                             -- סטטוס גבייה
    option_comments     TEXT,                                             -- הערות נוספות

    modifiedon          TIMESTAMPTZ,                                      -- updated at
    synced_at           TIMESTAMPTZ DEFAULT NOW()                         -- sync timestamp
);


 CREATE INDEX IF NOT EXISTS customer_service_deal_id_idx ON ak_analytics.customer_service USING btree (deal_id) TABLESPACE pg_default;

 CREATE INDEX IF NOT EXISTS customer_service_createdon_idx ON ak_analytics.customer_service USING btree (createdon) TABLESPACE pg_default;
