CREATE TABLE quant_engine.daily_bar
(
    trade_date    DATE        NOT NULL,
    security_id   VARCHAR(10) NOT NULL,
    pre_close     DECIMAL(12, 4) UNSIGNED COMMENT '前收盘价',
    open          DECIMAL(12, 4) UNSIGNED,
    high          DECIMAL(12, 4) UNSIGNED,
    low           DECIMAL(12, 4) UNSIGNED,
    close         DECIMAL(12, 4) UNSIGNED,
    volume        BIGINT UNSIGNED,
    amount        DECIMAL(20, 4),
    turnover_rate FLOAT COMMENT '换手率',
    pe_ratio      FLOAT COMMENT '市盈率',
    pb_ratio      FLOAT COMMENT '市净率',
    PRIMARY KEY (security_id, trade_date)
) ENGINE = InnoDB;