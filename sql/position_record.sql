CREATE TABLE quant_engine.position_record
(
    position_id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    account_id  VARCHAR(20)    NOT NULL,
    security_id VARCHAR(10)    NOT NULL,
    volume      INT UNSIGNED NOT NULL COMMENT '持仓数量',
    cost_price  DECIMAL(12, 4) NOT NULL COMMENT '持仓成本',
    open_time   DATETIME       NOT NULL,
    close_time  DATETIME,
    FOREIGN KEY (account_id) REFERENCES trading_account (account_id),
    INDEX       idx_account_security (account_id, security_id)
);