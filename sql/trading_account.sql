CREATE TABLE quant_engine.trading_account
(
    account_id     VARCHAR(20) PRIMARY KEY,
    capital        DECIMAL(20, 2) UNSIGNED NOT NULL COMMENT '总资金',
    available      DECIMAL(20, 2) UNSIGNED COMMENT '可用资金',
    frozen         DECIMAL(20, 2) UNSIGNED DEFAULT 0 COMMENT '冻结资金',
    leverage_ratio FLOAT                   DEFAULT 1 COMMENT '杠杆比例',
    risk_level     TINYINT                 DEFAULT 2 COMMENT '风险等级',
    update_time    TIMESTAMP               DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);