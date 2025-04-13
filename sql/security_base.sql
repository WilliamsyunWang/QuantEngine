CREATE TABLE quant_engine.security_base
(
    security_id  VARCHAR(10) PRIMARY KEY COMMENT '证券代码',
    name         VARCHAR(50) NOT NULL COMMENT '证券名称',
    market       ENUM('SH','SZ','HK','US') NOT NULL COMMENT '所属市场',
    industry     VARCHAR(30) COMMENT '所属行业',
    listing_date DATE        NOT NULL COMMENT '上市日期',
    total_shares BIGINT UNSIGNED COMMENT '总股本(股)',
    float_shares BIGINT UNSIGNED COMMENT '流通股本(股)',
    update_time  TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;