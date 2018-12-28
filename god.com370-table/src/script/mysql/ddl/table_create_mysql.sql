create table TB_GOD_TABLE (
    TABLE_ID varchar(20) not null comment '테이블ID',

    TABLE_NM varchar(4000) comment '테이블명',
    COLUMN_NM varchar(4000) comment '컬럼명',
    COLUMN_NM2 varchar(4000) comment '컬럼명2',
    COLUMN_NM3 varchar(4000) comment '컬럼명3',
    COLUMN_NM4 varchar(4000) comment '컬럼명4',
    COLUMN_NM5 varchar(4000) comment '컬럼명5',
    COLUMN_NM6 varchar(4000) comment '컬럼명6',
    COLUMN_NM7 varchar(4000) comment '컬럼명7',
    COLUMN_NM8 varchar(4000) comment '컬럼명8',
    COLUMN_NM9 varchar(4000) comment '컬럼명9',
    COLUMN_NM10 varchar(4000) comment '컬럼명10',
    COLUMN_NM11 varchar(4000) comment '컬럼명11',
    COLUMN_NM12 varchar(4000) comment '컬럼명12',
    COLUMN_NM13 varchar(4000) comment '컬럼명13',
    COLUMN_NM14 varchar(4000) comment '컬럼명14',
    COLUMN_NM15 varchar(4000) comment '컬럼명15',
    COLUMN_NM16 varchar(4000) comment '컬럼명16',
    COLUMN_NM17 varchar(4000) comment '컬럼명17',
    COLUMN_NM18 varchar(4000) comment '컬럼명18',
    COLUMN_NM19 varchar(4000) comment '컬럼명19',
    COLUMN_NM20 varchar(4000) comment '컬럼명20',
    COLUMN_NM21 varchar(4000) comment '컬럼명21',
    COLUMN_NM22 varchar(4000) comment '컬럼명22',
    COLUMN_NM23 varchar(4000) comment '컬럼명23',
    COLUMN_NM24 varchar(4000) comment '컬럼명24',
    COLUMN_NM25 varchar(4000) comment '컬럼명25',
    COLUMN_NM26 varchar(4000) comment '컬럼명26',
    COLUMN_NM27 varchar(4000) comment '컬럼명27',
    COLUMN_NM28 varchar(4000) comment '컬럼명28',
    COLUMN_NM29 varchar(4000) comment '컬럼명29',
    COLUMN_NM30 varchar(4000) comment '컬럼명30',

    USE_AT char(1) default 'Y' comment '사용여부',
    FRST_REGIST_PNTTM datetime default current_timestamp,
    FRST_REGISTER_ID varchar(20),
    LAST_UPDT_PNTTM datetime,
    LAST_UPDUSR_ID varchar(20),

    primary key (TABLE_ID)
)
COMMENT='테이블'
;

create unique index TB_GOD_TABLE_PK on TB_GOD_TABLE (
    TABLE_ID
)
;
