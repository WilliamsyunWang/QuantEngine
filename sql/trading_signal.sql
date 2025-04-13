CREATE TABLE quant_engine.trading_signal
(
    signal_id   BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    strategy_id VARCHAR(20) NOT NULL,
    security_id VARCHAR(10) NOT NULL,
    signal_time DATETIME    NOT NULL,
    direction   ENUM('BUY','SELL','HOLD') NOT NULL,
    price       DECIMAL(12, 4) COMMENT '建议价格',
    confidence  FLOAT COMMENT '信号置信度',
    INDEX       idx_strategy_time (strategy_id, signal_time),
    FOREIGN KEY (security_id) REFERENCES security_base (security_id)
);