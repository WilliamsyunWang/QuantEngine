CREATE TABLE quant_engine.exchange_info
(
    exchange_code VARCHAR(4) PRIMARY KEY COMMENT '交易所代码',
    exchange_name VARCHAR(20) NOT NULL COMMENT '交易所名称',
    timezone      VARCHAR(20) NOT NULL COMMENT '时区',
    trading_hours TEXT COMMENT '交易时段JSON存储'
);