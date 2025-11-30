create table if not exists ak_analytics.app_monthly_surveys (
    -- מפתח פנימי לטבלה
    survey_id      bigserial primary key,

    -- זיהוי העסקה/לקוח (מהשדה "משוייך לעסקה" בפיירברי)
    deal_id        text not null,

    -- מטא־דאטה בסיסי
    createdon      timestamptz,
    modifiedon     timestamptz,
    full_name      text,

    -- שדות מקור מהסקרים (כמו באקסל)
    train_progress   numeric(5,2),   -- pcftrainprogress
    progress_sat     numeric(5,2),   -- pcfsystemfield119
    progress_sat_2   numeric(5,2),   -- pcfsystemfield103
    progress_sat_3   numeric(5,2),   -- pcfrogresssatiss (גם אם הגיע כטקסט, נשמור מספר)

    response_sat     numeric(5,2),   -- pcfsystemfield108
    response_sat_2   numeric(5,2),   -- pcfnswersatis

    menu_adherence   numeric(5,2),   -- pcfFmenu

    app_rate_1       numeric(5,2),   -- pcfapprating
    app_rate_2       text,           -- pcfsystemfield104 (טקסט חופשי)

    work_per_week    numeric(5,2),   -- pcfworkoutave

    want_clinic      text,           -- pcfsystemfield110
    clinic_status    text,           -- clinic_status (picklist)

    -- שדות קנוניים מאוחדים
    progress_sat_score numeric(5,2), -- ניקח את הערך הראשון שאינו NULL מתוך
                                     -- progress_sat / progress_sat_2 / progress_sat_3
    service_rating     numeric(5,2), -- מתוך response_sat / response_sat_2
    app_rating         numeric(5,2), -- מתוך app_rate_1 / app_rate_2 (אם נפרש מספר מטקסט)

    -- חותמת סינכרון (מתי עדכנו את הרשומה מסקר בפיירברי)
    synced_at       timestamptz default now()
);

-- אינדקסים שימושיים לשאילתות
create index if not exists app_monthly_surveys_deal_id_idx
    on ak_analytics.app_monthly_surveys (deal_id);

create index if not exists app_monthly_surveys_createdon_idx
    on ak_analytics.app_monthly_surveys (createdon);
