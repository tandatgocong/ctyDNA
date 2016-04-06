USE MASTER
GO

IF EXISTS( SELECT * FROM  sys.databases WHERE NAME = 'DH_CODONG')
   DROP DATABASE DH_CODONG
USE MASTER
GO
CREATE DATABASE DH_CODONG
GO	

USE DH_CODONG
GO

CREATE TABLE [dbo].[SYS_USERS](
	[USERNAME] [varchar](20) NOT NULL,
	[PASSWORD] [varchar](50) NULL
)
GO

CREATE TABLE DSCODONG_THAMDU
(
	STT		INT NOT NULL,
	STTCD	INT NOT NULL,
	MACD	VARCHAR(20) PRIMARY KEY NOT NULL,
	TENCD	NVARCHAR(MAX),
	CMND	NVARCHAR(MAX),
	NGAYCAP	DATE,
	NOICAP	NVARCHAR(MAX),
	DIACHI	NVARCHAR(MAX),
	CDGD	INT,
	PHONGTOA	INT,
	TONGCD	INT
)
GO

CREATE TABLE DSCODONG
(
	STT		INT NOT NULL,
	STTCD	INT NOT NULL,
	MACD	VARCHAR(20) PRIMARY KEY NOT NULL,
	TENCD	NVARCHAR(MAX),
	CMND	NVARCHAR(MAX),
	NGAYCAP	DATE,
	NOICAP	NVARCHAR(MAX),
	DIACHI	NVARCHAR(MAX),
	CDGD	INT,
	PHONGTOA	INT,
	TONGCD	INT
)
GO

CREATE TABLE KIEMPHIEU
(
	ID INT IDENTITY(1,1),
	LANBQ INT,
	NGAYBQ DATETIME,
	LOAIBQ BIT,
	STTCD	INT NOT NULL,
	MACD	VARCHAR(20) NOT NULL,
	TONGCD	INT,
	CREATEBY VARCHAR(20),
	CREATEDATE DATETIME,
	CONSTRAINT FK_KIEMPHIEU PRIMARY KEY (LANBQ,MACD,NGAYBQ)
)
GO

CREATE TABLE BIEUQUYET
(
	ID INT IDENTITY(1,1),
	LANBQ INT,
	NGAYBQ DATETIME,
	LOAIBQ BIT,
	STTCD	INT NOT NULL,
	MACD	VARCHAR(20) NOT NULL,
	TONGCD	INT,
	C1		INT,
	C2		INT,
	C3		INT,
	CREATEBY VARCHAR(20),
	CREATEDATE DATETIME,
	CONSTRAINT FK_BIEUQUYET PRIMARY KEY (LANBQ,MACD,NGAYBQ)
)
GO

ALTER  PROC p_BIEUQUYET
	@LAN VARCHAR(50),
	@NGAY VARCHAR(50)
as

DECLARE @SUMCD FLOAT
SELECT @SUMCD= SUM(TONGCD) FROM DSCODONG_THAMDU

