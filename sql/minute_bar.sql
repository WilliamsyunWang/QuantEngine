CREATE TABLE quant_engine.minute_bar
(
    id          BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    security_id VARCHAR(10) NOT NULL,
    trade_time  DATETIME    NOT NULL COMMENT '精确到分钟',
    open        DECIMAL(12, 4) UNSIGNED COMMENT '开盘价',
    high        DECIMAL(12, 4) UNSIGNED COMMENT '最高价',
    low         DECIMAL(12, 4) UNSIGNED COMMENT '最低价',
    close       DECIMAL(12, 4) UNSIGNED COMMENT '收盘价',
    volume      INT UNSIGNED COMMENT '成交量(手)',
    amount      DECIMAL(20, 4) UNSIGNED COMMENT '成交额(元)',
    UNIQUE KEY idx_security_time (security_id, trade_time),
    INDEX       idx_time (trade_time)
);