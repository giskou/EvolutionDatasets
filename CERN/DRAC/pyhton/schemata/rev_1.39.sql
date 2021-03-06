-----------------------------
-- file : Create JobDB Tables
-- date : 26/09/03
-- Author: Vincent Garonne
-- Modified: A.T. 
-----------------------------

--------------------------------------------------------------------------------
-- DROP DATABASE IF EXISTS JobDB;
--------------------------------------------------------------------------------
CREATE DATABASE JobDB;
-- mv /var/lib/mysql/JobDB /var/lib/mysql/test
-- source /lhcb/users/garonne/Dirac.2.0/scripts/DB.rq
--------------------------------------------------------------------------------
use mysql;
delete from user where user='Dirac';

--
-- Must set passwords for all these users by replacing "must_be_set".
--

-- INSERT INTO user (Host,User,Password) VALUES('%','Dirac',PASSWORD ('must_be_set'));
-- INSERT INTO user (Host,User,Password) VALUES('localhost','Dirac',PASSWORD ('must_be_set'));
-- INSERT INTO user (Host,User,Password) VALUES('lxgate14.cern.ch','Dirac',PASSWORD ('must_be_set'));
-- GRANT SELECT,INSERT,LOCK TABLES,UPDATE,DELETE,CREATE,DROP,ALTER ON dirac.* TO Dirac IDENTIFIED BY 'must_be_set';
GRANT SELECT,INSERT,LOCK TABLES,UPDATE,DELETE,CREATE,DROP,ALTER ON JobDB.* TO Dirac@localhost IDENTIFIED BY 'must_be_set';
-- GRANT SELECT,INSERT,LOCK TABLES,UPDATE,DELETE,CREATE,DROP,ALTER ON test.* TO Dirac IDENTIFIED BY 'must_be_set';
-- 

FLUSH PRIVILEGES;

------------------------------------------------------------------------------- 
USE JobDB;
-- USE test;
-- USE oxdevel;

--------------------------------------------------------------------------------
drop table if exists Job;
CREATE TABLE Job (
    JobID integer not null auto_increment,
    JDL BLOB,
    JobType varchar(100)  NOT NULL default 'user',
    JobMode varchar(32)  NOT NULL default 'user',
    Type  varchar(32) NOT NULL default 'Normal',
    Site varchar(100),
    Owner varchar(100),
    OwnerDN varchar(255),
    OwnerGroup varchar(127) NOT NULL default '/lhcb',
    SubmissionDate date,
    SubmissionTime time,
    ProductionId     char(8),
    JobName          varchar(128),
    LastUpdate       TIMESTAMP(14),
    InputSandBox  enum ('True', 'False') not null,
    OutputSandbox enum ('True', 'False') not null,
    Status varchar(32) NOT NULL default 'received',
    MinorStatus varchar(128),
    ApplicationStatus varchar(128),
    Priority int(11),
    DeletedFlag  int(4) not null,
    KilledFlag int(4) not null,
    FailedFlag int(4) not null,
    RetrievedFlag int(4) not null,
    AccountedFlag int(4) not null,
    RescheduledFlag int(4) not null,
    RescheduleCounter int(8) not null,
    PRIMARY KEY (JobID)
);
--------------------------------------------------------------------------------

drop table if exists InputData;
CREATE TABLE InputData (
    JobID integer not null,
    file varchar(255),
    PRIMARY KEY (JobID, file),
    FOREIGN KEY(JobID) REFERENCES Job(JobID)
);

--------------------------------------------------------------------------------

drop table if exists OutputData;
CREATE TABLE OutputData (
    JobID integer not null,
    file varchar(255),
    PRIMARY KEY (JobID, file),
    FOREIGN KEY(JobID) REFERENCES Job(JobID)
);

--------------------------------------------------------------------------------

drop table if exists TaskQueues;
CREATE TABLE TaskQueues (
    TaskQueueId integer not null auto_increment,
    name        varchar(100),  
    Private     enum ('True', 'False') not null,
    Priority    integer,
    Requirements BLOB,
    PRIMARY KEY (TaskQueueId)
);

--------------------------------------------------------------------------------