SELECT ISNULL(COUNT(CASE WHEN C1=1 THEN 1 ELSE NULL END),0) AS _1C1,ISNULL(SUM(CASE WHEN C1=1 THEN TONGCD ELSE NULL END),0) AS _1S1,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C1=1 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _1T1,
	   ISNULL(COUNT(CASE WHEN C1=2 THEN 1 ELSE NULL END),0) AS _1C2,ISNULL(SUM(CASE WHEN C1=2 THEN TONGCD ELSE NULL END),0) AS _1S2,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C1=2 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _1T2,
	   ISNULL(COUNT(CASE WHEN C1=3 THEN 1 ELSE NULL END),0) AS _1C3,ISNULL(SUM(CASE WHEN C1=3 THEN TONGCD ELSE NULL END),0) AS _1S3,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C1=3 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _1T3,
	   ISNULL(COUNT(CASE WHEN C2=1 THEN 1 ELSE NULL END),0) AS _2C1,ISNULL(SUM(CASE WHEN C2=1 THEN TONGCD ELSE NULL END),0) AS _2S1,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C2=1 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _2T1,
	   ISNULL(COUNT(CASE WHEN C2=2 THEN 1 ELSE NULL END),0) AS _2C2,ISNULL(SUM(CASE WHEN C2=2 THEN TONGCD ELSE NULL END),0) AS _2S2,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C2=2 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _2T2,
	   ISNULL(COUNT(CASE WHEN C2=3 THEN 1 ELSE NULL END),0) AS _2C3,ISNULL(SUM(CASE WHEN C2=3 THEN TONGCD ELSE NULL END),0) AS _2S3,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C2=3 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _2T3,
	   ISNULL(COUNT(CASE WHEN C3=1 THEN 1 ELSE NULL END),0) AS _3C1,ISNULL(SUM(CASE WHEN C3=1 THEN TONGCD ELSE NULL END),0) AS _3S1,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C3=1 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _3T1,
	   ISNULL(COUNT(CASE WHEN C3=2 THEN 1 ELSE NULL END),0) AS _3C2,ISNULL(SUM(CASE WHEN C3=2 THEN TONGCD ELSE NULL END),0) AS _3S2,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C3=2 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _3T2,
	   ISNULL(COUNT(CASE WHEN C3=3 THEN 1 ELSE NULL END),0) AS _3C3,ISNULL(SUM(CASE WHEN C3=3 THEN TONGCD ELSE NULL END),0) AS _3S3,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C3=3 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _3T3,
	   ISNULL(COUNT(CASE WHEN C4=1 THEN 1 ELSE NULL END),0) AS _4C1,ISNULL(SUM(CASE WHEN C4=1 THEN TONGCD ELSE NULL END),0) AS _4S1,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C4=1 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _4T1,
	   ISNULL(COUNT(CASE WHEN C4=2 THEN 1 ELSE NULL END),0) AS _4C2,ISNULL(SUM(CASE WHEN C4=2 THEN TONGCD ELSE NULL END),0) AS _4S2,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C4=2 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _4T2,
	   ISNULL(COUNT(CASE WHEN C4=3 THEN 1 ELSE NULL END),0) AS _4C3,ISNULL(SUM(CASE WHEN C4=3 THEN TONGCD ELSE NULL END),0) AS _4S3,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C4=3 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _4T3,
	   ISNULL(COUNT(CASE WHEN C5=1 THEN 1 ELSE NULL END),0) AS _5C1,ISNULL(SUM(CASE WHEN C5=1 THEN TONGCD ELSE NULL END),0) AS _5S1,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C5=1 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _5T1,
	   ISNULL(COUNT(CASE WHEN C5=2 THEN 1 ELSE NULL END),0) AS _5C2,ISNULL(SUM(CASE WHEN C5=2 THEN TONGCD ELSE NULL END),0) AS _5S2,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C5=2 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _5T2,
	   ISNULL(COUNT(CASE WHEN C5=3 THEN 1 ELSE NULL END),0) AS _5C3,ISNULL(SUM(CASE WHEN C5=3 THEN TONGCD ELSE NULL END),0) AS _5S3,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C5=3 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _5T3,
	   ISNULL(COUNT(CASE WHEN C6=1 THEN 1 ELSE NULL END),0) AS _6C1,ISNULL(SUM(CASE WHEN C6=1 THEN TONGCD ELSE NULL END),0) AS _6S1,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C6=1 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _6T1,
	   ISNULL(COUNT(CASE WHEN C6=2 THEN 1 ELSE NULL END),0) AS _6C2,ISNULL(SUM(CASE WHEN C6=2 THEN TONGCD ELSE NULL END),0) AS _6S2,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C6=2 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _6T2,
	   ISNULL(COUNT(CASE WHEN C6=3 THEN 1 ELSE NULL END),0) AS _6C3,ISNULL(SUM(CASE WHEN C6=3 THEN TONGCD ELSE NULL END),0) AS _6S3,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C6=3 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _6T3,
	   ISNULL(COUNT(CASE WHEN C7=1 THEN 1 ELSE NULL END),0) AS _7C1,ISNULL(SUM(CASE WHEN C7=1 THEN TONGCD ELSE NULL END),0) AS _7S1,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C7=1 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _7T1,
	   ISNULL(COUNT(CASE WHEN C7=2 THEN 1 ELSE NULL END),0) AS _7C2,ISNULL(SUM(CASE WHEN C7=2 THEN TONGCD ELSE NULL END),0) AS _7S2,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C7=2 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _7T2,
	   ISNULL(COUNT(CASE WHEN C7=3 THEN 1 ELSE NULL END),0) AS _7C3,ISNULL(SUM(CASE WHEN C7=3 THEN TONGCD ELSE NULL END),0) AS _7S3,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C7=3 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _7T3,
	   ISNULL(COUNT(CASE WHEN C8=1 THEN 1 ELSE NULL END),0) AS _8C1,ISNULL(SUM(CASE WHEN C8=1 THEN TONGCD ELSE NULL END),0) AS _8S1,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C8=1 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _8T1,
	   ISNULL(COUNT(CASE WHEN C8=2 THEN 1 ELSE NULL END),0) AS _8C2,ISNULL(SUM(CASE WHEN C8=2 THEN TONGCD ELSE NULL END),0) AS _8S2,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C8=2 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _8T2,
	   ISNULL(COUNT(CASE WHEN C8=3 THEN 1 ELSE NULL END),0) AS _8C3,ISNULL(SUM(CASE WHEN C8=3 THEN TONGCD ELSE NULL END),0) AS _8S3,CONVERT(varchar(50),ISNULL(100.0*ROUND((SUM(CASE WHEN C8=3 THEN TONGCD ELSE NULL END)/@SUMCD),4),0))+'%' as _8T3
FROM BIEUQUYET
WHERE  LANBQ= @LAN AND CONVERT(VARCHAR(50),NGAYBQ,103)=@NGAY


CREATE TABLE BAUCU
(
	ID INT IDENTITY(1,1) PRIMARY KEY,
	LANBC INT,
	NGAYBC DATETIME,
	STT	INT,
	TENBC	NVARCHAR(50),
	SLDY	INT,
	SLKDY	INT,
	CREATEBY VARCHAR(20),
	CREATEDATE DATETIME
)



