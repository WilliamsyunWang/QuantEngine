CREATE TABLE quant_engine.strategy_config
(
    strategy_id   VARCHAR(20) PRIMARY KEY,
    strategy_name VARCHAR(50) NOT NULL,
    params        JSON        NOT NULL COMMENT '策略参数JSON存储',
    status        TINYINT DEFAULT 1 COMMENT '0-停用 1-启用',
    create_time   DATETIME    NOT NULL,
    last_run_time DATETIME
);