drop table if exists Optimizer;
CREATE TABLE  Optimizer(
    OptimId  integer not null auto_increment,
    name     varchar(100),
    Priority integer,
    PRIMARY KEY (OptimId)
);

--------------------------------------------------------------------------------
drop table if exists OptToQueue;
CREATE TABLE OptToQueue (
    OptimId     integer not null,
    TaskQueueId integer not null,
    PRIMARY KEY (OptimId, TaskQueueId),
    FOREIGN KEY(OptimId) REFERENCES Optimizer(OptimId),
    FOREIGN KEY(TaskQueueId) REFERENCES TaskQueues(TaskQueueId)
);

--------------------------------------------------------------------------------
drop table if exists TaskQueue;
CREATE TABLE TaskQueue (
    TaskQueueId integer not null,
    JobID       integer not null,
    Rank        integer,
    PRIMARY KEY (JobID, TaskQueueId),
    FOREIGN KEY(JobID) REFERENCES Job(JobID),
    FOREIGN KEY(TaskQueueId) REFERENCES TaskQueues(TaskQueueId)
);

--------------------------------------------------------------------------------
drop table if exists JobParameters;
CREATE TABLE JobParameters (
    JobID integer not null,
    Name varchar(100) not null,
    Value BLOB  not null,
    FOREIGN KEY(JobID) REFERENCES Job(JobID),
    PRIMARY KEY(JobID, Name)
);

--------------------------------------------------------------------------------
drop table if exists LogInfos;
CREATE TABLE LogInfos (
    JobID integer not null,
    Event varchar(100) not null,
    Date Date,
    Time time,
    Source varchar(100) not null default 'Unknown',
    FOREIGN KEY(JobID) REFERENCES Job(JobID)
);

--------------------------------------------------------------------------------

DROP TABLE IF EXISTS ISandbox;
CREATE TABLE ISandbox (
    JobID  integer not null,
    File   varchar(100) NOT NULL,
    Value  LONGBLOB NOT NULL,
    Type  enum  ('ascii', 'binary') not null,
    PRIMARY KEY (JobID, File)
);
--------------------------------------------------------------------------------

DROP TABLE IF EXISTS OSandbox;
CREATE TABLE OSandbox (
    JobID  integer not null,
    File   varchar(100) NOT NULL,
    Value  LONGBLOB NOT NULL,
    Type  enum  ('ascii', 'binary') not null,
    PRIMARY KEY (JobID, File)
);
--------------------------------------------------------------------------------

DROP TABLE IF EXISTS SandboxReady;
CREATE TABLE SandboxReady (
    JobID  integer not null,
    RetrievedOutput enum ('True', 'False') not null,
    OutputDate Date,
    OutputTime time,
    PRIMARY KEY (JobID)
);

--------------------------------------------------------------------------------

DROP TABLE IF EXISTS CommonMask;
CREATE TABLE CommonMask (
    MaskId integer not null auto_increment primary key,
    Mask BLOB,
    Date Date,
    Time time
);
INSERT INTO  CommonMask (Mask, Date, Time) VALUES ('[Requirements = true;]',CURDATE(),CURTIME());

--------------------------------------------------------------------------------

DROP TABLE IF EXISTS Tickets;
CREATE TABLE Tickets (
  JobID int(11) NOT NULL default '0',
  Ticket blob,
  ExpireDate datetime,
  OwnerDN varchar(255) NOT NULL default 'Unknown',
  OwnerGroup varchar(127) NOT NULL default '/lhcb',
  PRIMARY KEY  (OwnerDN)
);

DROP TABLE IF EXISTS LCGPilots;
CREATE TABLE LCGPilots (

  LCGJobReference varchar(255) NOT NULL default '',
  Destination varchar(255) NOT NULL default 'Unknown',
  OwnerDN varchar(255) default NULL,
  Status varchar(32) NOT NULL default 'Submitted',
  SubmissionDate date,
  SubmissionTime time,
  JobID int(11) not null default 0,
  PRIMARY KEY (LCGJobReference)

);

--------------------------------------------------------------------------------
--DROP FUNCTION  metamatch;
--CREATE FUNCTION metamatch RETURNS INTEGER SONAME "libudf_example.so";

--------------------------------------------------------------------------------

