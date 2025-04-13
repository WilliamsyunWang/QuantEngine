CREATE TABLE quant_engine.funda_main (
  report_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  security_id VARCHAR(10) NOT NULL,
  report_date DATE NOT NULL COMMENT '财报日期',
  report_type ENUM('Q1','Q2','Q3','Annual') NOT NULL,
  total_assets DECIMAL(20,2) COMMENT '总资产',
  total_liab DECIMAL(20,2) COMMENT '总负债',
  revenue DECIMAL(20,2) COMMENT '营业收入',
  net_profit DECIMAL(20,2) COMMENT '净利润',
  eps DECIMAL(8,4) COMMENT '每股收益',
  roe FLOAT COMMENT '净资产收益率',
  gross_margin FLOAT COMMENT '毛利率',
  update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY idx_security_report (security_id, report_date),
  FOREIGN KEY (security_id) REFERENCES security_base(security_id)
);