/* SQL statements for type BaseAddress */
CREATE TABLE BaseAddress (objType NUMBER, cnvSvcName VARCHAR2(2048), cnvSvcType NUMBER, target INTEGER, id INTEGER CONSTRAINT PK_BaseAddress_Id PRIMARY KEY) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type Client */
CREATE TABLE Client (ipAddress NUMBER, port NUMBER, version NUMBER, secure NUMBER, id INTEGER CONSTRAINT PK_Client_Id PRIMARY KEY) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type Disk2DiskCopyDoneRequest */
CREATE TABLE Disk2DiskCopyDoneRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, diskCopyId INTEGER, sourceDiskCopyId INTEGER, fileId INTEGER, nsHost VARCHAR2(2048), id INTEGER CONSTRAINT PK_Disk2DiskCopyDoneRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type GetUpdateDone */
CREATE TABLE GetUpdateDone (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, subReqId INTEGER, fileId INTEGER, nsHost VARCHAR2(2048), id INTEGER CONSTRAINT PK_GetUpdateDone_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type GetUpdateFailed */
CREATE TABLE GetUpdateFailed (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, subReqId INTEGER, fileId INTEGER, nsHost VARCHAR2(2048), id INTEGER CONSTRAINT PK_GetUpdateFailed_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type PutFailed */
CREATE TABLE PutFailed (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, subReqId INTEGER, fileId INTEGER, nsHost VARCHAR2(2048), id INTEGER CONSTRAINT PK_PutFailed_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type Files2Delete */
CREATE TABLE Files2Delete (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, diskServer VARCHAR2(2048), id INTEGER CONSTRAINT PK_Files2Delete_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type FilesDeleted */
CREATE TABLE FilesDeleted (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_FilesDeleted_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type FilesDeletionFailed */
CREATE TABLE FilesDeletionFailed (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_FilesDeletionFailed_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type GCFile */
CREATE TABLE GCFile (diskCopyId INTEGER, id INTEGER CONSTRAINT PK_GCFile_Id PRIMARY KEY, request INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type GCLocalFile */
CREATE TABLE GCLocalFile (fileName VARCHAR2(2048), diskCopyId INTEGER, fileId INTEGER, nsHost VARCHAR2(2048), lastAccessTime INTEGER, nbAccesses NUMBER, gcWeight NUMBER, gcTriggeredBy VARCHAR2(2048), svcClassName VARCHAR2(2048), id INTEGER CONSTRAINT PK_GCLocalFile_Id PRIMARY KEY) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type MoverCloseRequest */
CREATE TABLE MoverCloseRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, subReqId INTEGER, fileSize INTEGER, timeStamp INTEGER, fileId INTEGER, nsHost VARCHAR2(2048), csumType VARCHAR2(2048), csumValue VARCHAR2(2048), id INTEGER CONSTRAINT PK_MoverCloseRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type PutStartRequest */
CREATE TABLE PutStartRequest (subreqId INTEGER, diskServer VARCHAR2(2048), fileSystem VARCHAR2(2048), fileId INTEGER, nsHost VARCHAR2(2048), flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_PutStartRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type PutDoneStart */
CREATE TABLE PutDoneStart (subreqId INTEGER, diskServer VARCHAR2(2048), fileSystem VARCHAR2(2048), fileId INTEGER, nsHost VARCHAR2(2048), flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_PutDoneStart_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type GetUpdateStartRequest */
CREATE TABLE GetUpdateStartRequest (subreqId INTEGER, diskServer VARCHAR2(2048), fileSystem VARCHAR2(2048), fileId INTEGER, nsHost VARCHAR2(2048), flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_GetUpdateStartRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type QueryParameter */
CREATE TABLE QueryParameter (value VARCHAR2(2048), id INTEGER CONSTRAINT PK_QueryParameter_Id PRIMARY KEY, query INTEGER, queryType INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StagePrepareToGetRequest */
CREATE TABLE StagePrepareToGetRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StagePrepareToGetRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StagePrepareToPutRequest */
CREATE TABLE StagePrepareToPutRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StagePrepareToPutRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StagePrepareToUpdateRequest */
CREATE TABLE StagePrepareToUpdateRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StagePrepareToUpdateRequ_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StagePutRequest */
CREATE TABLE StagePutRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StagePutRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StageUpdateRequest */
CREATE TABLE StageUpdateRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StageUpdateRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StageRmRequest */
CREATE TABLE StageRmRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StageRmRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StagePutDoneRequest */
CREATE TABLE StagePutDoneRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, parentUuid VARCHAR2(2048), id INTEGER CONSTRAINT PK_StagePutDoneRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER, parent INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StageFileQueryRequest */
CREATE TABLE StageFileQueryRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, fileName VARCHAR2(2048), id INTEGER CONSTRAINT PK_StageFileQueryRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type SubRequest */
CREATE TABLE SubRequest (retryCounter NUMBER, fileName VARCHAR2(2048), protocol VARCHAR2(2048), xsize INTEGER, priority NUMBER, subreqId VARCHAR2(2048), flags NUMBER, modeBits NUMBER, creationTime INTEGER, lastModificationTime INTEGER, answered NUMBER, errorCode NUMBER, errorMessage VARCHAR2(2048), requestedFileSystems VARCHAR2(2048), svcHandler VARCHAR2(2048), id INTEGER CONSTRAINT PK_SubRequest_Id PRIMARY KEY, diskcopy INTEGER, castorFile INTEGER, parent INTEGER, status INTEGER, request INTEGER, getNextStatus INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StageReleaseFilesRequest */
CREATE TABLE StageReleaseFilesRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StageReleaseFilesRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StageAbortRequest */
CREATE TABLE StageAbortRequest (parentUuid VARCHAR2(2048), flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StageAbortRequest_Id PRIMARY KEY, parent INTEGER, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StageGetNextRequest */
CREATE TABLE StageGetNextRequest (parentUuid VARCHAR2(2048), flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StageGetNextRequest_Id PRIMARY KEY, parent INTEGER, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StagePutNextRequest */
CREATE TABLE StagePutNextRequest (parentUuid VARCHAR2(2048), flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StagePutNextRequest_Id PRIMARY KEY, parent INTEGER, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StageUpdateNextRequest */
CREATE TABLE StageUpdateNextRequest (parentUuid VARCHAR2(2048), flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StageUpdateNextRequest_Id PRIMARY KEY, parent INTEGER, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type Tape */
CREATE TABLE Tape (vid VARCHAR2(2048), side NUMBER, tpmode NUMBER, errMsgTxt VARCHAR2(2048), errorCode NUMBER, severity NUMBER, vwAddress VARCHAR2(2048), id INTEGER CONSTRAINT PK_Tape_Id PRIMARY KEY, stream INTEGER, status INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type Segment */
CREATE TABLE Segment (fseq NUMBER, offset INTEGER, bytes_in INTEGER, bytes_out INTEGER, host_bytes INTEGER, segmCksumAlgorithm VARCHAR2(2048), segmCksum NUMBER, errMsgTxt VARCHAR2(2048), errorCode NUMBER, severity NUMBER, blockId0 INTEGER, blockId1 INTEGER, blockId2 INTEGER, blockId3 INTEGER, creationTime INTEGER, priority INTEGER, id INTEGER CONSTRAINT PK_Segment_Id PRIMARY KEY, tape INTEGER, copy INTEGER, status INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type TapePool */
CREATE TABLE TapePool (name VARCHAR2(2048), migrSelectPolicy VARCHAR2(2048), id INTEGER CONSTRAINT PK_TapePool_Id PRIMARY KEY) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type TapeCopy */
CREATE TABLE TapeCopy (copyNb NUMBER, id INTEGER CONSTRAINT PK_TapeCopy_Id PRIMARY KEY, castorFile INTEGER, status INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type CastorFile */
CREATE TABLE CastorFile (fileId INTEGER, nsHost VARCHAR2(2048), fileSize INTEGER, creationTime INTEGER, lastAccessTime INTEGER, lastKnownFileName VARCHAR2(2048), lastUpdateTime INTEGER, id INTEGER CONSTRAINT PK_CastorFile_Id PRIMARY KEY, svcClass INTEGER, fileClass INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type DiskCopy */
CREATE TABLE DiskCopy (path VARCHAR2(2048), gcWeight NUMBER, creationTime INTEGER, lastAccessTime INTEGER, diskCopySize INTEGER, nbCopyAccesses NUMBER, owneruid NUMBER, ownergid NUMBER, id INTEGER CONSTRAINT PK_DiskCopy_Id PRIMARY KEY, gcType INTEGER, fileSystem INTEGER, castorFile INTEGER, status INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type FileSystem */
CREATE TABLE FileSystem (free INTEGER, mountPoint VARCHAR2(2048), minFreeSpace NUMBER, minAllowedFreeSpace NUMBER, maxFreeSpace NUMBER, totalSize INTEGER, readRate INTEGER, writeRate INTEGER, nbReadStreams NUMBER, nbWriteStreams NUMBER, nbReadWriteStreams NUMBER, nbMigratorStreams NUMBER, nbRecallerStreams NUMBER, id INTEGER CONSTRAINT PK_FileSystem_Id PRIMARY KEY, diskPool INTEGER, diskserver INTEGER, status INTEGER, adminStatus INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type SvcClass */
CREATE TABLE SvcClass (nbDrives NUMBER, name VARCHAR2(2048), defaultFileSize INTEGER, maxReplicaNb NUMBER, migratorPolicy VARCHAR2(2048), recallerPolicy VARCHAR2(2048), streamPolicy VARCHAR2(2048), gcPolicy VARCHAR2(2048), disk1Behavior NUMBER, replicateOnClose NUMBER, failJobsWhenNoSpace NUMBER, id INTEGER CONSTRAINT PK_SvcClass_Id PRIMARY KEY, forcedFileClass INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;
CREATE TABLE SvcClass2TapePool (Parent INTEGER, Child INTEGER) INITRANS 50 PCTFREE 50;
CREATE INDEX I_SvcClass2TapePool_C on SvcClass2TapePool (child);
CREATE INDEX I_SvcClass2TapePool_P on SvcClass2TapePool (parent);

/* SQL statements for type DiskPool */
CREATE TABLE DiskPool (name VARCHAR2(2048), id INTEGER CONSTRAINT PK_DiskPool_Id PRIMARY KEY) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;
CREATE TABLE DiskPool2SvcClass (Parent INTEGER, Child INTEGER) INITRANS 50 PCTFREE 50;
CREATE INDEX I_DiskPool2SvcClass_C on DiskPool2SvcClass (child);
CREATE INDEX I_DiskPool2SvcClass_P on DiskPool2SvcClass (parent);

/* SQL statements for type Stream */
CREATE TABLE Stream (initialSizeToTransfer INTEGER, lastFileSystemChange INTEGER, id INTEGER CONSTRAINT PK_Stream_Id PRIMARY KEY, tape INTEGER, lastFileSystemUsed INTEGER, lastButOneFileSystemUsed INTEGER, tapePool INTEGER, status INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;
CREATE TABLE Stream2TapeCopy (Parent INTEGER, Child INTEGER) INITRANS 50 PCTFREE 50;
CREATE INDEX I_Stream2TapeCopy_C on Stream2TapeCopy (child);
CREATE INDEX I_Stream2TapeCopy_P on Stream2TapeCopy (parent);

/* SQL statements for type FileClass */
CREATE TABLE FileClass (name VARCHAR2(2048), nbCopies NUMBER, id INTEGER CONSTRAINT PK_FileClass_Id PRIMARY KEY) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type DiskServer */
CREATE TABLE DiskServer (name VARCHAR2(2048), readRate INTEGER, writeRate INTEGER, nbReadStreams NUMBER, nbWriteStreams NUMBER, nbReadWriteStreams NUMBER, nbMigratorStreams NUMBER, nbRecallerStreams NUMBER, id INTEGER CONSTRAINT PK_DiskServer_Id PRIMARY KEY, status INTEGER, adminStatus INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type SetFileGCWeight */
CREATE TABLE SetFileGCWeight (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, weight NUMBER, id INTEGER CONSTRAINT PK_SetFileGCWeight_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StageRepackRequest */
CREATE TABLE StageRepackRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, repackVid VARCHAR2(2048), id INTEGER CONSTRAINT PK_StageRepackRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StageDiskCopyReplicaRequest */
CREATE TABLE StageDiskCopyReplicaRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StageDiskCopyReplicaRequ_Id PRIMARY KEY, svcClass INTEGER, client INTEGER, sourceSvcClass INTEGER, destDiskCopy INTEGER, sourceDiskCopy INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type NsFilesDeleted */
CREATE TABLE NsFilesDeleted (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, nsHost VARCHAR2(2048), id INTEGER CONSTRAINT PK_NsFilesDeleted_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type Disk2DiskCopyStartRequest */
CREATE TABLE Disk2DiskCopyStartRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, diskCopyId INTEGER, sourceDiskCopyId INTEGER, diskServer VARCHAR2(2048), mountPoint VARCHAR2(2048), fileId INTEGER, nsHost VARCHAR2(2048), id INTEGER CONSTRAINT PK_Disk2DiskCopyStartReques_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type FirstByteWritten */
CREATE TABLE FirstByteWritten (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, subReqId INTEGER, fileId INTEGER, nsHost VARCHAR2(2048), id INTEGER CONSTRAINT PK_FirstByteWritten_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StageGetRequest */
CREATE TABLE StageGetRequest (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_StageGetRequest_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type StgFilesDeleted */
CREATE TABLE StgFilesDeleted (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, nsHost VARCHAR2(2048), id INTEGER CONSTRAINT PK_StgFilesDeleted_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type DiskPoolQuery */
CREATE TABLE DiskPoolQuery (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, diskPoolName VARCHAR2(2048), id INTEGER CONSTRAINT PK_DiskPoolQuery_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type VersionQuery */
CREATE TABLE VersionQuery (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, id INTEGER CONSTRAINT PK_VersionQuery_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type ChangePrivilege */
CREATE TABLE ChangePrivilege (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, isGranted NUMBER, id INTEGER CONSTRAINT PK_ChangePrivilege_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type BWUser */
CREATE TABLE BWUser (euid NUMBER, egid NUMBER, id INTEGER CONSTRAINT PK_BWUser_Id PRIMARY KEY, request INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type RequestType */
CREATE TABLE RequestType (reqType NUMBER, id INTEGER CONSTRAINT PK_RequestType_Id PRIMARY KEY, request INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type ListPrivileges */
CREATE TABLE ListPrivileges (flags INTEGER, userName VARCHAR2(2048), euid NUMBER, egid NUMBER, mask NUMBER, pid NUMBER, machine VARCHAR2(2048), svcClassName VARCHAR2(2048), userTag VARCHAR2(2048), reqId VARCHAR2(2048), creationTime INTEGER, lastModificationTime INTEGER, userId NUMBER, groupId NUMBER, requestType NUMBER, id INTEGER CONSTRAINT PK_ListPrivileges_Id PRIMARY KEY, svcClass INTEGER, client INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for type TapeRequestState */
CREATE TABLE TapeRequestState (accessMode NUMBER, pid INTEGER, startTime INTEGER, lastVdqmPingTime INTEGER, vdqmVolReqId NUMBER, id INTEGER CONSTRAINT PK_TapeRequestState_Id PRIMARY KEY, streamMigration INTEGER, TapeRecall INTEGER, status INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;

/* SQL statements for constraints on SvcClass */
ALTER TABLE SvcClass2TapePool
  ADD CONSTRAINT FK_SvcClass2TapePool_P FOREIGN KEY (Parent) REFERENCES SvcClass (id)
  ADD CONSTRAINT FK_SvcClass2TapePool_C FOREIGN KEY (Child) REFERENCES TapePool (id);

/* SQL statements for constraints on DiskPool */
ALTER TABLE DiskPool2SvcClass
  ADD CONSTRAINT FK_DiskPool2SvcClass_P FOREIGN KEY (Parent) REFERENCES DiskPool (id)
  ADD CONSTRAINT FK_DiskPool2SvcClass_C FOREIGN KEY (Child) REFERENCES SvcClass (id);

/* SQL statements for constraints on Stream */
ALTER TABLE Stream2TapeCopy
  ADD CONSTRAINT FK_Stream2TapeCopy_P FOREIGN KEY (Parent) REFERENCES Stream (id)
  ADD CONSTRAINT FK_Stream2TapeCopy_C FOREIGN KEY (Child) REFERENCES TapeCopy (id);


CREATE TABLE CastorVersion (schemaVersion VARCHAR2(20), release VARCHAR2(20));
INSERT INTO CastorVersion VALUES ('-', '2_1_8_5');

/* Fill Type2Obj metatable */
CREATE TABLE Type2Obj (type INTEGER CONSTRAINT I_Type2Obj_Type PRIMARY KEY NOT NULL, object VARCHAR2(100) NOT NULL, svcHandler VARCHAR2(100));
INSERT INTO Type2Obj (type, object) VALUES (0, 'INVALID');
INSERT INTO Type2Obj (type, object) VALUES (1, 'Ptr');
INSERT INTO Type2Obj (type, object) VALUES (2, 'CastorFile');
INSERT INTO Type2Obj (type, object) VALUES (3, 'OldClient');
INSERT INTO Type2Obj (type, object) VALUES (4, 'Cuuid');
INSERT INTO Type2Obj (type, object) VALUES (5, 'DiskCopy');
INSERT INTO Type2Obj (type, object) VALUES (6, 'DiskFile');
INSERT INTO Type2Obj (type, object) VALUES (7, 'DiskPool');
INSERT INTO Type2Obj (type, object) VALUES (8, 'DiskServer');
INSERT INTO Type2Obj (type, object) VALUES (10, 'FileClass');
INSERT INTO Type2Obj (type, object) VALUES (12, 'FileSystem');
INSERT INTO Type2Obj (type, object) VALUES (13, 'IClient');
INSERT INTO Type2Obj (type, object) VALUES (14, 'MessageAck');
INSERT INTO Type2Obj (type, object) VALUES (16, 'ReqIdRequest');
INSERT INTO Type2Obj (type, object) VALUES (17, 'Request');
INSERT INTO Type2Obj (type, object) VALUES (18, 'Segment');
INSERT INTO Type2Obj (type, object) VALUES (21, 'StageGetNextRequest');
INSERT INTO Type2Obj (type, object) VALUES (26, 'Stream');
INSERT INTO Type2Obj (type, object) VALUES (27, 'SubRequest');
INSERT INTO Type2Obj (type, object) VALUES (28, 'SvcClass');
INSERT INTO Type2Obj (type, object) VALUES (29, 'Tape');
INSERT INTO Type2Obj (type, object) VALUES (30, 'TapeCopy');
INSERT INTO Type2Obj (type, object) VALUES (31, 'TapePool');
INSERT INTO Type2Obj (type, object) VALUES (33, 'StageFileQueryRequest');
INSERT INTO Type2Obj (type, object) VALUES (35, 'StageGetRequest');
INSERT INTO Type2Obj (type, object) VALUES (36, 'StagePrepareToGetRequest');
INSERT INTO Type2Obj (type, object) VALUES (37, 'StagePrepareToPutRequest');
INSERT INTO Type2Obj (type, object) VALUES (38, 'StagePrepareToUpdateRequest');
INSERT INTO Type2Obj (type, object) VALUES (39, 'StagePutDoneRequest');
INSERT INTO Type2Obj (type, object) VALUES (40, 'StagePutRequest');
INSERT INTO Type2Obj (type, object) VALUES (42, 'StageRmRequest');
INSERT INTO Type2Obj (type, object) VALUES (43, 'StageUpdateFileStatusRequest');
INSERT INTO Type2Obj (type, object) VALUES (44, 'StageUpdateRequest');
INSERT INTO Type2Obj (type, object) VALUES (45, 'FileRequest');
INSERT INTO Type2Obj (type, object) VALUES (46, 'QryRequest');
INSERT INTO Type2Obj (type, object) VALUES (48, 'StagePutNextRequest');
INSERT INTO Type2Obj (type, object) VALUES (49, 'StageUpdateNextRequest');
INSERT INTO Type2Obj (type, object) VALUES (50, 'StageAbortRequest');
INSERT INTO Type2Obj (type, object) VALUES (51, 'StageReleaseFilesRequest');
INSERT INTO Type2Obj (type, object) VALUES (58, 'DiskCopyForRecall');
INSERT INTO Type2Obj (type, object) VALUES (59, 'TapeCopyForMigration');
INSERT INTO Type2Obj (type, object) VALUES (60, 'GetUpdateStartRequest');
INSERT INTO Type2Obj (type, object) VALUES (62, 'BaseAddress');
INSERT INTO Type2Obj (type, object) VALUES (64, 'Disk2DiskCopyDoneRequest');
INSERT INTO Type2Obj (type, object) VALUES (65, 'MoverCloseRequest');
INSERT INTO Type2Obj (type, object) VALUES (66, 'StartRequest');
INSERT INTO Type2Obj (type, object) VALUES (67, 'PutStartRequest');
INSERT INTO Type2Obj (type, object) VALUES (69, 'IObject');
INSERT INTO Type2Obj (type, object) VALUES (70, 'IAddress');
INSERT INTO Type2Obj (type, object) VALUES (71, 'QueryParameter');
INSERT INTO Type2Obj (type, object) VALUES (72, 'DiskCopyInfo');
INSERT INTO Type2Obj (type, object) VALUES (73, 'Files2Delete');
INSERT INTO Type2Obj (type, object) VALUES (74, 'FilesDeleted');
INSERT INTO Type2Obj (type, object) VALUES (76, 'GCLocalFile');
INSERT INTO Type2Obj (type, object) VALUES (78, 'GetUpdateDone');
INSERT INTO Type2Obj (type, object) VALUES (79, 'GetUpdateFailed');
INSERT INTO Type2Obj (type, object) VALUES (80, 'PutFailed');
INSERT INTO Type2Obj (type, object) VALUES (81, 'GCFile');
INSERT INTO Type2Obj (type, object) VALUES (82, 'GCFileList');
INSERT INTO Type2Obj (type, object) VALUES (83, 'FilesDeletionFailed');
INSERT INTO Type2Obj (type, object) VALUES (84, 'TapeRequest');
INSERT INTO Type2Obj (type, object) VALUES (85, 'ClientIdentification');
INSERT INTO Type2Obj (type, object) VALUES (86, 'TapeServer');
INSERT INTO Type2Obj (type, object) VALUES (87, 'TapeDrive');
INSERT INTO Type2Obj (type, object) VALUES (88, 'DeviceGroupName');
INSERT INTO Type2Obj (type, object) VALUES (89, 'ErrorHistory');
INSERT INTO Type2Obj (type, object) VALUES (90, 'TapeDriveDedication');
INSERT INTO Type2Obj (type, object) VALUES (91, 'TapeAccessSpecification');
INSERT INTO Type2Obj (type, object) VALUES (92, 'TapeDriveCompatibility');
INSERT INTO Type2Obj (type, object) VALUES (93, 'PutDoneStart');
INSERT INTO Type2Obj (type, object) VALUES (95, 'SetFileGCWeight');
INSERT INTO Type2Obj (type, object) VALUES (96, 'RepackRequest');
INSERT INTO Type2Obj (type, object) VALUES (97, 'RepackSubRequest');
INSERT INTO Type2Obj (type, object) VALUES (98, 'RepackSegment');
INSERT INTO Type2Obj (type, object) VALUES (99, 'RepackAck');
INSERT INTO Type2Obj (type, object) VALUES (101, 'DiskServerDescription');
INSERT INTO Type2Obj (type, object) VALUES (102, 'FileSystemDescription');
INSERT INTO Type2Obj (type, object) VALUES (103, 'DiskPoolQuery');
INSERT INTO Type2Obj (type, object) VALUES (104, 'EndResponse');
INSERT INTO Type2Obj (type, object) VALUES (105, 'FileResponse');
INSERT INTO Type2Obj (type, object) VALUES (106, 'StringResponse');
INSERT INTO Type2Obj (type, object) VALUES (107, 'Response');
INSERT INTO Type2Obj (type, object) VALUES (108, 'IOResponse');
INSERT INTO Type2Obj (type, object) VALUES (109, 'AbortResponse');
INSERT INTO Type2Obj (type, object) VALUES (111, 'FileQueryResponse');
INSERT INTO Type2Obj (type, object) VALUES (113, 'GetUpdateStartResponse');
INSERT INTO Type2Obj (type, object) VALUES (114, 'BasicResponse');
INSERT INTO Type2Obj (type, object) VALUES (115, 'StartResponse');
INSERT INTO Type2Obj (type, object) VALUES (116, 'GCFilesResponse');
INSERT INTO Type2Obj (type, object) VALUES (117, 'FileQryResponse');
INSERT INTO Type2Obj (type, object) VALUES (118, 'DiskPoolQueryResponse');
INSERT INTO Type2Obj (type, object) VALUES (119, 'StageRepackRequest');
INSERT INTO Type2Obj (type, object) VALUES (120, 'DiskServerStateReport');
INSERT INTO Type2Obj (type, object) VALUES (121, 'DiskServerMetricsReport');
INSERT INTO Type2Obj (type, object) VALUES (122, 'FileSystemStateReport');
INSERT INTO Type2Obj (type, object) VALUES (123, 'FileSystemMetricsReport');
INSERT INTO Type2Obj (type, object) VALUES (124, 'DiskServerAdminReport');
INSERT INTO Type2Obj (type, object) VALUES (125, 'FileSystemAdminReport');
INSERT INTO Type2Obj (type, object) VALUES (126, 'StreamReport');
INSERT INTO Type2Obj (type, object) VALUES (127, 'FileSystemStateAck');
INSERT INTO Type2Obj (type, object) VALUES (128, 'MonitorMessageAck');
INSERT INTO Type2Obj (type, object) VALUES (129, 'Client');
INSERT INTO Type2Obj (type, object) VALUES (130, 'JobSubmissionRequest');
INSERT INTO Type2Obj (type, object) VALUES (131, 'VersionQuery');
INSERT INTO Type2Obj (type, object) VALUES (132, 'VersionResponse');
INSERT INTO Type2Obj (type, object) VALUES (133, 'StageDiskCopyReplicaRequest');
INSERT INTO Type2Obj (type, object) VALUES (134, 'RepackResponse');
INSERT INTO Type2Obj (type, object) VALUES (135, 'RepackFileQry');
INSERT INTO Type2Obj (type, object) VALUES (136, 'CnsInfoMigrationPolicy');
INSERT INTO Type2Obj (type, object) VALUES (137, 'DbInfoMigrationPolicy');
INSERT INTO Type2Obj (type, object) VALUES (138, 'CnsInfoRecallPolicy');
INSERT INTO Type2Obj (type, object) VALUES (139, 'DbInfoRecallPolicy');
INSERT INTO Type2Obj (type, object) VALUES (140, 'DbInfoStreamPolicy');
INSERT INTO Type2Obj (type, object) VALUES (141, 'PolicyObj');
INSERT INTO Type2Obj (type, object) VALUES (142, 'NsFilesDeleted');
INSERT INTO Type2Obj (type, object) VALUES (143, 'NsFilesDeletedResponse');
INSERT INTO Type2Obj (type, object) VALUES (144, 'Disk2DiskCopyStartRequest');
INSERT INTO Type2Obj (type, object) VALUES (145, 'Disk2DiskCopyStartResponse');
INSERT INTO Type2Obj (type, object) VALUES (146, 'ThreadNotification');
INSERT INTO Type2Obj (type, object) VALUES (147, 'FirstByteWritten');
INSERT INTO Type2Obj (type, object) VALUES (148, 'VdqmTape');
INSERT INTO Type2Obj (type, object) VALUES (149, 'StgFilesDeleted');
INSERT INTO Type2Obj (type, object) VALUES (150, 'StgFilesDeletedResponse');
INSERT INTO Type2Obj (type, object) VALUES (151, 'VolumePriority');
INSERT INTO Type2Obj (type, object) VALUES (152, 'ChangePrivilege');
INSERT INTO Type2Obj (type, object) VALUES (153, 'BWUser');
INSERT INTO Type2Obj (type, object) VALUES (154, 'RequestType');
INSERT INTO Type2Obj (type, object) VALUES (155, 'ListPrivileges');
INSERT INTO Type2Obj (type, object) VALUES (156, 'Privilege');
INSERT INTO Type2Obj (type, object) VALUES (157, 'ListPrivilegesResponse');
INSERT INTO Type2Obj (type, object) VALUES (158, 'PriorityMap');
INSERT INTO Type2Obj (type, object) VALUES (159, 'VectorAddress');
INSERT INTO Type2Obj (type, object) VALUES (160, 'Tape2DriveDedication');
INSERT INTO Type2Obj (type, object) VALUES (161, 'TapeRecall');

/*******************************************************************
 *
 * @(#)RCSfile: oracleCommon.sql,v  Revision: 1.685.2.5  Date: 2009/01/27 16:32:58  Author: waldron 
 *
 * This file contains all schema definitions which are not generated automatically
 * and some common PL/SQL utilities, appended at the end of the generated code
 *
 * @author Castor Dev team, castor-dev@cern.ch
 *******************************************************************/

/* A small table used to cross check code and DB versions */
UPDATE CastorVersion SET schemaVersion = '2_1_8_4';

/* Sequence for indices */
CREATE SEQUENCE ids_seq CACHE 300;

/* SQL statements for object types */
CREATE TABLE Id2Type (id INTEGER CONSTRAINT PK_Id2Type_Id PRIMARY KEY, type NUMBER) ENABLE ROW MOVEMENT;

/* SQL statements for requests status */
/* Partitioning enables faster response (more than indexing) for the most frequent queries - credits to Nilo Segura */
CREATE TABLE newRequests (type NUMBER(38) NOT NULL, id NUMBER(38) NOT NULL, creation DATE NOT NULL, CONSTRAINT PK_NewRequests_Type_Id PRIMARY KEY (type, id))
ORGANIZATION INDEX
COMPRESS
PARTITION BY LIST (type)
 (
  PARTITION type_16 VALUES (16)  TABLESPACE stager_data,
  PARTITION type_21 VALUES (21)  TABLESPACE stager_data,
  PARTITION type_33 VALUES (33)  TABLESPACE stager_data,
  PARTITION type_34 VALUES (34)  TABLESPACE stager_data,
  PARTITION type_35 VALUES (35)  TABLESPACE stager_data,
  PARTITION type_36 VALUES (36)  TABLESPACE stager_data,
  PARTITION type_37 VALUES (37)  TABLESPACE stager_data,
  PARTITION type_38 VALUES (38)  TABLESPACE stager_data,
  PARTITION type_39 VALUES (39)  TABLESPACE stager_data,
  PARTITION type_40 VALUES (40)  TABLESPACE stager_data,
  PARTITION type_41 VALUES (41)  TABLESPACE stager_data,
  PARTITION type_42 VALUES (42)  TABLESPACE stager_data,
  PARTITION type_43 VALUES (43)  TABLESPACE stager_data,
  PARTITION type_44 VALUES (44)  TABLESPACE stager_data,
  PARTITION type_45 VALUES (45)  TABLESPACE stager_data,
  PARTITION type_46 VALUES (46)  TABLESPACE stager_data,
  PARTITION type_48 VALUES (48)  TABLESPACE stager_data,
  PARTITION type_49 VALUES (49)  TABLESPACE stager_data,
  PARTITION type_50 VALUES (50)  TABLESPACE stager_data,
  PARTITION type_51 VALUES (51)  TABLESPACE stager_data,
  PARTITION type_60 VALUES (60)  TABLESPACE stager_data,
  PARTITION type_64 VALUES (64)  TABLESPACE stager_data,
  PARTITION type_65 VALUES (65)  TABLESPACE stager_data,
  PARTITION type_66 VALUES (66)  TABLESPACE stager_data,
  PARTITION type_67 VALUES (67)  TABLESPACE stager_data,
  PARTITION type_78 VALUES (78)  TABLESPACE stager_data,
  PARTITION type_79 VALUES (79)  TABLESPACE stager_data,
  PARTITION type_80 VALUES (80)  TABLESPACE stager_data,
  PARTITION type_84 VALUES (84)  TABLESPACE stager_data,
  PARTITION type_90 VALUES (90)  TABLESPACE stager_data,
  PARTITION type_142 VALUES (142)  TABLESPACE stager_data,
  PARTITION type_144 VALUES (144)  TABLESPACE stager_data,
  PARTITION type_147 VALUES (147)  TABLESPACE stager_data,
  PARTITION type_149 VALUES (149)  TABLESPACE stager_data,
  PARTITION notlisted VALUES (default) TABLESPACE stager_data
 );

/* Redefinition of table SubRequest to make it partitioned by status */
/* Unfortunately it has already been defined, so we drop and recreate it */
/* Note that if the schema changes, this part has to be updated manually! */
DROP TABLE SubRequest;
CREATE TABLE SubRequest
  (retryCounter NUMBER, fileName VARCHAR2(2048), protocol VARCHAR2(2048),
   xsize INTEGER, priority NUMBER, subreqId VARCHAR2(2048), flags NUMBER,
   modeBits NUMBER, creationTime INTEGER NOT NULL, lastModificationTime INTEGER,
   answered NUMBER, errorCode NUMBER, errorMessage VARCHAR2(2048), id NUMBER NOT NULL,
   diskcopy INTEGER, castorFile INTEGER, parent INTEGER, status INTEGER,
   request INTEGER, getNextStatus INTEGER, requestedFileSystems VARCHAR2(2048),
   svcHandler VARCHAR2(2048) NOT NULL
  )
  PCTFREE 50 PCTUSED 40 INITRANS 50
  ENABLE ROW MOVEMENT
  PARTITION BY LIST (STATUS)
   (
    PARTITION P_STATUS_0_1_2   VALUES (0, 1, 2),      -- *START
    PARTITION P_STATUS_3_13_14 VALUES (3, 13, 14),    -- *SCHED
    PARTITION P_STATUS_4       VALUES (4),
    PARTITION P_STATUS_5       VALUES (5),
    PARTITION P_STATUS_6       VALUES (6),
    PARTITION P_STATUS_7       VALUES (7),
    PARTITION P_STATUS_8       VALUES (8),
    PARTITION P_STATUS_9_10    VALUES (9, 10),        -- FAILED_*
    PARTITION P_STATUS_11      VALUES (11),
    PARTITION P_STATUS_12      VALUES (12),
    PARTITION P_STATUS_OTHER   VALUES (DEFAULT)
   );

/* SQL statements for constraints on SubRequest */
ALTER TABLE SubRequest
  ADD CONSTRAINT PK_SubRequest_Id PRIMARY KEY (ID);
CREATE INDEX I_SubRequest_RT_CT_ID ON SubRequest(svcHandler, creationTime, id) LOCAL
 (PARTITION P_STATUS_0_1_2,
  PARTITION P_STATUS_3_13_14,
  PARTITION P_STATUS_4,
  PARTITION P_STATUS_5,
  PARTITION P_STATUS_6,
  PARTITION P_STATUS_7,
  PARTITION P_STATUS_8,
  PARTITION P_STATUS_9_10,
  PARTITION P_STATUS_11,
  PARTITION P_STATUS_12,
  PARTITION P_STATUS_OTHER);  

/* Indexes related to most used entities */
CREATE UNIQUE INDEX I_DiskServer_name ON DiskServer (name);

CREATE UNIQUE INDEX I_CastorFile_FileIdNsHost ON CastorFile (fileId, nsHost);
CREATE INDEX I_CastorFile_LastKnownFileName ON CastorFile (lastKnownFileName);
CREATE INDEX I_CastorFile_SvcClass ON CastorFile (svcClass);

CREATE INDEX I_DiskCopy_Castorfile ON DiskCopy (castorFile);
CREATE INDEX I_DiskCopy_FileSystem ON DiskCopy (fileSystem);
CREATE INDEX I_DiskCopy_Status ON DiskCopy (status);
CREATE INDEX I_DiskCopy_GCWeight ON DiskCopy (gcWeight);
CREATE INDEX I_DiskCopy_FS_Status_10 ON DiskCopy (fileSystem,decode(status,10,status,NULL));
CREATE INDEX I_DiskCopy_Status_9 ON DiskCopy (decode(status,9,status,NULL));

CREATE INDEX I_TapeCopy_Castorfile ON TapeCopy (castorFile);
CREATE INDEX I_TapeCopy_Status ON TapeCopy (status);
CREATE INDEX I_TapeCopy_CF_Status_2 ON TapeCopy (castorFile,decode(status,2,status,null));

CREATE INDEX I_FileSystem_DiskPool ON FileSystem (diskPool);
CREATE INDEX I_FileSystem_DiskServer ON FileSystem (diskServer);

CREATE INDEX I_SubRequest_Castorfile ON SubRequest (castorFile);
CREATE INDEX I_SubRequest_DiskCopy ON SubRequest (diskCopy);
CREATE INDEX I_SubRequest_Request ON SubRequest (request);
CREATE INDEX I_SubRequest_Parent ON SubRequest (parent);
CREATE INDEX I_SubRequest_SubReqId ON SubRequest (subReqId);
CREATE INDEX I_SubRequest_LastModTime ON SubRequest (lastModificationTime) LOCAL;

CREATE INDEX I_StagePTGRequest_ReqId ON StagePrepareToGetRequest (reqId);
CREATE INDEX I_StagePTPRequest_ReqId ON StagePrepareToPutRequest (reqId);
CREATE INDEX I_StagePTURequest_ReqId ON StagePrepareToUpdateRequest (reqId);
CREATE INDEX I_StageGetRequest_ReqId ON StageGetRequest (reqId);
CREATE INDEX I_StagePutRequest_ReqId ON StagePutRequest (reqId);
CREATE INDEX I_StageRepackRequest_ReqId ON StageRepackRequest (reqId);

/* A primary key index for better scan of Stream2TapeCopy */
CREATE UNIQUE INDEX I_PK_Stream2TapeCopy ON Stream2TapeCopy (parent, child);

CREATE INDEX I_GCFile_Request ON GCFile (request);

CREATE INDEX I_Segment_Tape ON Segment (tape);

CREATE INDEX I_Stream_TapePool ON Stream (tapePool); 

/* FileSystem constraints */
ALTER TABLE FileSystem ADD CONSTRAINT FK_FileSystem_DiskServer 
  FOREIGN KEY (diskServer) REFERENCES DiskServer(id);
ALTER TABLE FileSystem MODIFY (status NOT NULL);
ALTER TABLE FileSystem MODIFY (diskServer NOT NULL);

/* DiskServer constraints */
ALTER TABLE DiskServer MODIFY (status NOT NULL);

/* An index to speed up queries in FileQueryRequest, FindRequestRequest, RequestQueryRequest */
CREATE INDEX I_QueryParameter_Query ON QueryParameter (query);

/* An index to speed the queries on Segments by copy */
CREATE INDEX I_Segment_Copy ON Segment (copy);

/* Constraint on FileClass name */
ALTER TABLE FileClass ADD CONSTRAINT UN_FileClass_Name UNIQUE (name);

/* Add unique constraint on tapes */
ALTER TABLE Tape ADD CONSTRAINT UN_Tape_VIDSideTpMode UNIQUE (VID, side, tpMode);

/* Add unique constraint on svcClass name */
ALTER TABLE SvcClass ADD CONSTRAINT UN_SvcClass_Name UNIQUE (NAME);

/* Custom type to handle int arrays */
CREATE OR REPLACE TYPE "numList" IS TABLE OF INTEGER;
/

/* Default policy for migration */
ALTER TABLE TapePool MODIFY (migrSelectPolicy DEFAULT 'defaultMigrSelPolicy');

/* SvcClass constraints */
ALTER TABLE SvcClass MODIFY (name NOT NULL)
                     MODIFY (gcPolicy DEFAULT 'default');

/* DiskCopy constraints */
ALTER TABLE DiskCopy MODIFY (nbCopyAccesses DEFAULT 0);
ALTER TABLE DiskCopy MODIFY (gcType DEFAULT NULL);
ALTER TABLE DiskCopy ADD CONSTRAINT FK_DiskCopy_CastorFile
  FOREIGN KEY (castorFile) REFERENCES CastorFile (id)
  INITIALLY DEFERRED DEFERRABLE;

/* CastorFile constraints */
ALTER TABLE CastorFile ADD CONSTRAINT FK_CastorFile_SvcClass
  FOREIGN KEY (svcClass) REFERENCES SvcClass (id)
  INITIALLY DEFERRED DEFERRABLE;

ALTER TABLE CastorFile ADD CONSTRAINT FK_CastorFile_FileClass
  FOREIGN KEY (fileClass) REFERENCES FileClass (id)
  INITIALLY DEFERRED DEFERRABLE;

/* Stream constraints */
ALTER TABLE Stream ADD CONSTRAINT FK_Stream_TapePool
  FOREIGN KEY (tapePool) REFERENCES TapePool (id);

/* Global temporary table to handle output of the filesDeletedProc procedure */
CREATE GLOBAL TEMPORARY TABLE FilesDeletedProcOutput
  (fileid NUMBER, nshost VARCHAR2(2048))
  ON COMMIT PRESERVE ROWS;

/* Global temporary table to store castor file ids temporarily in the filesDeletedProc procedure */
CREATE GLOBAL TEMPORARY TABLE FilesDeletedProcHelper
  (cfId NUMBER)
  ON COMMIT DELETE ROWS;

/* Global temporary table for the filesClearedProc procedure */
CREATE GLOBAL TEMPORARY TABLE FilesClearedProcHelper
  (cfId NUMBER)
  ON COMMIT DELETE ROWS;

/* Global temporary table to handle output of the nsFilesDeletedProc procedure */
CREATE GLOBAL TEMPORARY TABLE NsFilesDeletedOrphans
  (fileid NUMBER)
  ON COMMIT DELETE ROWS;

/* Global temporary table to handle output of the stgFilesDeletedProc procedure */
CREATE GLOBAL TEMPORARY TABLE StgFilesDeletedOrphans
  (diskCopyId NUMBER)
  ON COMMIT DELETE ROWS;

/* Tables to log the activity performed by the cleanup job */
CREATE TABLE CleanupJobLog
  (fileId NUMBER NOT NULL, nsHost VARCHAR2(2048) NOT NULL,
   operation INTEGER NOT NULL);

/* Temporary table to handle removing of priviledges */
CREATE GLOBAL TEMPORARY TABLE RemovePrivilegeTmpTable
  (svcClass VARCHAR2(2048),
   euid NUMBER,
   egid NUMBER,
   reqType NUMBER)
  ON COMMIT DELETE ROWS;

/* Global temporary table to store ids temporarily in the bulkCreateObj procedures */
CREATE GLOBAL TEMPORARY TABLE BulkSelectHelper
  (objId NUMBER)
  ON COMMIT DELETE ROWS;

/* Global temporary table to store the information on diskcopyies which need to
 * processed to see if too many replicas are online. This temporary table is
 * required to solve the error: `ORA-04091: table is mutating, trigger/function`
 */
CREATE GLOBAL TEMPORARY TABLE TooManyReplicasHelper
  (id NUMBER, fileSystem NUMBER, castorFile NUMBER)
  ON COMMIT DELETE ROWS;

/* SQL statements for table PriorityMap */
CREATE TABLE PriorityMap (euid INTEGER, egid INTEGER, priority INTEGER) INITRANS 50 PCTFREE 50 ENABLE ROW MOVEMENT;
ALTER TABLE PriorityMap ADD CONSTRAINT UN_Priority_euid_egid UNIQUE (euid, egid);

/*
 * Black and while list mechanism
 * In order to be able to enter a request for a given service class, you need :
 *   - to be in the white list for this service class
 *   - to not be in the black list for this services class
 * Being in a list means :
 *   - either that your uid,gid is explicitely in the list
 *   - or that your gid is in the list with null uid (that is group wildcard)
 *   - or there is an entry with null uid and null gid (full wild card)
 * The permissions can also have a request type. Default is null, that is everything.
 * By default anybody can do anything
 */
CREATE TABLE WhiteList (svcClass VARCHAR2(2048), euid NUMBER, egid NUMBER, reqType NUMBER);
CREATE TABLE BlackList (svcClass VARCHAR2(2048), euid NUMBER, egid NUMBER, reqType NUMBER);

INSERT INTO WhiteList VALUES (NULL, NULL, NULL, NULL);


/* Define the service handlers for the appropriate sets of stage request objects */
UPDATE Type2Obj SET svcHandler = 'JobReqSvc' WHERE type IN (35, 40, 44);
UPDATE Type2Obj SET svcHandler = 'PrepReqSvc' WHERE type IN (36, 37, 38, 119);
UPDATE Type2Obj SET svcHandler = 'StageReqSvc' WHERE type IN (39, 42, 95);
UPDATE Type2Obj SET svcHandler = 'QueryReqSvc' WHERE type IN (33, 34, 41, 103, 131, 152, 155);
UPDATE Type2Obj SET svcHandler = 'JobSvc' WHERE type IN (60, 64, 65, 67, 78, 79, 80, 93, 144, 147);
UPDATE Type2Obj SET svcHandler = 'GCSvc' WHERE type IN (73, 74, 83, 142, 149);

/* Set default values for the StageDiskCopyReplicaRequest table */
ALTER TABLE StageDiskCopyReplicaRequest MODIFY flags DEFAULT 0;
ALTER TABLE StageDiskCopyReplicaRequest MODIFY euid DEFAULT 0;
ALTER TABLE StageDiskCopyReplicaRequest MODIFY egid DEFAULT 0;
ALTER TABLE StageDiskCopyReplicaRequest MODIFY mask DEFAULT 0;
ALTER TABLE StageDiskCopyReplicaRequest MODIFY pid DEFAULT 0;
ALTER TABLE StageDiskCopyReplicaRequest MODIFY machine DEFAULT 'stager';


/* Define a table for some configuration key-value pairs and populate it */
CREATE TABLE CastorConfig
  (class VARCHAR2(2048) NOT NULL, key VARCHAR2(2048) NOT NULL, value VARCHAR2(2048) NOT NULL, description VARCHAR2(2048));
ALTER TABLE CastorConfig ADD CONSTRAINT UN_CastorConfig_class_key UNIQUE (class, key);

INSERT INTO CastorConfig
  VALUES ('general', 'instance', 'castorstager', 'Name of this Castor instance');  -- to be overridden

INSERT INTO CastorConfig
  VALUES ('cleaning', 'terminatedRequestsTimeout', '120', 'Maximum timeout for successful and failed requests in hours');
INSERT INTO CastorConfig
  VALUES ('cleaning', 'outOfDateStageOutDCsTimeout', '72', 'Timeout for STAGEOUT diskCopies in hours');
INSERT INTO CastorConfig
  VALUES ('cleaning', 'failedDCsTimeout', '72', 'Timeout for failed diskCopies in hours');

INSERT INTO CastorConfig
  VALUES ('stager', 'nsHost', 'undefined', 'The name of the name server host to set in the CastorFile table overriding the CNS/HOST option defined in castor.conf');

COMMIT;


/****************************************************************/
/* NbTapeCopiesInFS to work around ORACLE missing optimizations */
/****************************************************************/

/* This table keeps track of the number of TapeCopy waiting for migration
 * which have a diskCopy on this fileSystem. This table only exist
 * because Oracle is not able to optimize the following query :
 * SELECT max(A) from A, B where A.pk = B.fk;
 * Such a query is needed in bestTapeCopyForStream in order to
 * select filesystems effectively having tapecopies.
 * As a work around, we keep track of the tapecopies for each
 * filesystem. The cost is an increase of complexity and especially
 * of the number of triggers ensuring consistency of the whole database */
CREATE TABLE NbTapeCopiesInFS (FS NUMBER, Stream NUMBER, NbTapeCopies NUMBER);
CREATE UNIQUE INDEX I_NbTapeCopiesInFS_FSStream ON NbTapeCopiesInFS(FS, Stream);
CREATE INDEX I_NbTapeCopiesInFS_Stream ON NbTapeCopiesInFS(Stream);


/*******************************************************************/
/* LockTable to implement proper locking for bestTapeCopyForStream */
/*******************************************************************/

/* This table is needed to insure that bestTapeCopyForStream works Ok.
 * It basically serializes the queries ending to the same diskserver.
 * This is only needed because of lack of functionnality in ORACLE.
 * The original goal was to lock the selected filesystem in the first
 * query of bestTapeCopyForStream. But a SELECT FOR UPDATE was not enough
 * because it does not revalidate the inner select and we were thus selecting
 * n times the same filesystem when n queries were processed in parallel.
 * (take care, they were processed sequentially due to the lock, but they
 * were still locking the same filesystem). Thus an UPDATE was needed but
 * UPDATE cannot use joins. Thus it was impossible to lock DiskServer
 * and FileSystem at the same time (we need to avoid the DiskServer to
 * be chosen again (with a different filesystem) before we update the
 * weight of all filesystems). Locking the diskserver only was fine but
 * was introducing a possible deadlock with a place where the FileSystem
 * is locked before the DiskServer. Thus this table..... */
CREATE TABLE LockTable (DiskServerId NUMBER CONSTRAINT PK_LockTable_DSId PRIMARY KEY, TheLock NUMBER);
INSERT INTO LockTable SELECT id, id FROM DiskServer;


/*********************************************************************/
/* FileSystemsToCheck used to optimise the processing of filesystems */
/* when they change status                                           */
/*********************************************************************/
CREATE TABLE FileSystemsToCheck (FileSystem NUMBER CONSTRAINT PK_FSToCheck_FS PRIMARY KEY, ToBeChecked NUMBER);
INSERT INTO FileSystemsToCheck SELECT id, 0 FROM FileSystem;


/**************/
/* Accounting */
/**************/
CREATE TABLE Accounting (euid INTEGER, diskPool INTEGER, nbBytes INTEGER);


/************************************/
/* Garbage collection related table */
/************************************/

/* A table storing the Gc policies and detailing there configuration
 * For each policy, identified by a name, parameters are :
 *   - userWeight : the name of the PL/SQL function to be called to
 *     precompute the GC weight when a file is written by the user.
 *   - recallWeight : the name of the PL/SQL function to be called to
 *     precompute the GC weight when a file is recalled
 *   - copyWeight : the name of the PL/SQL function to be called to
 *     precompute the GC weight when a file is disk to disk copied
 *   - firstAccessHook : the name of the PL/SQL function to be called
 *     when the file is accessed for the first time. Can be NULL.
 *   - accessHook : the name of the PL/SQL function to be called
 *     when the file is accessed (except for the first time). Can be NULL.
 *   - userSetGCWeight : the name of the PL/SQL function to be called
 *     when a setFileGcWeight user request is processed can be NULL.
 * All functions return a number that is the new gcWeight.
 * In general, here are the signatures :
 *   userWeight(fileSize NUMBER, DiskCopyStatus NUMBER)
 *   recallWeight(fileSize NUMBER)
 *   copyWeight(fileSize NUMBER, DiskCopyStatus NUMBER, sourceWeight NUMBER))
 *   firstAccessHook(oldGcWeight NUMBER, creationTime NUMBER)
 *   accessHook(oldGcWeight NUMBER, creationTime NUMBER, nbAccesses NUMBER)
 *   userSetGCWeight(oldGcWeight NUMBER, userDelta NUMBER)
 * Few notes :
 *   diskCopyStatus can be STAGED(0) or CANBEMIGR(10)
 */
CREATE TABLE GcPolicy (name VARCHAR2(2048) CONSTRAINT PK_GcPolicy_name PRIMARY KEY,
                       userWeight VARCHAR2(2048) NOT NULL,
                       recallWeight VARCHAR2(2048) NOT NULL,
                       copyWeight VARCHAR2(2048) NOT NULL,
                       firstAccessHook VARCHAR2(2048) DEFAULT NULL,
                       accessHook VARCHAR2(2048) DEFAULT NULL,
                       userSetGCWeight VARCHAR2(2048) DEFAULT NULL);

/* Default policy, mainly based on file sizes */
INSERT INTO GcPolicy VALUES ('default',
                             'castorGC.sizeRelatedUserWeight',
                             'castorGC.sizeRelatedRecallWeight',
                             'castorGC.sizeRelatedCopyWeight',
                             'castorGC.dayBonusFirstAccessHook',
                             'castorGC.halfHourBonusAccessHook',
                             'castorGC.cappedUserSetGCWeight');
INSERT INTO GcPolicy VALUES ('FIFO',
                             'castorGC.creationTimeUserWeight',
                             'castorGC.creationTimeRecallWeight',
                             'castorGC.creationTimeCopyWeight',
                             NULL,
                             NULL,
                             NULL);
INSERT INTO GcPolicy VALUES ('LRU',
                             'castorGC.creationTimeUserWeight',
                             'castorGC.creationTimeRecallWeight',
                             'castorGC.creationTimeCopyWeight',
                             'castorGC.LRUFirstAccessHook',
                             'castorGC.LRUAccessHook',
                             NULL);


/*********************/
/* FileSystem rating */
/*********************/

/* Computes a 'rate' for the filesystem which is an agglomeration
   of weight and fsDeviation. The goal is to be able to classify
   the fileSystems using a single value and to put an index on it */
CREATE OR REPLACE FUNCTION fileSystemRate
(readRate IN NUMBER,
 writeRate IN NUMBER,
 nbReadStreams IN NUMBER,
 nbWriteStreams IN NUMBER,
 nbReadWriteStreams IN NUMBER,
 nbMigratorStreams IN NUMBER,
 nbRecallerStreams IN NUMBER)
RETURN NUMBER DETERMINISTIC IS
BEGIN
  RETURN - nbReadStreams - nbWriteStreams - nbReadWriteStreams - nbMigratorStreams - nbRecallerStreams;
END;
/


/* FileSystem index based on the rate. */
CREATE INDEX I_FileSystem_Rate
    ON FileSystem(fileSystemRate(readRate, writeRate,
	          nbReadStreams,nbWriteStreams, nbReadWriteStreams, nbMigratorStreams, nbRecallerStreams));


/* Get current time as a time_t. Not that easy in ORACLE */
CREATE OR REPLACE FUNCTION getTime RETURN NUMBER IS
BEGIN
  RETURN (SYSDATE - to_date('01-jan-1970 01:00:00','dd-mon-yyyy HH:MI:SS')) * (24*60*60);
END;
/


/* Generate a universally unique id (UUID) */
CREATE OR REPLACE FUNCTION uuidGen RETURN VARCHAR2 IS
  ret VARCHAR2(36);
BEGIN
  -- Note: the guid generator provided by ORACLE produces sequential uuid's, not
  -- random ones. The reason for this is because random uuid's are not good for
  -- indexing!
  RETURN lower(regexp_replace(sys_guid(), '(.{8})(.{4})(.{4})(.{4})(.{12})', '\1-\2-\3-\4-\5'));
END;
/

/* Function to check if a service class exists by name. This function can return
 * a boolean value or raise an application error if the named service class does
 * not exist.
 * @param svcClasName The name of the service class (Note: can be NULL)
 * @param allowNull   Flag to indicate whether NULL or '' service class names are
 *                    permitted.
 * @param raiseError  Flag to indicate whether the function should raise an
 *                    application error when the service class doesn't exist or
 *                    return a boolean value of 0.
 */
CREATE OR REPLACE FUNCTION checkForValidSvcClass
(svcClassName VARCHAR2, allowNull NUMBER, raiseError NUMBER) RETURN NUMBER IS
  ret NUMBER;
BEGIN
  -- Check if the service class name is allowed to be NULL. This is quite often
  -- the case if the calling function supports '*' (null) to indicate that all
  -- service classes are being targeted.
  IF svcClassName IS NULL OR length(svcClassName) IS NULL THEN
    IF allowNull = 1 THEN
      RETURN 1;
    END IF;
  END IF;
  -- Check to see if service class exists by name
  SELECT count(*) INTO ret FROM SvcClass WHERE name = svcClassName;
  -- If permitted to do so raise an application error if the service class does
  -- not exist
  IF raiseError = 1 AND ret = 0 THEN
    raise_application_error(-20113, 'Invalid service class');
  END IF;
  RETURN ret;
END;
/


/* Function to return a comma separate list of service classes that a
 * filesystem belongs too.
 */
CREATE OR REPLACE FUNCTION getSvcClassList(fsId NUMBER) RETURN VARCHAR2 IS
  svcClassList VARCHAR2(4000) := NULL;
  c INTEGER := 0;
BEGIN
  FOR a IN (SELECT Distinct(SvcClass.name)
              FROM FileSystem, DiskPool2SvcClass, SvcClass
             WHERE FileSystem.id = fsId
               AND FileSystem.diskpool = DiskPool2SvcClass.parent
               AND DiskPool2SvcClass.child = SvcClass.id
             ORDER BY SvcClass.name)
  LOOP
    svcClassList := svcClassList || ',' || a.name;
    c := c + 1;
    IF c = 5 THEN
      svcClassList := svcClassList || ',...';
      EXIT;
    END IF;
  END LOOP;
  RETURN ltrim(svcClassList, ',');
END;
/


/* Function to extract a configuration option from the castor config
 * table.
 */
CREATE OR REPLACE FUNCTION getConfigOption
(className VARCHAR2, optionName VARCHAR2, defaultValue VARCHAR2) 
RETURN VARCHAR2 IS
  returnValue VARCHAR2(2048) := defaultValue;
BEGIN
  SELECT value INTO returnValue
    FROM CastorConfig
   WHERE class = className
     AND key = optionName
     AND value != 'undefined';
  RETURN returnValue;
EXCEPTION WHEN NO_DATA_FOUND THEN
  RETURN returnValue;
END;
/


/* PL/SQL method deleting tapecopies (and segments) of a castorfile */
CREATE OR REPLACE PROCEDURE deleteTapeCopies(cfId NUMBER) AS
BEGIN
  -- Loop over the tapecopies
  FOR t IN (SELECT id FROM TapeCopy WHERE castorfile = cfId) LOOP
    FOR s IN (SELECT id FROM Segment WHERE copy = t.id) LOOP
    -- Delete the segment(s)
      DELETE FROM Id2Type WHERE id = s.id;
      DELETE FROM Segment WHERE id = s.id;
    END LOOP;
    -- Delete from Stream2TapeCopy
    DELETE FROM Stream2TapeCopy WHERE child = t.id;
    -- Delete the TapeCopy
    DELETE FROM Id2Type WHERE id = t.id;
    DELETE FROM TapeCopy WHERE id = t.id;
  END LOOP;
END;
/


/* PL/SQL method canceling a given recall */
CREATE OR REPLACE PROCEDURE cancelRecall
(cfId NUMBER, dcId NUMBER, newSubReqStatus NUMBER) AS
  srIds "numList";
  unused NUMBER;
BEGIN
  -- Lock the CastorFile
  SELECT id INTO unused FROM CastorFile
   WHERE id = cfId FOR UPDATE;
  -- Cancel the recall
  deleteTapeCopies(cfId);
  -- Invalidate the DiskCopy
  UPDATE DiskCopy SET status = 7 WHERE id = dcId; -- INVALID
  -- Look for request associated to the recall and fail
  -- it and all the waiting ones
  UPDATE SubRequest SET status = newSubReqStatus
   WHERE diskCopy = dcId RETURNING id BULK COLLECT INTO srIds;
  UPDATE SubRequest
     SET status = newSubReqStatus, parent = 0 -- FAILED
   WHERE status = 5 -- WAITSUBREQ
     AND parent IN
       (SELECT /*+ CARDINALITY(sridTable 5) */ *
          FROM TABLE(srIds) sridTable)
     AND castorfile = cfId;
END;
/


/* PL/SQL method FOR canceling a recall by tape VID, The subrequests associated with
   the recall with be FAILED */
CREATE OR REPLACE PROCEDURE cancelRecallForTape (vid IN VARCHAR2) AS
BEGIN
  FOR a IN (SELECT DISTINCT(DiskCopy.id), DiskCopy.castorfile
              FROM Segment, Tape, TapeCopy, DiskCopy
             WHERE Segment.tape = Tape.id
               AND Segment.copy = TapeCopy.id
               AND DiskCopy.castorfile = TapeCopy.castorfile
               AND DiskCopy.status = 2  -- WAITTAPERECALL
               AND Tape.vid = vid
             ORDER BY DiskCopy.id ASC)
  LOOP
    cancelRecall(a.castorfile, a.id, 7);
  END LOOP;
END;
/


/* PL/SQL method to delete a CastorFile only when no Disk|TapeCopies are left for it */
/* Internally used in filesDeletedProc, putFailedProc and deleteOutOfDateDiskCopies */
CREATE OR REPLACE PROCEDURE deleteCastorFile(cfId IN NUMBER) AS
  nb NUMBER;
  LockError EXCEPTION;
  PRAGMA EXCEPTION_INIT (LockError, -54);
BEGIN
  -- First try to lock the castorFile
  SELECT id INTO nb FROM CastorFile
   WHERE id = cfId FOR UPDATE NOWAIT;
  -- See whether it has any DiskCopy
  SELECT count(*) INTO nb FROM DiskCopy
   WHERE castorFile = cfId;
  -- If any DiskCopy, give up
  IF nb = 0 THEN
    -- See whether it has any TapeCopy
    SELECT count(*) INTO nb FROM TapeCopy
     WHERE castorFile = cfId AND status != 6; -- FAILED
    -- If any TapeCopy, give up
    IF nb = 0 THEN
      -- See whether pending SubRequests exist
      SELECT count(*) INTO nb FROM SubRequest
       WHERE castorFile = cfId
         AND status IN (0, 1, 2, 3, 4, 5, 6, 7, 10, 12, 13, 14);   -- All but FINISHED, FAILED_FINISHED, ARCHIVED
      -- If any SubRequest, give up
      IF nb = 0 THEN
        DECLARE
          fid NUMBER;
          fc NUMBER;
          nsh VARCHAR2(2048);
        BEGIN
          -- Delete the failed TapeCopies
          deleteTapeCopies(cfId);
          -- Delete the CastorFile
          DELETE FROM id2Type WHERE id = cfId;
          DELETE FROM CastorFile WHERE id = cfId
            RETURNING fileId, nsHost, fileClass
            INTO fid, nsh, fc;
          -- check whether this file potentially had TapeCopies
          SELECT nbCopies INTO nb FROM FileClass WHERE id = fc;
          IF nb = 0 THEN
            -- This castorfile was created with no TapeCopy
            -- So removing it from the stager means erasing
            -- it completely. We should thus also remove it
            -- from the name server
            INSERT INTO FilesDeletedProcOutput VALUES (fid, nsh);
          END IF;
        END;
      END IF;
    END IF;
  END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
  -- ignore, this means that the castorFile did not exist.
  -- There is thus no way to find out whether to remove the
  -- file from the nameserver. For safety, we thus keep it
  NULL;
WHEN LockError THEN
  -- ignore, somebody else is dealing with this castorFile, 
  NULL;
END;
/
/*******************************************************************
 *
 * @(#)RCSfile: oraclePerm.sql,v  Revision: 1.653  Date: 2008/11/25 15:43:31  Author: itglp 
 *
 * PL/SQL code for permission and B/W list handling
 *
 * @author Castor Dev team, castor-dev@cern.ch
 *******************************************************************/


/* PL/SQL method implementing checkPermission */
CREATE OR REPLACE PROCEDURE checkPermission(isvcClass IN VARCHAR2,
                                            ieuid IN NUMBER,
                                            iegid IN NUMBER,
                                            ireqType IN NUMBER,
                                            res OUT NUMBER) AS
  unused NUMBER;
BEGIN
  SELECT count(*) INTO unused
    FROM WhiteList
   WHERE (svcClass = isvcClass OR svcClass IS NULL
          OR (length(isvcClass) IS NULL AND svcClass = 'default'))
     AND (egid = iegid OR egid IS NULL)
     AND (euid = ieuid OR euid IS NULL)
     AND (reqType = ireqType OR reqType IS NULL);
  IF unused = 0 THEN
    -- Not found in White list -> no access
    IF checkForValidSvcClass(isvcClass, 1, 0) = 1 THEN
      -- Service class exists, we give permission denied
      res := -1;
    -- Special case where we accept '*' as a service class for Qry,
    -- DiskPoolQuery and RM requests.
    ELSIF isvcClass = '*' AND 
          (ireqType = 33 OR ireqType = 42 OR ireqType = 103) THEN
      res := -1;
    ELSE
      -- Service class does not exist
      res := -2;
    END IF;
  ELSE
    SELECT count(*) INTO unused
      FROM BlackList
     WHERE (svcClass = isvcClass OR svcClass IS NULL
            OR (length(isvcClass) IS NULL AND svcClass = 'default'))
       AND (egid = iegid OR egid IS NULL)
       AND (euid = ieuid OR euid IS NULL)
       AND (reqType = ireqType OR reqType IS NULL);
    IF unused = 0 THEN
      -- Not Found in Black list -> access
      res := 0;
    ELSE
      -- Found in Black list -> no access
      res := -1;
    END IF;
  END IF;
END;
/


/* Function to wrap the checkPermission procedure so that is can be
 * used within SQL queries. The function returns 0 if the user has
 * access on the service class for the given request type otherwise
 * 1 if access is denied
 */
CREATE OR REPLACE
FUNCTION checkPermissionOnSvcClass(reqSvcClass IN VARCHAR2,
                                   reqEuid IN NUMBER,
                                   reqEgid IN NUMBER,
                                   reqType IN NUMBER)
RETURN NUMBER AS
  res NUMBER;
BEGIN
  -- Skip access control checks for special internal users
  IF reqEuid = -1 AND reqEgid = -1 THEN
    RETURN 0;
  END IF;
  -- Check the users access rights
  checkPermission(reqSvcClass, reqEuid, reqEgid, reqType, res);
  IF res = 0 THEN
    RETURN 0;
  END IF;
  RETURN 1;
END;
/


/**
  * Black and while list mechanism
  * In order to be able to enter a request for a given service class, you need :
  *   - to be in the white list for this service class
  *   - to not be in the black list for this services class
  * Being in a list means :
  *   - either that your uid,gid is explicitely in the list
  *   - or that your gid is in the list with null uid (that is group wildcard)
  *   - or there is an entry with null uid and null gid (full wild card)
  * The permissions can also have a request type. Default is null, that is everything
  */
CREATE OR REPLACE PACKAGE castorBW AS
  -- defines a privilege
  TYPE Privilege IS RECORD (
    svcClass VARCHAR2(2048),
    euid NUMBER,
    egid NUMBER,
    reqType NUMBER);
  -- defines a privilege, plus a "direction"
  TYPE PrivilegeExt IS RECORD (
    svcClass VARCHAR2(2048),
    euid NUMBER,
    egid NUMBER,
    reqType NUMBER,
    isGranted NUMBER);
  -- a cursor of privileges
  TYPE PrivilegeExt_Cur IS REF CURSOR RETURN PrivilegeExt;
  -- Intersection of 2 privileges
  -- raises -20109, "Empty privilege" in case the intersection is empty
  FUNCTION intersection(p1 IN Privilege, p2 IN Privilege) RETURN Privilege;
  -- Does one privilege P1 contain another one P2 ?
  FUNCTION contains(p1 Privilege, p2 Privilege) RETURN Boolean;
  -- Intersection of a privilege P with the WhiteList
  -- The result is stored in the temporary table removePrivilegeTmpTable
  -- that is cleaned up when the procedure starts
  PROCEDURE intersectionWithWhiteList(p Privilege);
  -- Difference between privilege P1 and privilege P2
  -- raises -20108, "Invalid privilege intersection" in case the difference
  -- can not be computed
  -- raises -20109, "Empty privilege" in case the difference is empty
  FUNCTION diff(P1 Privilege, P2 Privilege) RETURN Privilege;
  -- remove privilege P from list L
  PROCEDURE removePrivilegeFromBlackList(p Privilege);
  -- Add privilege P to WhiteList
  PROCEDURE addPrivilegeToWL(p Privilege);
  -- Add privilege P to BlackList
  PROCEDURE addPrivilegeToBL(p Privilege);
  -- cleanup BlackList after privileges were removed from the whitelist
  PROCEDURE cleanupBL;
  -- Add privilege P
  PROCEDURE addPrivilege(P Privilege);
  -- Remove privilege P
  PROCEDURE removePrivilege(P Privilege);
  -- Add privilege(s)
  PROCEDURE addPrivilege(svcClassName VARCHAR2, euid NUMBER, egid NUMBER, reqType NUMBER);
  -- Remove privilege(S)
  PROCEDURE removePrivilege(svcClassName VARCHAR2, euid NUMBER, egid NUMBER, reqType NUMBER);
  -- List privilege(s)
  PROCEDURE listPrivileges(svcClassName IN VARCHAR2, ieuid IN NUMBER,
                           iegid IN NUMBER, ireqType IN NUMBER,
                           plist OUT PrivilegeExt_Cur);
END castorBW;
/

CREATE OR REPLACE PACKAGE BODY castorBW AS

  -- Intersection of 2 privileges
  FUNCTION intersection(p1 IN Privilege, p2 IN Privilege)
  RETURN Privilege AS
    res Privilege;
  BEGIN
    IF p1.euid IS NULL OR p1.euid = p2.euid THEN
      res.euid := p2.euid;
    ELSIF p2.euid IS NULL THEN
      res.euid := p1.euid;
    ELSE
      raise_application_error(-20109, 'Empty privilege');
    END IF;
    IF p1.egid IS NULL OR p1.egid = p2.egid THEN
      res.egid := p2.egid;
    ELSIF p2.egid IS NULL THEN
      res.egid := p1.egid;
    ELSE
      raise_application_error(-20109, 'Empty privilege');
    END IF;
    IF p1.svcClass IS NULL OR p1.svcClass = p2.svcClass THEN
      res.svcClass := p2.svcClass;
    ELSIF p2.svcClass IS NULL THEN
      res.svcClass := p1.svcClass;
    ELSE
      raise_application_error(-20109, 'Empty privilege');
    END IF;
    IF p1.reqType IS NULL OR p1.reqType = p2.reqType THEN
      res.reqType := p2.reqType;
    ELSIF p2.reqType IS NULL THEN
      res.reqType := p1.reqType;
    ELSE
      raise_application_error(-20109, 'Empty privilege');
    END IF;
    RETURN res;
  END;

  -- Does one privilege P1 contain another one P2 ?
  FUNCTION contains(p1 Privilege, p2 Privilege) RETURN Boolean AS
  BEGIN
    IF p1.euid IS NOT NULL -- p1 NULL means it contains everything !
       AND (p2.euid IS NULL OR p1.euid != p2.euid) THEN
      RETURN FALSE;
    END IF;
    IF p1.egid IS NOT NULL -- p1 NULL means it contains everything !
       AND (p2.egid IS NULL OR p1.egid != p2.egid) THEN
      RETURN FALSE;
    END IF;
    IF p1.svcClass IS NOT NULL -- p1 NULL means it contains everything !
       AND (p2.svcClass IS NULL OR p1.svcClass != p2.svcClass) THEN
      RETURN FALSE;
    END IF;
    IF p1.reqType IS NOT NULL -- p1 NULL means it contains everything !
       AND (p2.reqType IS NULL OR p1.reqType != p2.reqType) THEN
      RETURN FALSE;
    END IF;
    RETURN TRUE;
  END;

  -- Intersection of a privilege P with the WhiteList
  -- The result is stored in the temporary table removePrivilegeTmpTable
  PROCEDURE intersectionWithWhiteList(p Privilege) AS
    wlr Privilege;
    tmp Privilege;
    empty_privilege EXCEPTION;
    PRAGMA EXCEPTION_INIT(empty_privilege, -20109);
  BEGIN
    DELETE FROM RemovePrivilegeTmpTable;
    FOR r IN (SELECT * FROM WhiteList) LOOP
      BEGIN
        wlr.svcClass := r.svcClass;
        wlr.euid := r.euid;
        wlr.egid := r.egid;
        wlr.reqType := r.reqType;
        tmp := intersection(wlr, p);
        INSERT INTO RemovePrivilegeTmpTable
        VALUES (tmp.svcClass, tmp.euid, tmp.egid, tmp.reqType);
      EXCEPTION WHEN empty_privilege THEN
        NULL;
      END;
    END LOOP;
  END;

  -- Difference between privilege P1 and privilege P2
  FUNCTION diff(P1 Privilege, P2 Privilege) RETURN Privilege AS
    empty_privilege EXCEPTION;
    PRAGMA EXCEPTION_INIT(empty_privilege, -20109);
    unused Privilege;
  BEGIN
    IF contains(P1, P2) THEN
      IF (P1.euid = P2.euid OR (P1.euid IS NULL AND P2.euid IS NULL)) AND
         (P1.egid = P2.egid OR (P1.egid IS NULL AND P2.egid IS NULL)) AND
         (P1.svcClass = P2.svcClass OR (P1.svcClass IS NULL AND P2.svcClass IS NULL)) AND
         (P1.reqType = P2.reqType OR (P1.reqType IS NULL AND P2.reqType IS NULL)) THEN
        raise_application_error(-20109, 'Empty privilege');
      ELSE
        raise_application_error(-20108, 'Invalid privilege intersection');
      END IF;
    ELSIF contains(P2, P1) THEN
      raise_application_error(-20109, 'Empty privilege');
    ELSE
      BEGIN
        unused := intersection(P1, P2);
        -- no exception, so the intersection is not empty.
        -- we don't know how to handle such a case
        raise_application_error(-20108, 'Invalid privilege intersection');
      EXCEPTION WHEN empty_privilege THEN
      -- P1 and P2 do not intersect, the diff is thus P1
        RETURN P1;
      END;
    END IF;
  END;

  -- remove privilege P from list L
  PROCEDURE removePrivilegeFromBlackList(p Privilege) AS
    blr Privilege;
    tmp Privilege;
    empty_privilege EXCEPTION;
    PRAGMA EXCEPTION_INIT(empty_privilege, -20109);
  BEGIN
    FOR r IN (SELECT * FROM BlackList) LOOP
      BEGIN
        blr.svcClass := r.svcClass;
        blr.euid := r.euid;
        blr.egid := r.egid;
        blr.reqType := r.reqType;
        tmp := diff(blr, p);
      EXCEPTION WHEN empty_privilege THEN
        -- diff raised an exception saying that the diff is empty
        -- thus we drop the line
        DELETE FROM BlackList
         WHERE nvl(svcClass, -1) = nvl(r.svcClass, -1) AND
               nvl(euid, -1) = nvl(r.euid, -1) AND
               nvl(egid, -1) = nvl(r.egid, -1) AND
               nvl(reqType, -1) = nvl(r.reqType, -1);
      END;
    END LOOP;
  END;

  -- Add privilege P to list L :
  PROCEDURE addPrivilegeToWL(p Privilege) AS
    wlr Privilege;
    extended boolean := FALSE;
    ret NUMBER;
  BEGIN
    -- check if the service class exists
    ret := checkForValidSvcClass(p.svcClass, 1, 1);

    FOR r IN (SELECT * FROM WhiteList) LOOP
      wlr.svcClass := r.svcClass;
      wlr.euid := r.euid;
      wlr.egid := r.egid;
      wlr.reqType := r.reqType;
      -- check if we extend a privilege
      IF contains(p, wlr) THEN
        IF extended THEN
          -- drop this row, it merged into the new one
          DELETE FROM WhiteList
           WHERE nvl(svcClass, -1) = nvl(wlr.svcClass, -1) AND
                 nvl(euid, -1) = nvl(wlr.euid, -1) AND
                 nvl(egid, -1) = nvl(wlr.egid, -1) AND
                 nvl(reqType, -1) = nvl(wlr.reqType, -1);
        ELSE
          -- replace old row with new one
          UPDATE WhiteList
             SET svcClass = p.svcClass,
                 euid = p.euid,
                 egid = p.egid,
                 reqType = p.reqType
           WHERE nvl(svcClass, -1) = nvl(wlr.svcClass, -1) AND
                 nvl(euid, -1) = nvl(wlr.euid, -1) AND
                 nvl(egid, -1) = nvl(wlr.egid, -1) AND
                 nvl(reqType, -1) = nvl(wlr.reqType, -1);
          extended := TRUE;
        END IF;
      END IF;
      -- check if privilege is there
      IF contains(wlr, p) THEN RETURN; END IF;
    END LOOP;
    IF NOT extended THEN
      INSERT INTO WhiteList VALUES p;
    END IF;
  END;

  -- Add privilege P to list L :
  PROCEDURE addPrivilegeToBL(p Privilege) AS
    blr Privilege;
    extended boolean := FALSE;
    ret NUMBER;
  BEGIN
    -- check if the service class exists
    ret := checkForValidSvcClass(p.svcClass, 1, 1);

    FOR r IN (SELECT * FROM BlackList) LOOP
      blr.svcClass := r.svcClass;
      blr.euid := r.euid;
      blr.egid := r.egid;
      blr.reqType := r.reqType;
      -- check if privilege is there
      IF contains(blr, p) THEN RETURN; END IF;
      -- check if we extend a privilege
      IF contains(p, blr) THEN
        IF extended THEN
          -- drop this row, it merged into the new one
          DELETE FROM BlackList
           WHERE nvl(svcClass, -1) = nvl(blr.svcClass, -1) AND
                 nvl(euid, -1) = nvl(blr.euid, -1) AND
                 nvl(egid, -1) = nvl(blr.egid, -1) AND
                 nvl(reqType, -1) = nvl(blr.reqType, -1);
        ELSE
          -- replace old row with new one
          UPDATE BlackList
             SET svcClass = p.svcClass,
                 euid = p.euid,
                 egid = p.egid,
                 reqType = p.reqType
           WHERE nvl(svcClass, -1) = nvl(blr.svcClass, -1) AND
                 nvl(euid, -1) = nvl(blr.euid, -1) AND
                 nvl(egid, -1) = nvl(blr.egid, -1) AND
                 nvl(reqType, -1) = nvl(blr.reqType, -1);
          extended := TRUE;
        END IF;
      END IF;
    END LOOP;
    IF NOT extended THEN
      INSERT INTO BlackList VALUES p;
    END IF;
  END;

  -- cleanup BlackList when a privilege was removed from the whitelist
  PROCEDURE cleanupBL AS
    blr Privilege;
    c NUMBER;
  BEGIN
    FOR r IN (SELECT * FROM BlackList) LOOP
      blr.svcClass := r.svcClass;
      blr.euid := r.euid;
      blr.egid := r.egid;
      blr.reqType := r.reqType;
      intersectionWithWhiteList(blr);
      SELECT COUNT(*) INTO c FROM RemovePrivilegeTmpTable;
      IF c = 0 THEN
        -- we can safely drop this line
        DELETE FROM BlackList
         WHERE nvl(svcClass, -1) = nvl(r.svcClass, -1) AND
               nvl(euid, -1) = nvl(r.euid, -1) AND
               nvl(egid, -1) = nvl(r.egid, -1) AND
               nvl(reqType, -1) = nvl(r.reqType, -1);
      END IF;
    END LOOP;
  END;

  -- Add privilege P
  PROCEDURE addPrivilege(P Privilege) AS
  BEGIN
    removePrivilegeFromBlackList(P);
    addPrivilegeToWL(P);
  END;

  -- Remove privilege P
  PROCEDURE removePrivilege(P Privilege) AS
    c NUMBER;
    wlr Privilege;
  BEGIN
    -- Check first whether there is something to remove
    intersectionWithWhiteList(P);
    SELECT COUNT(*) INTO c FROM RemovePrivilegeTmpTable;
    IF c = 0 THEN RETURN; END IF;
    -- Remove effectively what can be removed
    FOR r IN (SELECT * FROM WHITELIST) LOOP
      wlr.svcClass := r.svcClass;
      wlr.euid := r.euid;
      wlr.egid := r.egid;
      wlr.reqType := r.reqType;
      IF contains(P, wlr) THEN
        DELETE FROM WhiteList
         WHERE nvl(svcClass, -1) = nvl(wlr.svcClass, -1) AND
               nvl(euid, -1) = nvl(wlr.euid, -1) AND
               nvl(egid, -1) = nvl(wlr.egid, -1) AND
               nvl(reqType, -1) = nvl(wlr.reqType, -1);
      END IF;
    END LOOP;
    -- cleanup blackList
    cleanUpBL();
    -- check what remains
    intersectionWithWhiteList(P);
    SELECT COUNT(*) INTO c FROM removePrivilegeTmpTable;
    IF c = 0 THEN RETURN; END IF;
    -- If any, add them to blackList
    FOR q IN (SELECT * FROM RemovePrivilegeTmpTable) LOOP
      wlr.svcClass := q.svcClass;
      wlr.euid := q.euid;
      wlr.egid := q.egid;
      wlr.reqType := q.reqType;
      addPrivilegeToBL(wlr);
    END LOOP;
  END;

  -- Add privilege
  PROCEDURE addPrivilege(svcClassName VARCHAR2, euid NUMBER, egid NUMBER, reqType NUMBER) AS
    p castorBW.Privilege;
  BEGIN
    p.svcClass := svcClassName;
    p.euid := euid;
    p.egid := egid;
    p.reqType := reqType;
    addPrivilege(p);
  END;

  -- Remove privilege
  PROCEDURE removePrivilege(svcClassName VARCHAR2, euid NUMBER, egid NUMBER, reqType NUMBER) AS
    p castorBW.Privilege;
  BEGIN
    p.svcClass := svcClassName;
    p.euid := euid;
    p.egid := egid;
    p.reqType := reqType;
    removePrivilege(p);
  END;

  -- List privileges
  PROCEDURE listPrivileges(svcClassName IN VARCHAR2, ieuid IN NUMBER,
                           iegid IN NUMBER, ireqType IN NUMBER,
                           plist OUT PrivilegeExt_Cur) AS
  BEGIN
    OPEN plist FOR
      SELECT decode(svcClass, NULL, '*', '*', '''*''', svcClass),
             euid, egid, reqType, 1
        FROM WhiteList
       WHERE (WhiteList.svcClass = svcClassName OR WhiteList.svcClass IS  NULL OR svcClassName IS NULL)
         AND (WhiteList.euid = ieuid OR WhiteList.euid IS NULL OR ieuid = -1)
         AND (WhiteList.egid = iegid OR WhiteList.egid IS NULL OR iegid = -1)
         AND (WhiteList.reqType = ireqType OR WhiteList.reqType IS NULL OR ireqType = 0)
    UNION
      SELECT decode(svcClass, NULL, '*', '*', '''*''', svcClass),
             euid, egid, reqType, 0
        FROM BlackList
       WHERE (BlackList.svcClass = svcClassName OR BlackList.svcClass IS  NULL OR svcClassName IS NULL)
         AND (BlackList.euid = ieuid OR BlackList.euid IS NULL OR ieuid = -1)
         AND (BlackList.egid = iegid OR BlackList.egid IS NULL OR iegid = -1)
         AND (BlackList.reqType = ireqType OR BlackList.reqType IS NULL OR ireqType = 0);
  END;

END castorBW;
/

/*******************************************************************
 *
 * @(#)RCSfile: oracleStager.sql,v  Revision: 1.706.2.4  Date: 2008/12/18 16:36:49  Author: sponcec3 
 *
 * PL/SQL code for the stager and resource monitoring
 *
 * @author Castor Dev team, castor-dev@cern.ch
 *******************************************************************/

/* PL/SQL declaration for the castor package */
CREATE OR REPLACE PACKAGE castor AS
  TYPE DiskCopyCore IS RECORD (
    id INTEGER,
    path VARCHAR2(2048),
    status NUMBER,
    fsWeight NUMBER,
    mountPoint VARCHAR2(2048),
    diskServer VARCHAR2(2048));
  TYPE DiskCopy_Cur IS REF CURSOR RETURN DiskCopyCore;
  TYPE TapeCopy_Cur IS REF CURSOR RETURN TapeCopy%ROWTYPE;
  TYPE Segment_Cur IS REF CURSOR RETURN Segment%ROWTYPE;
  TYPE StreamCore IS RECORD (
    id INTEGER,
    initialSizeToTransfer INTEGER,
    status NUMBER,
    tapePoolId NUMBER,
    tapePoolName VARCHAR2(2048));
  TYPE Stream_Cur IS REF CURSOR RETURN StreamCore;
  TYPE "strList" IS TABLE OF VARCHAR2(2048) index BY binary_integer;
  TYPE "cnumList" IS TABLE OF NUMBER INDEX BY binary_integer;
  TYPE QueryLine IS RECORD (
    fileid INTEGER,
    nshost VARCHAR2(2048),
    diskCopyId INTEGER,
    diskCopyPath VARCHAR2(2048),
    filesize INTEGER,
    diskCopyStatus INTEGER,
    diskServerName VARCHAR2(2048),
    fileSystemMountPoint VARCHAR2(2048),
    nbaccesses INTEGER,
    lastKnownFileName VARCHAR2(2048));
  TYPE QueryLine_Cur IS REF CURSOR RETURN QueryLine;
  TYPE FileList_Cur IS REF CURSOR RETURN FilesDeletedProcOutput%ROWTYPE;
  TYPE DiskPoolQueryLine IS RECORD (
    isDP INTEGER,
    isDS INTEGER,
    diskServerName VARCHAR(2048),
    diskServerStatus INTEGER,
    fileSystemmountPoint VARCHAR(2048),
    fileSystemfreeSpace INTEGER,
    fileSystemtotalSpace INTEGER,
    fileSystemminfreeSpace INTEGER,
    fileSystemmaxFreeSpace INTEGER,
    fileSystemStatus INTEGER);
  TYPE DiskPoolQueryLine_Cur IS REF CURSOR RETURN DiskPoolQueryLine;
  TYPE DiskPoolsQueryLine IS RECORD (
    isDP INTEGER,
    isDS INTEGER,
    diskPoolName VARCHAR(2048),
    diskServerName VARCHAR(2048),
    diskServerStatus INTEGER,
    fileSystemmountPoint VARCHAR(2048),
    fileSystemfreeSpace INTEGER,
    fileSystemtotalSpace INTEGER,
    fileSystemminfreeSpace INTEGER,
    fileSystemmaxFreeSpace INTEGER,
    fileSystemStatus INTEGER);
  TYPE DiskPoolsQueryLine_Cur IS REF CURSOR RETURN DiskPoolsQueryLine;
  TYPE IDRecord IS RECORD (id INTEGER);
  TYPE IDRecord_Cur IS REF CURSOR RETURN IDRecord;
  TYPE DiskServerName IS RECORD (diskServer VARCHAR(2048));
  TYPE DiskServerList_Cur IS REF CURSOR RETURN DiskServerName;
  TYPE SchedulerResourceLine IS RECORD (
    diskServerName VARCHAR(2048),
    diskServerStatus INTEGER,
    diskServerAdminStatus INTEGER,
    fileSystemMountPoint VARCHAR(2048),
    fileSystemStatus INTEGER,
    fileSystemAdminStatus INTEGER,
    fileSystemSvcClassName VARCHAR(2048));
  TYPE SchedulerResources_Cur IS REF CURSOR RETURN SchedulerResourceLine;
  TYPE FileEntry IS RECORD (
    fileid INTEGER,
    nshost VARCHAR2(2048));
  TYPE FileEntry_Cur IS REF CURSOR RETURN FileEntry;
  TYPE DbMigrationInfo IS RECORD (
    id NUMBER,
    copyNb NUMBER,
    fileName VARCHAR2(2048),
    nsHost VARCHAR2(2048),
    fileId NUMBER,
    fileSize NUMBER);
  TYPE DbMigrationInfo_Cur IS REF CURSOR RETURN DbMigrationInfo;
  TYPE DbStreamInfo IS RECORD (
    id NUMBER,
    numFile NUMBER,
    byteVolume NUMBER);
  TYPE DbStreamInfo_Cur IS REF CURSOR RETURN DbStreamInfo;
  TYPE DbRecallInfo IS RECORD (
    vid VARCHAR2(2048),
    tapeId NUMBER,
    dataVolume NUMBER,
    numbFiles NUMBER,
    expireTime NUMBER,
    priority NUMBER);
  TYPE DbRecallInfo_Cur IS REF CURSOR RETURN DbRecallInfo;
  TYPE PriorityMap_Cur IS REF CURSOR RETURN PriorityMap%ROWTYPE;
END castor;
/


/* Checks consistency of DiskCopies when a FileSystem comes
 * back in production after a period spent in a DRAINING or a
 * DISABLED status.
 * Current checks/fixes include :
 *   - Canceling recalls for files that are STAGED or CANBEMIGR
 *     on the fileSystem that comes back. (Scheduled for bulk
 *     operation)
 *   - Dealing with files that are STAGEOUT on the fileSystem
 *     coming back but already exist on another one
 */
CREATE OR REPLACE PROCEDURE checkFSBackInProd(fsId NUMBER) AS
  srIds "numList";
BEGIN
  -- Flag the filesystem for processing in a bulk operation later.
  -- We need to do this because some operations are database intensive
  -- and therefore it is often better to process several filesystems
  -- simultaneous with one query as opposed to one by one. Especially
  -- where full table scans are involved.
  UPDATE FileSystemsToCheck SET toBeChecked = 1
   WHERE fileSystem = fsId;
  -- Look for files that are STAGEOUT on the filesystem coming back to life
  -- but already STAGED/CANBEMIGR/WAITTAPERECALL/WAITFS/STAGEOUT/
  -- WAITFS_SCHEDULING somewhere else
  FOR cf IN (SELECT UNIQUE d.castorfile, d.id
               FROM DiskCopy d, DiskCopy e
              WHERE d.castorfile = e.castorfile
                AND d.fileSystem = fsId
                AND e.fileSystem != fsId
                AND d.status = 6 -- STAGEOUT
                AND e.status IN (0, 10, 2, 5, 6, 11)) LOOP -- STAGED/CANBEMIGR/WAITTAPERECALL/WAITFS/STAGEOUT/WAITFS_SCHEDULING
    -- Invalidate the DiskCopy
    UPDATE DiskCopy
       SET status = 7  -- INVALID
     WHERE id = cf.id;
    -- Look for requests associated to the diskCopy and restart
    -- it and all the waiting ones
    UPDATE SubRequest SET status = 7 -- FAILED
     WHERE diskCopy = cf.id RETURNING id BULK COLLECT INTO srIds;
    UPDATE SubRequest
       SET status = 7, parent = 0 -- FAILED
     WHERE status = 5 -- WAITSUBREQ
       AND parent IN
         (SELECT /*+ CARDINALITY(sridTable 5) */ *
            FROM TABLE(srIds) sridTable)
       AND castorfile = cf.castorfile;
  END LOOP;
END;
/


/* PL/SQL method implementing bulkCheckFSBackInProd for processing
 * filesystems in one bulk operation to optimise database performance
 */
CREATE OR REPLACE PROCEDURE bulkCheckFSBackInProd AS
  fsIds "numList";
BEGIN
  -- Extract a list of filesystems which have been scheduled to be
  -- checked in a bulk operation on the database.
  UPDATE FileSystemsToCheck SET toBeChecked = 0
   WHERE toBeChecked = 1
  RETURNING fileSystem BULK COLLECT INTO fsIds;
  -- Nothing found, return
  IF fsIds.COUNT = 0 THEN
    RETURN;
  END IF;
  -- Look for recalls concerning files that are STAGED or CANBEMIGR
  -- on all filesystems scheduled to be checked.
  FOR cf IN (SELECT UNIQUE d.castorfile, e.id
               FROM DiskCopy d, DiskCopy e
              WHERE d.castorfile = e.castorfile
                AND d.fileSystem IN
                  (SELECT /*+ CARDINALITY(fsidTable 5) */ *
                     FROM TABLE(fsIds) fsidTable)
                AND d.status IN (0, 10)
                AND e.status = 2) LOOP
    -- Cancel recall and restart subrequests
    cancelRecall(cf.castorfile, cf.id, 1); -- RESTART
  END LOOP;
END;
/


/* Used to check consistency of diskcopies when a filesytem
   comes back to production after having been disabled for
   some time */
CREATE OR REPLACE TRIGGER tr_FileSystem_Update
BEFORE UPDATE of status ON FileSystem
FOR EACH ROW
WHEN (old.status IN (1, 2) AND -- DRAINING, DISABLED
      new.status = 0) -- PRODUCTION
DECLARE
  s NUMBER;
BEGIN
  SELECT status INTO s FROM DiskServer WHERE id = :old.diskServer;
  IF s = 0 THEN
    checkFSBackInProd(:old.id);
  END IF;
END;
/


/* Used to check consistency of diskcopies when filesytems
   comes back to production after having been disabled for
   some time */
CREATE OR REPLACE TRIGGER tr_DiskServer_Update
BEFORE UPDATE of status ON DiskServer
FOR EACH ROW
WHEN (old.status IN (1, 2) AND -- DRAINING, DISABLED
      new.status = 0) -- PRODUCTION
BEGIN
  FOR fs IN (SELECT id, status FROM FileSystem WHERE diskServer = :old.id) LOOP
    IF fs.status = 0 THEN
      checkFSBackInProd(fs.id);
    END IF;
  END LOOP;
END;
/


/* Trigger used to check if the maxReplicaNb has been exceeded
 * after a diskcopy has changed its status to STAGED or CANBEMIGR
 */
CREATE OR REPLACE TRIGGER tr_DiskCopy_Stmt_Online
AFTER UPDATE OF STATUS ON DISKCOPY
DECLARE
  svcId NUMBER;
  maxReplicaNb NUMBER;
  srIds "numList";
  svcCount NUMBER;
BEGIN
  -- Loop over the diskcopies to be processed
  FOR a IN (SELECT * FROM TooManyReplicasHelper)
  LOOP
    -- If the filesystem belongs to multiple service classes
    -- do nothing as this is not supported!
    SELECT count(*) INTO svcCount
      FROM FileSystem, DiskPool2SvcClass
     WHERE FileSystem.diskpool = DiskPool2SvcClass.parent
       AND FileSystem.id = a.filesystem;
    IF svcCount > 1 THEN
      RETURN;  -- Not supported
    END IF;
    -- Get the service class id and max replica number of the
    -- service class the diskcopy belongs too
    SELECT SvcClass.id, SvcClass.maxReplicaNb
      INTO svcId, maxReplicaNb
      FROM FileSystem, DiskPool2SvcClass, SvcClass
     WHERE FileSystem.diskpool = DiskPool2SvcClass.parent
       AND DiskPool2SvcClass.child = SvcClass.id
       AND FileSystem.id = a.filesystem;
    -- Produce a list of diskcopies to invalidate should too
    -- many replicas be online.
    -- Note: This check deliberately ignores the status of the
    -- filesystems and diskservers!
    FOR b IN (SELECT DiskCopy.id FROM (
                SELECT rownum ind, DiskCopy.id
                  FROM DiskCopy, FileSystem, DiskPool2SvcClass, SvcClass, DiskServer
                 WHERE DiskCopy.filesystem = FileSystem.id
                   AND FileSystem.diskpool = DiskPool2SvcClass.parent
                   AND FileSystem.diskserver = DiskServer.id
                   AND DiskPool2SvcClass.child = SvcClass.id
                   AND DiskCopy.castorfile = a.castorfile
                   -- Ignore the diskcopy being processed!!!!!
                   AND DiskCopy.id != a.id
                   AND DiskCopy.status IN (0, 10)  -- STAGED, CANBEMIGR
                   AND SvcClass.id = svcId  
                 -- Select DISABLED or DRAINING hardware first
                 ORDER BY decode(FileSystem.status, 0,
                          decode(DiskServer.status, 0, 0, 1), 1) ASC,
                          DiskCopy.gcWeight DESC) DiskCopy
              WHERE ind > (maxReplicaNb - 1))
    LOOP
      -- Invalidate the diskcopy
      UPDATE DiskCopy
         SET status = 7,  -- INVALID
             gcType = 2   -- Too many replicas
       WHERE id = b.id;
      -- Look for requests associated to the diskCopy and restart
      -- it and all the waiting ones
      UPDATE SubRequest SET status = 7 -- FAILED
       WHERE diskCopy = b.id RETURNING id BULK COLLECT INTO srIds;
      UPDATE SubRequest
         SET status = 7, parent = 0 -- FAILED
       WHERE status = 5 -- WAITSUBREQ
         AND parent IN
           (SELECT /*+ CARDINALITY(sridTable 5) */ *
              FROM TABLE(srIds) sridTable)
         AND castorfile = a.castorfile;
    END LOOP;
  END LOOP;
END;
/


/* Trigger used to update the accounting (Quota) information and
 * provide input to the statement level trigger defined above
 */
CREATE OR REPLACE TRIGGER tr_DiskCopy_Online
AFTER UPDATE OF status ON DiskCopy
FOR EACH ROW
WHEN ((new.status = 0 OR new.status = 10) AND -- STAGED, CANBEMIGR
       old.status != 10) -- CANBEMIGR (don't double count migrations)
BEGIN
  -- Update accouting figures
  MERGE INTO Accounting
  USING (SELECT :new.owneruid euid, :new.diskCopySize fileSize, diskPool
           FROM FileSystem
          WHERE FileSystem.id = :new.FileSystem) DC
     ON (Accounting.euid = DC.euid AND
         Accounting.diskPool = DC.diskPool)
   WHEN MATCHED THEN UPDATE SET nbBytes = nbBytes + DC.fileSize
   WHEN NOT MATCHED THEN INSERT (euid, nbBytes, diskPool)
                         VALUES (DC.euid, DC.fileSize, DC.diskPool);

  -- Insert the information about the diskcopy being processed into
  -- the TooManyReplicasHelper. This information will be used later
  -- on the DiskCopy AFTER UPDATE statement level trigger. We cannot
  -- do the work of that trigger here as it would result in
  -- `ORA-04091: table is mutating, trigger/function` errors
  INSERT INTO TooManyReplicasHelper
  VALUES (:new.id, :new.filesystem, :new.castorfile);
END;
/


/* Trigger used to update the accounting (Quota) information */
CREATE OR REPLACE TRIGGER tr_DiskCopy_Offline
AFTER UPDATE OF status ON DiskCopy
FOR EACH ROW
WHEN ((old.status = 0 OR old.status = 10) AND -- STAGED, CANBEMIGR
       new.status != 0) -- STAGED (don't double count migrations)
BEGIN
  -- Update accounting figures
  UPDATE Accounting
     SET nbBytes = nbBytes - :new.diskCopySize
   WHERE Accounting.euid = :new.owneruid
     AND Accounting.diskPool =
         (SELECT diskPool
            FROM FileSystem
           WHERE FileSystem.id = :new.FileSystem);
END;
/


/***************************************/
/* Some triggers to prevent dead locks */
/***************************************/

/* Used to avoid LOCK TABLE TapeCopy whenever someone wants
   to deal with the tapeCopies on a CastorFile.
   Due to this trigger, locking the CastorFile is enough
   to be safe */
CREATE OR REPLACE TRIGGER tr_TapeCopy_CastorFile
BEFORE INSERT OR UPDATE OF castorFile ON TapeCopy
FOR EACH ROW WHEN (new.castorFile > 0)
DECLARE
  unused NUMBER;
BEGIN
  SELECT id INTO unused FROM CastorFile
   WHERE id = :new.castorFile FOR UPDATE;
END;
/


/* Used to avoid LOCK TABLE TapeCopy whenever someone wants
   to deal with the tapeCopies on a CastorFile.
   Due to this trigger, locking the CastorFile is enough
   to be safe */
CREATE OR REPLACE TRIGGER tr_DiskCopy_CastorFile
BEFORE INSERT OR UPDATE OF castorFile ON DiskCopy
FOR EACH ROW WHEN (new.castorFile > 0)
DECLARE
  unused NUMBER;
BEGIN
  SELECT id INTO unused FROM CastorFile
   WHERE id = :new.castorFile FOR UPDATE;
END;
/


/* PL/SQL method to get the next SubRequest to do according to the given service */
CREATE OR REPLACE PROCEDURE subRequestToDo(service IN VARCHAR2,
                                           srId OUT INTEGER, srRetryCounter OUT INTEGER, srFileName OUT VARCHAR2,
                                           srProtocol OUT VARCHAR2, srXsize OUT INTEGER, srPriority OUT INTEGER,
                                           srStatus OUT INTEGER, srModeBits OUT INTEGER, srFlags OUT INTEGER,
                                           srSubReqId OUT VARCHAR2, srAnswered OUT INTEGER, srSvcHandler OUT VARCHAR2) AS
InvalidRowid EXCEPTION;
PRAGMA EXCEPTION_INIT (InvalidRowid, -10632);
BEGIN
  srId := 0;
  UPDATE SubRequest SET status = 3, subReqId = nvl(subReqId, uuidGen()) -- WAITSCHED
   WHERE id = (
     SELECT id FROM (
       SELECT /*+ INDEX(SR I_SubRequest_RT_CT_ID) */ SR.id
         FROM SubRequest PARTITION (P_STATUS_0_1_2) SR
        WHERE SR.svcHandler = service
        ORDER BY SR.creationTime ASC
     )
      WHERE ROWNUM < 2
  )
  RETURNING id, retryCounter, fileName, protocol, xsize, priority, status, modeBits, flags, subReqId, answered, svcHandler
  INTO srId, srRetryCounter, srFileName, srProtocol, srXsize, srPriority, srStatus, srModeBits, srFlags, srSubReqId, srAnswered, srSvcHandler;
EXCEPTION WHEN NO_DATA_FOUND THEN
  -- just return srId = 0, nothing to do
  NULL;
WHEN InvalidRowid THEN
  -- Ignore random ORA-10632 errors (invalid rowid) due to interferences with the online shrinking
  NULL;
END;
/


/* PL/SQL method to get the next failed SubRequest to do according to the given service */
/* the service parameter is not used now, it will with the new stager */
CREATE OR REPLACE PROCEDURE subRequestFailedToDo(srId OUT INTEGER, srRetryCounter OUT INTEGER, srFileName OUT VARCHAR2,
                                                 srProtocol OUT VARCHAR2, srXsize OUT INTEGER, srPriority OUT INTEGER,
                                                 srStatus OUT INTEGER, srModeBits OUT INTEGER, srFlags OUT INTEGER,
                                                 srSubReqId OUT VARCHAR2, srErrorCode OUT NUMBER,
                                                 srErrorMessage OUT VARCHAR2) AS
LockError EXCEPTION;
PRAGMA EXCEPTION_INIT (LockError, -54);
InvalidRowid EXCEPTION;
PRAGMA EXCEPTION_INIT (InvalidRowid, -10632);
CURSOR c IS
   SELECT id, answered
     FROM SubRequest
    WHERE status = 7  -- FAILED
      AND ROWNUM < 2
    FOR UPDATE SKIP LOCKED;
srAnswered INTEGER;
BEGIN
  srId := 0;
  OPEN c;
  FETCH c INTO srId, srAnswered;
  IF srAnswered = 1 THEN
    -- already answered, ignore it
    UPDATE SubRequest SET status = 9 WHERE id = srId;  -- FAILED_FINISHED
    srId := 0;
  ELSE
    UPDATE subrequest SET status = 10 WHERE id = srId   -- FAILED_ANSWERING
      RETURNING retryCounter, fileName, protocol, xsize, priority, status,
                modeBits, flags, subReqId, errorCode, errorMessage
      INTO srRetryCounter, srFileName, srProtocol, srXsize, srPriority, srStatus,
           srModeBits, srFlags, srSubReqId, srErrorCode, srErrorMessage;
  END IF;
  CLOSE c;
EXCEPTION WHEN NO_DATA_FOUND THEN
  -- just return srId = 0, nothing to do
  NULL;
WHEN InvalidRowid THEN
  -- Ignore random ORA-10632 errors (invalid rowid) due to interferences with the online shrinking
  NULL;
WHEN LockError THEN
  -- We have observed ORA-00054 errors (resource busy and acquire with NOWAIT) even with
  -- the SKIP LOCKED clause. This is a workaround to ignore the error until we understand
  -- what to do, another thread will pick up the request so we don't do anything.
  NULL;
END;
/


/* PL/SQL method to get the next request to do according to the given service */
CREATE OR REPLACE PROCEDURE requestToDo(service IN VARCHAR2, rId OUT INTEGER) AS
BEGIN
  DELETE FROM NewRequests
   WHERE type IN (
     SELECT type FROM Type2Obj
      WHERE svcHandler = service
     )
   AND ROWNUM < 2 RETURNING id INTO rId;
EXCEPTION WHEN NO_DATA_FOUND THEN
  rId := 0;   -- nothing to do
END;
/


/* PL/SQL method to make a SubRequest wait on another one, linked to the given DiskCopy */
CREATE OR REPLACE PROCEDURE makeSubRequestWait(srId IN INTEGER, dci IN INTEGER) AS
BEGIN
  -- all wait on the original one; also prevent to wait on a PrepareToPut, for the
  -- case when Updates and Puts come after a PrepareToPut and they need to wait on
  -- the first Update|Put to complete.
  -- Cf. recreateCastorFile and the DiskCopy statuses 5 and 11
  UPDATE SubRequest
     SET parent = (SELECT SubRequest.id
                     FROM SubRequest, DiskCopy, Id2Type
                    WHERE SubRequest.diskCopy = DiskCopy.id
                      AND DiskCopy.id = dci
                      AND SubRequest.request = Id2Type.id
                      AND Id2Type.type <> 37  -- OBJ_PrepareToPut
                      AND SubRequest.parent = 0
                      AND DiskCopy.status IN (1, 2, 5, 6, 11) -- WAITDISK2DISKCOPY, WAITTAPERECALL, WAITFS, STAGEOUT, WAITFS_SCHEDULING
                      AND SubRequest.status IN (0, 1, 2, 4, 13, 14, 6)), -- START, RESTART, RETRY, WAITTAPERECALL, WAITFORSCHED, BEINGSCHED, READY
        status = 5, -- WAITSUBREQ
        lastModificationTime = getTime()
  WHERE SubRequest.id = srId;
END;
/


/* PL/SQL method to delete one single request */
CREATE OR REPLACE PROCEDURE deleteRequest(rId IN INTEGER) AS
  rtype INTEGER;
  rclient INTEGER;
BEGIN  -- delete Request, Client and SubRequests
  -- delete request from Id2Type
  DELETE FROM Id2Type WHERE id = rId RETURNING type INTO rtype;

  -- delete request and get client id
  IF rtype = 35 THEN -- StageGetRequest
    DELETE FROM StageGetRequest WHERE id = rId RETURNING client INTO rclient;
  ELSIF rtype = 40 THEN -- StagePutRequest
    DELETE FROM StagePutRequest WHERE id = rId RETURNING client INTO rclient;
  ELSIF rtype = 44 THEN -- StageUpdateRequest
    DELETE FROM StageUpdateRequest WHERE id = rId RETURNING client INTO rclient;
  ELSIF rtype = 39 THEN -- StagePutDoneRequest
    DELETE FROM StagePutDoneRequest WHERE id = rId RETURNING client INTO rclient;
  ELSIF rtype = 42 THEN -- StageRmRequest
    DELETE FROM StageRmRequest WHERE id = rId RETURNING client INTO rclient;
  ELSIF rtype = 51 THEN -- StageReleaseFilesRequest
    DELETE FROM StageReleaseFilesRequest WHERE id = rId RETURNING client INTO rclient;
  ELSIF rtype = 36 THEN -- StagePrepareToGetRequest
    DELETE FROM StagePrepareToGetRequest WHERE id = rId RETURNING client INTO rclient;
  ELSIF rtype = 37 THEN -- StagePrepareToPutRequest
    DELETE FROM StagePrepareToPutRequest WHERE id = rId RETURNING client INTO rclient;
  ELSIF rtype = 38 THEN -- StagePrepareToUpdateRequest
    DELETE FROM StagePrepareToUpdateRequest WHERE id = rId RETURNING client INTO rclient;
  ELSIF rtype = 95 THEN -- SetFileGCWeightRequest
    DELETE FROM SetFileGCWeight WHERE id = rId RETURNING client INTO rclient;
  ELSIF rtype = 119 THEN -- StageRepackRequest
    DELETE FROM StageRepackRequest WHERE id = rId RETURNING client INTO rclient;
  ELSIF rtype = 133 THEN -- StageDiskCopyReplicaRequest
    DELETE FROM StageDiskCopyReplicaRequest WHERE id = rId RETURNING client INTO rclient;
  END IF;

  -- Delete Client
  DELETE FROM Id2Type WHERE id = rclient;
  DELETE FROM Client WHERE id = rclient;

  -- Delete SubRequests
  DELETE FROM Id2Type WHERE id IN
    (SELECT id FROM SubRequest WHERE request = rId);
  DELETE FROM SubRequest WHERE request = rId;
END;
/


/* PL/SQL method to archive a SubRequest */
CREATE OR REPLACE PROCEDURE archiveSubReq(srId IN INTEGER) AS
  rId INTEGER;
  nb INTEGER;
  nbReqs INTEGER;
  cfId NUMBER;
  rtype INTEGER;
BEGIN
  UPDATE SubRequest
     SET status = 8, -- FINISHED
         parent = NULL, diskCopy = NULL  -- unlink this subrequest as it's dead now
   WHERE id = srId
  RETURNING request, castorFile INTO rId, cfId;

  -- Try to see whether another subrequest in the same
  -- request is still processing
  SELECT count(*) INTO nb FROM SubRequest
   WHERE request = rid AND status <> 8;  -- all but FINISHED

  IF nb = 0 THEN
    -- all subrequests have finished: archive or delete depending on the request type
    SELECT type INTO rtype FROM Id2Type WHERE id = rId;
    IF rtype IN (51, 95) THEN -- Release, SetFileGCWeight
      deleteRequest(rId);
    ELSE
      UPDATE SubRequest SET status = 11 WHERE request = rId;  -- ARCHIVED
    END IF;
  END IF;

  -- Check that we don't have too many requests for this file in the DB
  -- XXX dropped for the time being as it introduced deadlocks with itself and with selectFiles2Delete!
END;
/


/* PL/SQL method checking whether a given service class
 * is declared disk only and had only full diskpools.
 * Returns 1 in such a case, 0 else
 */
CREATE OR REPLACE FUNCTION checkFailJobsWhenNoSpace(svcClassId NUMBER)
RETURN NUMBER AS
  failJobsFlag NUMBER;
  defFileSize NUMBER;
  c NUMBER;
BEGIN
  -- Determine if the service class is D1 and the default
  -- file size. If the default file size is 0 we assume 2G
  SELECT failJobsWhenNoSpace,
         decode(defaultFileSize, 0, 2000000000, defaultFileSize)
    INTO failJobsFlag, defFileSize
    FROM SvcClass
   WHERE id = svcClassId;
  -- If D1 check that the pool has space
  IF (failJobsFlag = 1) THEN
    SELECT count(*) INTO c
      FROM diskpool2svcclass, FileSystem, DiskServer
     WHERE diskpool2svcclass.child = svcClassId
       AND diskpool2svcclass.parent = FileSystem.diskPool
       AND FileSystem.diskServer = DiskServer.id
       AND FileSystem.status = 0 -- PRODUCTION
       AND DiskServer.status = 0 -- PRODUCTION
       AND totalSize * minAllowedFreeSpace < free - defFileSize;
    IF (c = 0) THEN
      RETURN 1;
    END IF;
  END IF;
  RETURN 0;
END;
/

/* PL/SQL method checking whether the given service class
 * doesn't provide tape backend and the given file class asks for tape copies.
 * Returns 1 in such a case, 0 else
 */
CREATE OR REPLACE FUNCTION checkFailPutWhenTape0(svcClassId NUMBER, fileClassId NUMBER)
RETURN NUMBER AS
  nbTCs INTEGER;
  nbForcedTCs INTEGER;
BEGIN
  -- get #tapeCopies requested by this file
  SELECT nbCopies INTO nbTCs
    FROM FileClass WHERE id = fileClassId;
  -- get #tapeCpies from the forcedFileClass: if no forcing
  -- we assume we have tape backend and we let the job
  SELECT nvl(nbCopies, nbTCs) INTO nbForcedTCs
    FROM FileClass, SvcClass
   WHERE SvcClass.forcedFileClass = FileClass.id(+)
     AND SvcClass.id = svcClassId;
  IF nbTCs > nbForcedTCs THEN
    -- typically, when nbTCs = 1 and nbForcedTCs = 0: fail the job
    RETURN 1;
  ELSE
    RETURN 0;
  END IF;
END;
/


/* PL/SQL method implementing getBestDiskCopyToReplicate. */
CREATE OR REPLACE PROCEDURE getBestDiskCopyToReplicate
  (cfId IN NUMBER, reuid IN NUMBER, regid IN NUMBER, internal IN NUMBER,
   destSvcClassId IN NUMBER, dcId OUT NUMBER, srcSvcClassId OUT NUMBER) AS
  destSvcClass VARCHAR2(2048);
BEGIN
  -- Select the best diskcopy available to replicate and for which the user has
  -- access too.
  SELECT id, srcSvcClassId INTO dcId, srcSvcClassId
    FROM (
      SELECT DiskCopy.id, SvcClass.id srcSvcClassId
        FROM DiskCopy, FileSystem, DiskServer, DiskPool2SvcClass, SvcClass
       WHERE DiskCopy.castorfile = cfId
         AND DiskCopy.status IN (0, 10) -- STAGED, CANBEMIGR
         AND FileSystem.id = DiskCopy.fileSystem
         AND FileSystem.diskpool = DiskPool2SvcClass.parent
         AND DiskPool2SvcClass.child = SvcClass.id
         AND FileSystem.status IN (0, 1) -- PRODUCTION, DRAINING
         AND DiskServer.id = FileSystem.diskserver
         AND DiskServer.status IN (0, 1) -- PRODUCTION, DRAINING
         -- If this is an internal replication request make sure that the diskcopy
         -- is in the same service class as the source.
         AND (SvcClass.id = destSvcClassId OR internal = 0)
         -- Check that the user has the necessary access rights to replicate a
         -- file from the source service class. Note: instead of using a
         -- StageGetRequest type here we use a StagDiskCopyReplicaRequest type
         -- to be able to distinguish between and read and replication requst.
         AND checkPermissionOnSvcClass(SvcClass.name, reuid, regid, 133) = 0
         AND NOT EXISTS (
           -- Don't select source diskcopies which already failed more than 10 times
           SELECT 'x'
             FROM StageDiskCopyReplicaRequest R, SubRequest
            WHERE SubRequest.request = R.id
              AND R.sourceDiskCopy = DiskCopy.id
              AND SubRequest.status = 9 -- FAILED
           HAVING COUNT(*) >= 10)
       ORDER BY FileSystemRate(FileSystem.readRate, FileSystem.writeRate, FileSystem.nbReadStreams,
                               FileSystem.nbWriteStreams, FileSystem.nbReadWriteStreams,
                               FileSystem.nbMigratorStreams, FileSystem.nbRecallerStreams) DESC)
   WHERE ROWNUM < 2;
EXCEPTION WHEN NO_DATA_FOUND THEN
  RAISE; -- No diskcopy found that could be replicated
END;
/


/* PL/SQL method implementing getBestDiskCopyToRead used to return the
 * best location of a file based on monitoring information. This is
 * useful for xrootd so that it can avoid scheduling reads
 */
CREATE OR REPLACE PROCEDURE getBestDiskCopyToRead(cfId IN NUMBER,
                                                  svcClassId IN NUMBER,
                                                  diskServer OUT VARCHAR2,
                                                  filePath OUT VARCHAR2) AS
BEGIN
  -- Select best diskcopy
  SELECT name, path INTO diskServer, filePath FROM (
    SELECT DiskServer.name, FileSystem.mountpoint || DiskCopy.path AS path
      FROM DiskCopy, FileSystem, DiskServer, DiskPool2SvcClass
     WHERE DiskCopy.castorfile = cfId
       AND DiskCopy.fileSystem = FileSystem.id
       AND FileSystem.diskpool = DiskPool2SvcClass.parent
       AND DiskPool2SvcClass.child = svcClassId
       AND FileSystem.status = 0 -- PRODUCTION
       AND FileSystem.diskserver = DiskServer.id
       AND DiskServer.status = 0 -- PRODUCTION
       AND DiskCopy.status IN (0, 6, 10)  -- STAGED, STAGEOUT, CANBEMIGR
     ORDER BY FileSystemRate(FileSystem.readRate, FileSystem.writeRate, FileSystem.nbReadStreams,
                             FileSystem.nbWriteStreams, FileSystem.nbReadWriteStreams,
                             FileSystem.nbMigratorStreams, FileSystem.nbRecallerStreams) DESC)
   WHERE rownum < 2;
EXCEPTION WHEN NO_DATA_FOUND THEN
  RAISE; -- No file found to be read
END;
/


/* PL/SQL method implementing checkForD2DCopyOrRecall
 * dcId is the DiskCopy id of the best candidate for replica, 0 if none is found (tape recall), -1 in case of user error
 * Internally used by getDiskCopiesForJob and processPrepareRequest
 */
CREATE OR REPLACE
PROCEDURE checkForD2DCopyOrRecall(cfId IN NUMBER, srId IN NUMBER, reuid IN NUMBER, regid IN NUMBER,
                                  svcClassId IN NUMBER, dcId OUT NUMBER, srcSvcClassId OUT NUMBER) AS
  destSvcClass VARCHAR2(2048);
  authDest NUMBER;
BEGIN
  -- First check whether we are a disk only pool that is already full.
  -- In such a case, we should fail the request with an ENOSPACE error
  IF (checkFailJobsWhenNoSpace(svcClassId) = 1) THEN
    dcId := -1;
    UPDATE SubRequest
       SET status = 7, -- FAILED
           errorCode = 28, -- ENOSPC
           errorMessage = 'File creation canceled since diskPool is full'
     WHERE id = srId;
    COMMIT;
    RETURN;
  END IF;
  -- Resolve the destination service class id to a name
  SELECT name INTO destSvcClass FROM SvcClass WHERE id = svcClassId;
  -- If we are in this procedure then we did not find a copy of the
  -- file in the target service class that could be used. So, we check
  -- to see if the user has the rights to create a file in the destination
  -- service class. I.e. check for StagePutRequest access rights
  checkPermission(destSvcClass, reuid, regid, 40, authDest);
  IF authDest != 0 THEN
      -- Fail the subrequest and notify the client
      dcId := -1;
      UPDATE SubRequest
         SET status = 7, -- FAILED
             errorCode = 13, -- EACCES
             errorMessage = 'Insufficient user privileges to trigger a tape recall or file replication to the '''||destSvcClass||''' service class'
       WHERE id = srId;
      COMMIT;
    RETURN;
  END IF;
  -- Try to find a diskcopy to replicate
  getBestDiskCopyToReplicate(cfId, reuid, regid, 0, svcClassId, dcId, srcSvcClassId);
  -- We found at least one, therefore we schedule a disk2disk
  -- copy from the existing diskcopy not available to this svcclass
EXCEPTION WHEN NO_DATA_FOUND THEN
  -- We found no diskcopies at all. We should not schedule
  -- and make a tape recall... except ... in 2 cases :
  --   - if there is some temporarily unavailable diskcopy
  --     that is in CANBEMIGR or STAGEOUT
  -- in such a case, what we have is an existing file, that
  -- was migrated, then overwritten but never migrated again.
  -- So the unavailable diskCopy is the only copy that is valid.
  -- We will tell the client that the file is unavailable
  -- and he/she will retry later
  --   - if we have an available STAGEOUT copy. This can happen
  -- when the copy is in a given svcclass and we were looking
  -- in another one. Since disk to disk copy is impossible in this
  -- case, the file is declared BUSY.
  --   - if we have an available WAITFS, WAITFSSCHEDULING copy in such
  -- a case, we tell the client that the file is BUSY
  DECLARE
    dcStatus NUMBER;
    fsStatus NUMBER;
    dsStatus NUMBER;
  BEGIN
    SELECT DiskCopy.status, nvl(FileSystem.status, 0), nvl(DiskServer.status, 0)
      INTO dcStatus, fsStatus, dsStatus
      FROM DiskCopy, FileSystem, DiskServer
     WHERE DiskCopy.castorfile = cfId
       AND DiskCopy.status IN (5, 6, 10, 11) -- WAITFS, STAGEOUT, CANBEMIGR, WAITFSSCHEDULING
       AND FileSystem.id(+) = DiskCopy.fileSystem
       AND DiskServer.id(+) = FileSystem.diskserver
       AND ROWNUM < 2;
    -- We are in one of the special cases. Don't schedule, don't recall
    dcId := -1;
    UPDATE SubRequest
       SET status = 7, -- FAILED
           errorCode = CASE
             WHEN dcStatus IN (5, 11) THEN 16 -- WAITFS, WAITFSSCHEDULING, EBUSY
             WHEN dcStatus = 6 AND fsStatus = 0 and dsStatus = 0 THEN 16 -- STAGEOUT, PRODUCTION, PRODUCTION, EBUSY
             ELSE 1718 -- ESTNOTAVAIL
           END,
           errorMessage = CASE
             WHEN dcStatus IN (5, 11) THEN -- WAITFS, WAITFSSCHEDULING
               'File is being (re)created right now by another user'
             WHEN dcStatus = 6 AND fsStatus = 0 and dsStatus = 0 THEN -- STAGEOUT, PRODUCTION, PRODUCTION
               'File is being written to in another SvcClass'
             ELSE
               'All copies of this file are unavailable for now. Please retry later'
           END
     WHERE id = srId;
    COMMIT;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- Check whether the user has the rights to issue a tape recall to
    -- the destination service class.
    checkPermission(destSvcClass, reuid, regid, 161, authDest);
    IF authDest != 0 THEN
      -- Fail the subrequest and notify the client
      dcId := -1;
      UPDATE SubRequest
         SET status = 7, -- FAILED
             errorCode = 13, -- EACCES
             errorMessage = 'Insufficient user privileges to trigger a tape recall to the '''||destSvcClass||''' service class'
       WHERE id = srId;
      COMMIT;
    ELSE
      -- We did not find the very special case so trigger a tape recall.
      dcId := 0;
    END IF;
  END;
END;
/


/* Build diskCopy path from fileId */
CREATE OR REPLACE PROCEDURE buildPathFromFileId(fid IN INTEGER,
                                                nsHost IN VARCHAR2,
                                                dcid IN INTEGER,
                                                path OUT VARCHAR2) AS
BEGIN
  path := CONCAT(CONCAT(CONCAT(CONCAT(TO_CHAR(MOD(fid,100),'FM09'), '/'),
                 CONCAT(TO_CHAR(fid), '@')),
                 nsHost), CONCAT('.', TO_CHAR(dcid)));
END;
/


/* PL/SQL method implementing createDiskCopyReplicaRequest */
CREATE OR REPLACE PROCEDURE createDiskCopyReplicaRequest
(sourceSrId IN INTEGER, sourceDcId IN INTEGER, sourceSvcId IN INTEGER,
 destSvcId IN INTEGER, ouid IN INTEGER, ogid IN INTEGER) AS
  srId NUMBER;
  cfId NUMBER;
  destDcId NUMBER;
  reqId NUMBER;
  clientId NUMBER;
  fileName VARCHAR2(2048);
  fileSize NUMBER;
  fileId NUMBER;
  nsHost VARCHAR2(2048);
  rpath VARCHAR2(2048);
BEGIN
  -- Extract the castorfile associated with the request, this is needed to
  -- create the StageDiskCopyReplicaRequest's diskcopy and subrequest entries.
  -- Also for disk2disk copying across service classes make the originating
  -- subrequest wait on the completion of the transfer.
  IF sourceSrId > 0 THEN
    UPDATE SubRequest
       SET status = 5, parent = ids_seq.nextval -- WAITSUBREQ
     WHERE id = sourceSrId
    RETURNING castorFile, parent INTO cfId, srId;
  ELSE
    SELECT castorfile INTO cfId FROM DiskCopy WHERE id = sourceDcId;
    SELECT ids_seq.nextval INTO srId FROM Dual;
  END IF;

  SELECT fileid, nshost, filesize, lastknownfilename
    INTO fileId, nsHost, fileSize, fileName
    FROM CastorFile WHERE id = cfId;

  -- Create the Client entry.
  INSERT INTO Client (ipaddress, port, id, version, secure)
    VALUES (0, 0, ids_seq.nextval, 0, 0)
  RETURNING id INTO clientId;
  INSERT INTO Id2Type (id, type) VALUES (clientId, 129);  -- OBJ_Client

  -- Create the StageDiskCopyReplicaRequest. The euid and egid values default to
  -- 0 here, this indicates the request came from the user root. When the
  -- jobManager encounters the StageDiskCopyReplicaRequest it will automatically
  -- use the stage:st account for submission into LSF.
  SELECT ids_seq.nextval INTO destDcId FROM Dual;
  INSERT INTO StageDiskCopyReplicaRequest
    (svcclassname, reqid, creationtime, lastmodificationtime, id, svcclass,
     client, sourcediskcopy, destdiskcopy, sourceSvcClass)
  VALUES ((SELECT name FROM SvcClass WHERE id = destSvcId), uuidgen(), gettime(),
     gettime(), ids_seq.nextval, destSvcId, clientId, sourceDcId, destDcId, sourceSvcId)
  RETURNING id INTO reqId;
  INSERT INTO Id2Type (id, type) VALUES (reqId, 133);  -- OBJ_StageDiskCopyReplicaRequest;

  -- Create the SubRequest setting the initial status to READYFORSCHED for
  -- immediate dispatching i.e no stager processing by the jobManager.
  INSERT INTO SubRequest
    (retrycounter, filename, protocol, xsize, priority, subreqid, flags, modebits,
     creationtime, lastmodificationtime, answered, id, diskcopy, castorfile, parent,
     status, request, getnextstatus, errorcode, svcHandler)
  VALUES (0, fileName, 'rfio', fileSize, 0, uuidgen(), 0, 0, gettime(), gettime(),
     0, srId, destDcId, cfId, 0, 13, reqId, 0, 0, 'NotNullNeeded');
  INSERT INTO Id2Type (id, type) VALUES (srId, 27);  -- OBJ_SubRequest

  -- Create the DiskCopy without filesystem
  buildPathFromFileId(fileId, nsHost, destDcId, rpath);
  INSERT INTO DiskCopy
    (path, id, filesystem, castorfile, status, creationTime, lastAccessTime,
     gcWeight, diskCopySize, nbCopyAccesses, owneruid, ownergid)
  VALUES (rpath, destDcId, 0, cfId, 1, getTime(), getTime(), 0, fileSize, 0, ouid, ogid);  -- WAITDISK2DISKCOPY
  INSERT INTO Id2Type (id, type) VALUES (destDcId, 5);  -- OBJ_DiskCopy
END;
/


/* PL/SQL method implementing replicateOnClose */
CREATE OR REPLACE PROCEDURE replicateOnClose(cfId IN NUMBER, ouid IN INTEGER, ogid IN INTEGER) AS
  unused NUMBER;
  srcDcId NUMBER;
  srcSvcClassId NUMBER;
  ignoreSvcClass NUMBER;
BEGIN
  -- Lock the castorfile
  SELECT id INTO unused FROM CastorFile WHERE id = cfId FOR UPDATE;
  -- Loop over all service classes where replication is required
  FOR a IN (SELECT SvcClass.id FROM (
              -- Determine the number of copies of the file in all service classes
              SELECT * FROM (
                SELECT SvcClass.id, count(*) available
                  FROM DiskCopy, FileSystem, DiskServer, DiskPool2SvcClass, SvcClass
                 WHERE DiskCopy.filesystem = FileSystem.id
                   AND DiskCopy.castorfile = cfId
                   AND FileSystem.diskpool = DiskPool2SvcClass.parent
                   AND DiskPool2SvcClass.child = SvcClass.id
                   AND DiskCopy.status IN (0, 1, 10)  -- STAGED, WAITDISK2DISKCOPY, CANBEMIGR
                   AND FileSystem.status IN (0, 1)  -- PRODUCTION, DRAINING
                   AND DiskServer.id = FileSystem.diskserver
                   AND DiskServer.status IN (0, 1)  -- PRODUCTION, DRAINING
                 GROUP BY SvcClass.id)
             ) results, SvcClass
             -- Join the results with the service class table and determine if
             -- additional copies need to be created
             WHERE results.id = SvcClass.id
               AND SvcClass.replicateOnClose = 1
               AND results.available < SvcClass.maxReplicaNb)
  LOOP
    -- Ignore this replication if there is already a pending replication request
    -- for the given castorfile in the target/destination service class. Once
    -- the replication has gone through, this procedure will be called again.
    -- This insures that only one replication request is active at any given time
    -- and that we don't create too many replication requests that may exceed
    -- the maxReplicaNb defined on the service class
    BEGIN
      SELECT DiskCopy.id INTO unused
        FROM DiskCopy, StageDiskCopyReplicaRequest
       WHERE StageDiskCopyReplicaRequest.destdiskcopy = DiskCopy.id
         AND StageDiskCopyReplicaRequest.svcclass = a.id
         AND DiskCopy.castorfile = cfId
         AND DiskCopy.status = 1  -- WAITDISK2DISKCOPY
         AND rownum < 2;
    EXCEPTION WHEN NO_DATA_FOUND THEN
      BEGIN
        -- Select the best diskcopy to be replicated. Note: we force that the
        -- replication must happen internally within the service class. This
        -- prevents D2 style activities from impacting other more controlled
        -- service classes. E.g. D2 replication should not impact CDR
        getBestDiskCopyToReplicate(cfId, -1, -1, 1, a.id, srcDcId, srcSvcClassId);
        -- Trigger a replication request.
        createDiskCopyReplicaRequest(0, srcDcId, srcSvcClassId, a.id, ouid, ogid);
      EXCEPTION WHEN NO_DATA_FOUND THEN
        NULL;  -- No copies to replicate from
      END;
    END;
  END LOOP;
END;
/


/* PL/SQL method implementing getDiskCopiesForJob */
/* the result output is a DiskCopy status for STAGED, DISK2DISKCOPY, RECALL or WAITFS
   -1 for user failure, -2 or -3 for subrequest put in WAITSUBREQ */
CREATE OR REPLACE PROCEDURE getDiskCopiesForJob
        (srId IN INTEGER, result OUT INTEGER,
         sources OUT castor.DiskCopy_Cur) AS
  nbDCs INTEGER;
  nbDSs INTEGER;
  upd INTEGER;
  dcIds "numList";
  svcClassId NUMBER;
  srcSvcClassId NUMBER;
  cfId NUMBER;
  srcDcId NUMBER;
  d2dsrId NUMBER;
  reuid NUMBER;
  regid NUMBER;
BEGIN
  -- retrieve the castorFile and the svcClass for this subrequest
  SELECT SubRequest.castorFile, Request.euid, Request.egid, Request.svcClass, Request.upd
    INTO cfId, reuid, regid, svcClassId, upd
    FROM (SELECT id, euid, egid, svcClass, 0 upd from StageGetRequest UNION ALL
          SELECT id, euid, egid, svcClass, 1 upd from StageUpdateRequest) Request,
         SubRequest
   WHERE Subrequest.request = Request.id
     AND Subrequest.id = srId;
  -- lock the castorFile to be safe in case of concurrent subrequests
  SELECT id INTO cfId FROM CastorFile WHERE id = cfId FOR UPDATE;

  -- First see whether we should wait on an ongoing request
  SELECT DiskCopy.id BULK COLLECT INTO dcIds
    FROM DiskCopy, FileSystem, DiskServer
   WHERE cfId = DiskCopy.castorFile
     AND FileSystem.id(+) = DiskCopy.fileSystem
     AND nvl(FileSystem.status, 0) = 0 -- PRODUCTION
     AND DiskServer.id(+) = FileSystem.diskServer
     AND nvl(DiskServer.status, 0) = 0 -- PRODUCTION
     AND DiskCopy.status IN (2, 11); -- WAITTAPERECALL, WAITFS_SCHEDULING
  IF dcIds.COUNT > 0 THEN
    -- DiskCopy is in WAIT*, make SubRequest wait on previous subrequest and do not schedule
    makeSubRequestWait(srId, dcIds(1));
    result := -2;
    COMMIT;
    RETURN;
  END IF;

  -- Look for available diskcopies
  SELECT COUNT(DiskCopy.id) INTO nbDCs
    FROM DiskCopy, FileSystem, DiskServer, DiskPool2SvcClass
   WHERE DiskCopy.castorfile = cfId
     AND DiskCopy.fileSystem = FileSystem.id
     AND FileSystem.diskpool = DiskPool2SvcClass.parent
     AND DiskPool2SvcClass.child = svcClassId
     AND FileSystem.status = 0 -- PRODUCTION
     AND FileSystem.diskserver = DiskServer.id
     AND DiskServer.status = 0 -- PRODUCTION
     AND DiskCopy.status IN (0, 6, 10);  -- STAGED, STAGEOUT, CANBEMIGR
  IF nbDCs = 0 AND upd = 1 THEN
    -- we may be the first update inside a prepareToPut, and this is allowed
    SELECT COUNT(DiskCopy.id) INTO nbDCs
      FROM DiskCopy
     WHERE DiskCopy.castorfile = cfId
       AND DiskCopy.status = 5;  -- WAITFS
    IF nbDCs = 1 THEN
      result := 5;  -- DISKCOPY_WAITFS, try recreation
      RETURN;
      -- note that we don't do here all the needed consistency checks,
      -- but recreateCastorFile takes care of all cases and will fail
      -- the subrequest or make it wait if needed.
    END IF;
  END IF;

  IF nbDCs > 0 THEN
    -- Yes, we have some
    -- List available diskcopies for job scheduling
    OPEN sources
      FOR SELECT id, path, status, fsRate, mountPoint, name FROM (
            SELECT DiskCopy.id, DiskCopy.path, DiskCopy.status,
                   FileSystemRate(FileSystem.readRate, FileSystem.writeRate, FileSystem.nbReadStreams,
                                  FileSystem.nbWriteStreams, FileSystem.nbReadWriteStreams,
                                  FileSystem.nbMigratorStreams, FileSystem.nbRecallerStreams) fsRate,
                   FileSystem.mountPoint, DiskServer.name,
                   -- Use the power of analytics to create a cumulative value of the length
                   -- of the diskserver name and filesystem mountpoint. We do this because
                   -- when there are many many copies of a file the requested filesystems
                   -- string created by the stager from these results e.g. ds1:fs1|ds2:fs2|
                   -- can exceed the maximum length allowed by LSF causing the submission
                   -- process to fail.
                   SUM(LENGTH(DiskServer.name) + LENGTH(FileSystem.mountPoint) + 2)
                   OVER (ORDER BY FileSystemRate(FileSystem.readRate, FileSystem.writeRate,
                                                 FileSystem.nbReadStreams,
                                                 FileSystem.nbWriteStreams, FileSystem.nbReadWriteStreams,
                                                 FileSystem.nbMigratorStreams, FileSystem.nbRecallerStreams)
                          DESC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) bytes
              FROM DiskCopy, SubRequest, FileSystem, DiskServer, DiskPool2SvcClass
             WHERE SubRequest.id = srId
               AND SubRequest.castorfile = DiskCopy.castorfile
               AND FileSystem.diskpool = DiskPool2SvcClass.parent
               AND DiskPool2SvcClass.child = svcClassId
               AND DiskCopy.status IN (0, 6, 10) -- STAGED, STAGEOUT, CANBEMIGR
               AND FileSystem.id = DiskCopy.fileSystem
               AND FileSystem.status = 0  -- PRODUCTION
               AND DiskServer.id = FileSystem.diskServer
               AND DiskServer.status = 0  -- PRODUCTION
             ORDER BY fsRate DESC)
         WHERE bytes <= 200;
    -- Give an hint to the stager whether internal replication can happen or not:
    -- count the number of diskservers which DON'T contain a diskCopy for this castorFile
    -- and are hence eligible for replication should it need to be done
    SELECT COUNT(DISTINCT(DiskServer.name)) INTO nbDSs
      FROM DiskServer, FileSystem, DiskPool2SvcClass
     WHERE FileSystem.diskServer = DiskServer.id
       AND FileSystem.diskPool = DiskPool2SvcClass.parent
       AND DiskPool2SvcClass.child = svcClassId
       AND FileSystem.status = 0 -- PRODUCTION
       AND DiskServer.status = 0 -- PRODUCTION
       AND DiskServer.id NOT IN (
         SELECT DISTINCT(DiskServer.id)
           FROM DiskCopy, FileSystem, DiskServer
          WHERE DiskCopy.castorfile = cfId
            AND DiskCopy.fileSystem = FileSystem.id
            AND FileSystem.diskserver = DiskServer.id
            AND DiskCopy.status IN (0, 10));  -- STAGED, CANBEMIGR
    IF nbDSs = 0 THEN
      -- no room for replication
      result := 0;  -- DISKCOPY_STAGED
    ELSE
      -- we have some diskservers, the stager will ultimately decide whether to replicate
      result := 1;  -- DISKCOPY_WAITDISK2DISKCOPY
    END IF;
  ELSE
    -- No diskcopies available for this service class:
    -- first check whether there's already a disk to disk copy going on
    BEGIN
      SELECT SubRequest.id INTO d2dsrId
        FROM StageDiskCopyReplicaRequest Req, SubRequest
       WHERE SubRequest.request = Req.id
         AND Req.svcClass = svcClassId    -- this is the destination service class
         AND status IN (13, 14, 6)  -- WAITINGFORSCHED, BEINGSCHED, READY
         AND castorFile = cfId;
      -- found it, wait on it
      UPDATE SubRequest
         SET parent = d2dsrId, status = 5  -- WAITSUBREQ
       WHERE id = srId;
      result := -2;
      COMMIT;
      RETURN;
    EXCEPTION WHEN NO_DATA_FOUND THEN
      -- not found, we may have to schedule a disk to disk copy or trigger a recall
      checkForD2DCopyOrRecall(cfId, srId, reuid, regid, svcClassId, srcDcId, srcSvcClassId);
      IF srcDcId > 0 THEN
        -- create DiskCopyReplica request and make this subRequest wait on it
        createDiskCopyReplicaRequest(srId, srcDcId, srcSvcClassId, svcClassId, reuid, regid);
        result := -3; -- return code is different here for logging purposes
      ELSIF srcDcId = 0 THEN
        -- no diskcopy found at all, go for recall
        result := 2;  -- DISKCOPY_WAITTAPERECALL
      ELSE
        -- user error
        result := -1;
      END IF;
    END;
  END IF;
END;
/


/* PL/SQL method internalPutDoneFunc, used by fileRecalled and putDoneFunc.
   checks for diskcopies in STAGEOUT and creates the tapecopies for migration
 */
CREATE OR REPLACE PROCEDURE internalPutDoneFunc (cfId IN INTEGER,
                                                 fs IN INTEGER,
                                                 context IN INTEGER,
                                                 nbTC IN INTEGER,
                                                 svcClassId IN INTEGER) AS
  tcId INTEGER;
  dcId INTEGER;
  gcwProc VARCHAR2(2048);
  gcw NUMBER;
  ouid INTEGER;
  ogid INTEGER;
BEGIN
  -- get function to use for computing the gc weight of the brand new diskCopy
  gcwProc := castorGC.getUserWeight(svcClassId);
  -- if no tape copy or 0 length file, no migration
  -- so we go directly to status STAGED
  IF nbTC = 0 OR fs = 0 THEN
    EXECUTE IMMEDIATE 'BEGIN :newGcw := ' || gcwProc || '(:fs, 0); END;'
      USING OUT gcw, IN fs;
    UPDATE DiskCopy
       SET status = 0, -- STAGED
           lastAccessTime = getTime(),  -- for the GC, effective lifetime of this diskcopy starts now
           gcWeight = gcw,
	   diskCopySize = fs
     WHERE castorFile = cfId AND status = 6 -- STAGEOUT
     RETURNING owneruid, ownergid INTO ouid, ogid;
  ELSE
    EXECUTE IMMEDIATE 'BEGIN :newGcw := ' || gcwProc || '(:fs, 10); END;'
      USING OUT gcw, IN fs;
    -- update the DiskCopy status to CANBEMIGR
    dcId := 0;
    UPDATE DiskCopy
       SET status = 10, -- CANBEMIGR
           lastAccessTime = getTime(),  -- for the GC, effective lifetime of this diskcopy starts now
           gcWeight = gcw,
	   diskCopySize = fs
     WHERE castorFile = cfId AND status = 6 -- STAGEOUT
     RETURNING id, owneruid, ownergid INTO dcId, ouid, ogid;
    IF dcId > 0 THEN
      -- Only if we really found the relevant diskcopy, create TapeCopies
      -- This is an extra sanity check, see also the deleteOutOfDateStageOutDCs procedure
      FOR i IN 1..nbTC LOOP
        INSERT INTO TapeCopy (id, copyNb, castorFile, status)
             VALUES (ids_seq.nextval, i, cfId, 0) -- TAPECOPY_CREATED
        RETURNING id INTO tcId;
        INSERT INTO Id2Type (id, type) VALUES (tcId, 30); -- OBJ_TapeCopy
      END LOOP;
    END IF;
  END IF;
  -- If we are a real PutDone (and not a put outside of a prepareToPut/Update)
  -- then we have to archive the original prepareToPut/Update subRequest
  IF context = 2 THEN
    DECLARE
      srId NUMBER;
    BEGIN
      -- There can be only a single PrepareTo request: any subsequent PPut would be
      -- rejected and any subsequent PUpdate would be directly archived (cf. processPrepareRequest).
      SELECT SubRequest.id INTO srId
        FROM SubRequest,
         (SELECT id FROM StagePrepareToPutRequest UNION ALL
          SELECT id FROM StagePrepareToUpdateRequest) Request
       WHERE SubRequest.castorFile = cfId
         AND SubRequest.request = Request.id
         AND SubRequest.status = 6;  -- READY
      archiveSubReq(srId);
    EXCEPTION WHEN NO_DATA_FOUND THEN
      NULL; -- Ignore the missing subrequest
    END;
  END IF;
  -- Trigger the creation of additional copies of the file, if necessary.
  replicateOnClose(cfId, ouid, ogid);
END;
/


/* PL/SQL method implementing putDoneFunc */
CREATE OR REPLACE PROCEDURE putDoneFunc (cfId IN INTEGER,
                                         fs IN INTEGER,
                                         context IN INTEGER,
                                         svcClassId IN INTEGER) AS
  nc INTEGER;
BEGIN
  -- get number of TapeCopies to create
  SELECT nbCopies INTO nc FROM FileClass, CastorFile
   WHERE CastorFile.id = cfId AND CastorFile.fileClass = FileClass.id;
  -- and execute the internal putDoneFunc with the number of TapeCopies to be created
  internalPutDoneFunc(cfId, fs, context, nc, svcClassId);
END;
/


/* PL/SQL procedure implementing startRepackMigration */
CREATE OR REPLACE PROCEDURE startRepackMigration
(srId IN INTEGER, cfId IN INTEGER, dcId IN INTEGER,
 reuid OUT INTEGER, regid OUT INTEGER) AS
  nbTC NUMBER(2);
  nbTCInFC NUMBER(2);
  fsId NUMBER;
  svcClassId NUMBER;
BEGIN
  UPDATE DiskCopy SET status = 6  -- DISKCOPY_STAGEOUT
   WHERE id = dcId RETURNING fileSystem INTO fsId;
  -- how many do we have to create ?
  SELECT count(StageRepackRequest.repackVid) INTO nbTC
    FROM SubRequest, StageRepackRequest
   WHERE SubRequest.request = StageRepackRequest.id
     AND (SubRequest.id = srId
       OR (SubRequest.castorFile = cfId
         AND SubRequest.status IN (4, 5)));  -- WAITTAPERECALL, WAITSUBREQ
  SELECT nbCopies INTO nbTCInFC
    FROM FileClass, CastorFile
   WHERE CastorFile.id = cfId
     AND FileClass.id = Castorfile.fileclass;
  -- we are not allowed to create more TapeCopies than in the FileClass specified
  IF nbTCInFC < nbTC THEN
    nbTC := nbTCInFC;
  END IF;

  -- update all the Repack subRequests for this file. The status REPACK
  -- stays until the migration to the new tape is over.
  UPDATE SubRequest
     SET diskCopy = dcId, status = 12  -- REPACK
   WHERE SubRequest.castorFile = cfId
     AND SubRequest.status IN (3, 4, 5)  -- WAITSCHED, WAITTAPERECALL, WAITSUBREQ
     AND SubRequest.request IN
       (SELECT id FROM StageRepackRequest);
   
  -- get the service class, uid and gid
  SELECT R.svcClass, euid, egid INTO svcClassId, reuid, regid
    FROM StageRepackRequest R, SubRequest
   WHERE SubRequest.request = R.id
     AND SubRequest.id = srId;
  -- create the required number of tapecopies for the files
  internalPutDoneFunc(cfId, fsId, 0, nbTC, svcClassId);
  -- set svcClass in the CastorFile for the migration
  UPDATE CastorFile SET svcClass = svcClassId WHERE id = cfId;

  -- update remaining STAGED diskcopies to CANBEMIGR too
  -- we may have them as result of disk2disk copies, and so far
  -- we only dealt with dcId
  UPDATE DiskCopy SET status = 10  -- DISKCOPY_CANBEMIGR
   WHERE castorFile = cfId AND status = 0;  -- DISKCOPY_STAGED
END;
/


/* PL/SQL method implementing processPrepareRequest */
/* the result output is a DiskCopy status for STAGED, DISK2DISKCOPY or RECALL,
   -1 for user failure, -2 for subrequest put in WAITSUBREQ */
CREATE OR REPLACE PROCEDURE processPrepareRequest
        (srId IN INTEGER, result OUT INTEGER) AS
  nbDCs INTEGER;
  svcClassId NUMBER;
  srvSvcClassId NUMBER;
  repack INTEGER;
  cfId NUMBER;
  srcDcId NUMBER;
  recSvcClass NUMBER;
  recDcId NUMBER;
  reuid NUMBER;
  regid NUMBER;
BEGIN
  -- retrieve the castorfile, the svcclass and the reqId for this subrequest
  SELECT SubRequest.castorFile, Request.euid, Request.egid, Request.svcClass, Request.repack
    INTO cfId, reuid, regid, svcClassId, repack
    FROM (SELECT id, euid, egid, svcClass, 0 repack FROM StagePrepareToGetRequest UNION ALL
          SELECT id, euid, egid, svcClass, 1 repack FROM StageRepackRequest UNION ALL
          SELECT id, euid, egid, svcClass, 0 repack FROM StagePrepareToUpdateRequest) Request,
         SubRequest
   WHERE Subrequest.request = Request.id
     AND Subrequest.id = srId;
  -- lock the castor file to be safe in case of two concurrent subrequest
  SELECT id INTO cfId FROM CastorFile WHERE id = cfId FOR UPDATE;

  -- Look for available diskcopies. Note that we never wait on other requests
  -- and we include WAITDISK2DISKCOPY as they are going to be available.
  SELECT COUNT(DiskCopy.id) INTO nbDCs
    FROM DiskCopy, FileSystem, DiskServer, DiskPool2SvcClass
   WHERE DiskCopy.castorfile = cfId
     AND DiskCopy.fileSystem = FileSystem.id
     AND FileSystem.diskpool = DiskPool2SvcClass.parent
     AND DiskPool2SvcClass.child = svcClassId
     AND FileSystem.status = 0 -- PRODUCTION
     AND FileSystem.diskserver = DiskServer.id
     AND DiskServer.status = 0 -- PRODUCTION
     AND DiskCopy.status IN (0, 1, 6, 10);  -- STAGED, WAITDISK2DISKCOPY, STAGEOUT, CANBEMIGR

  -- For DiskCopyReplicaRequests which are waiting to be scheduled, the filesystem
  -- link in the diskcopy table is set to 0. As a consequence of this it is not
  -- possible to determine the service class via the filesystem -> diskpool -> svcclass
  -- relationship, as assumed in the previous query. Instead the service class of
  -- the replication request must be used!!!
  IF nbDCs = 0 THEN
    SELECT COUNT(DiskCopy.id) INTO nbDCs
      FROM DiskCopy, StageDiskCopyReplicaRequest
     WHERE DiskCopy.id = StageDiskCopyReplicaRequest.destDiskCopy
       AND StageDiskCopyReplicaRequest.svcclass = svcClassId
       AND DiskCopy.castorfile = cfId
       AND DiskCopy.status = 1; -- WAITDISK2DISKCOPY
  END IF;

  IF nbDCs > 0 THEN
    -- Yes, we have some
    result := 0;  -- DISKCOPY_STAGED
    IF repack = 1 THEN
      BEGIN
        -- In case of Repack, start the repack migration on one diskCopy
        SELECT DiskCopy.id INTO srcDcId
          FROM DiskCopy, FileSystem, DiskServer, DiskPool2SvcClass
         WHERE DiskCopy.castorfile = cfId
           AND DiskCopy.fileSystem = FileSystem.id
           AND FileSystem.diskpool = DiskPool2SvcClass.parent
           AND DiskPool2SvcClass.child = svcClassId
           AND FileSystem.status = 0 -- PRODUCTION
           AND FileSystem.diskserver = DiskServer.id
           AND DiskServer.status = 0 -- PRODUCTION
           AND DiskCopy.status = 0  -- STAGED
           AND ROWNUM < 2;
        startRepackMigration(srId, cfId, srcDcId, reuid, regid);
      EXCEPTION WHEN NO_DATA_FOUND THEN
        -- no data found here means that either the file
        -- is being written/migrated or there's a disk-to-disk
        -- copy going on: for this case we should actually wait
        BEGIN
          SELECT DiskCopy.id INTO srcDcId
            FROM DiskCopy, FileSystem, DiskServer, DiskPool2SvcClass
           WHERE DiskCopy.castorfile = cfId
             AND DiskCopy.fileSystem = FileSystem.id
             AND FileSystem.diskpool = DiskPool2SvcClass.parent
             AND DiskPool2SvcClass.child = svcClassId
             AND FileSystem.status = 0 -- PRODUCTION
             AND FileSystem.diskserver = DiskServer.id
             AND DiskServer.status = 0 -- PRODUCTION
             AND DiskCopy.status = 1  -- WAITDISK2DISKCOPY
             AND ROWNUM < 2;
          -- found it, we wait on it
          makeSubRequestWait(srId, srcDcId);
          result := -2;
        EXCEPTION WHEN NO_DATA_FOUND THEN
          -- the file is being written/migrated. This may happen in two cases:
          -- either there's another repack going on for the same file, or another
          -- user is overwriting the file.
          -- In the first case, if this request comes for a tape other
          -- than the one being repacked, i.e. the file has a double tape copy,
          -- then we should make the request wait on the first repack (it may be
          -- for a different service class than the one being used right now).
          -- In the second case, we just have to fail this request.
          -- However at the moment it's not easy to restart a waiting repack after
          -- a migration (relevant db callback should be put in rtcpcld_updcFileMigrated(),
          -- rtcpcldCatalogueInterface.c:3300), so we simply fail this repack
          -- request and rely for the time being on Repack to submit
          -- such double tape repacks one by one.
          UPDATE SubRequest
             SET status = 7,  -- FAILED
                 errorCode = 16,  -- EBUSY
                 errorMessage = 'File is currently being written or migrated'
           WHERE id = srId;
          COMMIT;
          result := -1;  -- user error
        END;
      END;
    END IF;
    RETURN;
  END IF;

  -- No diskcopies available for this service class:
  -- we may have to schedule a disk to disk copy or trigger a recall
  checkForD2DCopyOrRecall(cfId, srId, reuid, regid, svcClassId, srcDcId, srvSvcClassId);
  IF srcDcId > 0 THEN  -- disk to disk copy
    IF repack = 1 THEN
      createDiskCopyReplicaRequest(srId, srcDcId, srvSvcClassId, svcClassId, reuid, regid);
      result := -2;  -- Repack waits on the disk to disk copy
    ELSE
      createDiskCopyReplicaRequest(0, srcDcId, srvSvcClassId, svcClassId, reuid, regid);
      result := 1;  -- DISKCOPY_WAITDISK2DISKCOPY, for logging purposes
    END IF;
  ELSIF srcDcId = 0 THEN  -- recall
    BEGIN
      -- check whether there's already a recall, and get its svcClass
      SELECT Request.svcClass, DiskCopy.id
        INTO recSvcClass, recDcId
        FROM (SELECT id, svcClass FROM StagePrepareToGetRequest UNION ALL
              SELECT id, svcClass FROM StageGetRequest UNION ALL
              SELECT id, svcClass FROM StageRepackRequest UNION ALL
              SELECT id, svcClass FROM StageUpdateRequest UNION ALL
              SELECT id, svcClass FROM StagePrepareToUpdateRequest) Request,
             SubRequest, DiskCopy
       WHERE SubRequest.request = Request.id
         AND SubRequest.castorFile = cfId
         AND DiskCopy.castorFile = cfId
         AND DiskCopy.status = 2  -- WAITTAPERECALL
         AND SubRequest.status = 4;  -- WAITTAPERECALL
      -- we found one: we need to wait if either we are in a different svcClass
      -- so that afterwards a disk-to-disk copy is triggered, or in case of
      -- Repack so to trigger the repack migration. Note that Repack never
      -- sends a double repack request on the same file.
      IF svcClassId <> recSvcClass OR repack = 1 THEN
        -- make this request wait on the existing WAITTAPERECALL diskcopy
        makeSubRequestWait(srId, recDcId);
        result := -2;
      ELSE
        -- this is a PrepareToGet, and another request is recalling the file
        -- on our svcClass, so we can archive this one
        result := 0;  -- DISKCOPY_STAGED
      END IF;
    EXCEPTION WHEN NO_DATA_FOUND THEN
      -- let the stager trigger the recall
      result := 2;  -- DISKCOPY_WAITTAPERECALL
    END;
  ELSE
    result := -1;  -- user error
  END IF;
END;
/


/* PL/SQL method implementing processPutDoneRequest */
CREATE OR REPLACE PROCEDURE processPutDoneRequest
        (rsubreqId IN INTEGER, result OUT INTEGER) AS
  svcClassId NUMBER;
  cfId NUMBER;
  fs NUMBER;
  nbDCs INTEGER;
  putSubReq NUMBER;
BEGIN
  -- Get the svcClass and the castorFile for this subrequest
  SELECT Req.svcclass, SubRequest.castorfile
    INTO svcClassId, cfId
    FROM SubRequest, StagePutDoneRequest Req
   WHERE Subrequest.request = Req.id
     AND Subrequest.id = rsubreqId;
  -- lock the castor file to be safe in case of two concurrent subrequest
  SELECT id, fileSize INTO cfId, fs
    FROM CastorFile
   WHERE CastorFile.id = cfId FOR UPDATE;

  -- Check whether there is a Put|Update going on
  -- If any, we'll wait on one of them
  BEGIN
    SELECT subrequest.id INTO putSubReq
      FROM SubRequest, Id2Type
     WHERE SubRequest.castorfile = cfId
       AND SubRequest.request = Id2Type.id
       AND Id2Type.type IN (40, 44)  -- Put, Update
       AND SubRequest.status IN (0, 1, 2, 3, 6, 13, 14) -- START, RESTART, RETRY, WAITSCHED, READY, READYFORSCHED, BEINGSCHED
       AND ROWNUM < 2;
    -- we've found one, we wait
    UPDATE SubRequest
       SET parent = putSubReq,
           status = 5, -- WAITSUBREQ
           lastModificationTime = getTime()
     WHERE id = rsubreqId;
    result := -1;  -- no go, request in wait
  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- No put waiting, look now for available DiskCopies.
    -- Here we look on all FileSystems in our svcClass
    -- regardless their status, accepting Disabled ones
    -- as there's no real IO activity involved. However the
    -- risk is that the file might not come back and it's lost!
    SELECT COUNT(DiskCopy.id) INTO nbDCs
      FROM DiskCopy, FileSystem, DiskServer, DiskPool2SvcClass
     WHERE DiskCopy.castorfile = cfId
       AND DiskCopy.fileSystem = FileSystem.id
       AND FileSystem.diskpool = DiskPool2SvcClass.parent
       AND DiskPool2SvcClass.child = svcClassId
       AND FileSystem.diskserver = DiskServer.id
       AND DiskCopy.status = 6;  -- STAGEOUT
    IF nbDCs = 0 THEN
      -- This is a PutDone without a put (otherwise we would have found
      -- a DiskCopy on a FileSystem), so we fail the subrequest.
      UPDATE SubRequest SET
        status = 7,  -- FAILED
        errorCode = 1,  -- EPERM
        errorMessage = 'putDone without a put, or wrong service class'
      WHERE id = rsubReqId;
      result := 0;  -- no go
      COMMIT;
      RETURN;
    END IF;
    -- All checks have been completed, let's do it
    putDoneFunc(cfId, fs, 2, svcClassId);   -- context = PutDone
    result := 1;
  END;
END;
/


/* PL/SQL method implementing recreateCastorFile */
CREATE OR REPLACE PROCEDURE recreateCastorFile(cfId IN INTEGER,
                                               srId IN INTEGER,
                                               dcId OUT INTEGER,
                                               rstatus OUT INTEGER,
                                               rmountPoint OUT VARCHAR2,
                                               rdiskServer OUT VARCHAR2) AS
  rpath VARCHAR2(2048);
  nbRes INTEGER;
  fid INTEGER;
  nh VARCHAR2(2048);
  fclassId INTEGER;
  sclassId INTEGER;
  putSC INTEGER;
  pputSC INTEGER;
  contextPIPP INTEGER;
  ouid INTEGER;
  ogid INTEGER;
BEGIN
  -- Get data and lock access to the CastorFile
  -- This, together with triggers will avoid new TapeCopies
  -- or DiskCopies to be added
  SELECT fileclass INTO fclassId FROM CastorFile WHERE id = cfId FOR UPDATE;
  -- Determine the context (Put inside PrepareToPut ?)
  BEGIN
    -- check that we are a Put/Update
    SELECT Request.svcClass INTO putSC
      FROM (SELECT id, svcClass FROM StagePutRequest UNION ALL
            SELECT id, svcClass FROM StageUpdateRequest) Request, SubRequest
     WHERE SubRequest.id = srId
       AND Request.id = SubRequest.request;
    BEGIN
      -- check that there is a PrepareToPut/Update going on. There can be only a single one
      -- or none. If there was a PrepareTo, any subsequent PPut would be rejected and any
      -- subsequent PUpdate would be directly archived (cf. processPrepareRequest).
      SELECT SubRequest.diskCopy, PrepareRequest.svcClass INTO dcId, pputSC
        FROM (SELECT id, svcClass FROM StagePrepareToPutRequest UNION ALL
              SELECT id, svcClass FROM StagePrepareToUpdateRequest) PrepareRequest, SubRequest
       WHERE SubRequest.CastorFile = cfId
         AND PrepareRequest.id = SubRequest.request
         AND SubRequest.status = 6;  -- READY
      -- if we got here, we are a Put/Update inside a PrepareToPut
      -- however, are we in the same service class ?
      IF putSC != pputSC THEN
        -- No, this means we are a Put/Update and another PrepareToPut
        -- is already running in a different service class. This is forbidden
        dcId := 0;
        UPDATE SubRequest
           SET status = 7, -- FAILED
               errorCode = 16, -- EBUSY
               errorMessage = 'A prepareToPut is running in another service class for this file'
         WHERE id = srId;
        COMMIT;
        RETURN;
      END IF;
      -- if we got here, we are a Put/Update inside a PrepareToPut
      -- both running in the same service class
      contextPIPP := 1;
    EXCEPTION WHEN NO_DATA_FOUND THEN
      -- if we got here, we are a standalone Put/Update
      contextPIPP := 0;
    END;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    DECLARE
      nbPReqs NUMBER;
    BEGIN
      -- we are either a prepareToPut, or a prepareToUpdate and it's the only one (file is being created).
      -- In case of prepareToPut we need to check that we are we the only one
      SELECT count(SubRequest.diskCopy) INTO nbPReqs
        FROM (SELECT id FROM StagePrepareToPutRequest UNION ALL
              SELECT id FROM StagePrepareToUpdateRequest) PrepareRequest, SubRequest
       WHERE SubRequest.castorFile = cfId
         AND PrepareRequest.id = SubRequest.request
         AND SubRequest.status = 6;  -- READY
      -- Note that we did not select ourselves (we are in status 3)
      IF nbPReqs > 0 THEN
        -- this means we are a PrepareToPut and another PrepareToPut/Update
        -- is already running. This is forbidden
        dcId := 0;
        UPDATE SubRequest
           SET status = 7, -- FAILED
               errorCode = 16, -- EBUSY
               errorMessage = 'Another prepareToPut/Update is ongoing for this file'
         WHERE id = srId;
        COMMIT;
        RETURN;
      END IF;
      -- Everything is ok then
      contextPIPP := 0;
    END;
  END;
  IF contextPIPP = 0 THEN
    -- check if there is space in the diskpool in case of
    -- disk only pool
    -- get the svcclass and the user
    SELECT svcClass, euid, egid INTO sclassId, ouid, ogid
      FROM Subrequest,
           (SELECT id, svcClass, euid, egid FROM StagePutRequest UNION ALL
            SELECT id, svcClass, euid, egid FROM StageUpdateRequest UNION ALL
            SELECT id, svcClass, euid, egid FROM StagePrepareToPutRequest UNION ALL
            SELECT id, svcClass, euid, egid FROM StagePrepareToUpdateRequest) Request
     WHERE SubRequest.id = srId
       AND Request.id = SubRequest.request;
    IF checkFailJobsWhenNoSpace(sclassId) = 1 THEN
      -- The svcClass is declared disk only and has no space
      -- thus we cannot recreate the file
      dcId := 0;
      UPDATE SubRequest
         SET status = 7, -- FAILED
             errorCode = 28, -- ENOSPC
             errorMessage = 'File creation canceled since diskPool is full'
       WHERE id = srId;
      COMMIT;
      RETURN;
    END IF;
    -- check if the file existed in advance with a fileclass incompatible with this svcClass
    IF checkFailPutWhenTape0(sclassId, fclassId) = 1 THEN
      -- The svcClass is disk only and the file being overwritten asks for tape copy.
      -- This is impossible, so we deny the operation
      dcId := 0;
      UPDATE SubRequest
         SET status = 7, -- FAILED
             errorCode = 22, -- EINVAL
             errorMessage = 'File recreation canceled since this service class doesn''t provide tape backend'
       WHERE id = srId;
      COMMIT;
      RETURN;
    END IF;
    -- check if recreation is possible for TapeCopies
    SELECT count(*) INTO nbRes FROM TapeCopy
     WHERE status = 3 -- TAPECOPY_SELECTED
      AND castorFile = cfId;
    IF nbRes > 0 THEN
      -- We found something, thus we cannot recreate
      dcId := 0;
      UPDATE SubRequest
         SET status = 7, -- FAILED
             errorCode = 16, -- EBUSY
             errorMessage = 'File recreation canceled since file is being migrated'
        WHERE id = srId;
      COMMIT;
      RETURN;
    END IF;
    -- check if recreation is possible for DiskCopies
    SELECT count(*) INTO nbRes FROM DiskCopy
     WHERE status IN (1, 2, 5, 6, 11) -- WAITDISK2DISKCOPY, WAITTAPERECALL, WAITFS, STAGEOUT, WAITFS_SCHEDULING
       AND castorFile = cfId;
    IF nbRes > 0 THEN
      -- We found something, thus we cannot recreate
      dcId := 0;
      UPDATE SubRequest
         SET status = 7, -- FAILED
             errorCode = 16, -- EBUSY
             errorMessage = 'File recreation canceled since file is either being recalled, or replicated or created by another user'
       WHERE id = srId;
      COMMIT;
      RETURN;
    END IF;
    -- delete all tapeCopies
    deleteTapeCopies(cfId);
    -- set DiskCopies to INVALID
    UPDATE DiskCopy SET status = 7 -- INVALID
     WHERE castorFile = cfId AND status IN (0, 10); -- STAGED, CANBEMIGR
    -- create new DiskCopy
    SELECT fileId, nsHost INTO fid, nh FROM CastorFile WHERE id = cfId;
    SELECT ids_seq.nextval INTO dcId FROM DUAL;
    buildPathFromFileId(fid, nh, dcId, rpath);
    INSERT INTO DiskCopy (path, id, FileSystem, castorFile, status, creationTime, lastAccessTime, gcWeight, diskCopySize, nbCopyAccesses, owneruid, ownergid)
         VALUES (rpath, dcId, 0, cfId, 5, getTime(), getTime(), 0, 0, 0, ouid, ogid); -- status WAITFS
    INSERT INTO Id2Type (id, type) VALUES (dcId, 5); -- OBJ_DiskCopy
    rstatus := 5; -- WAITFS
    rmountPoint := '';
    rdiskServer := '';
  ELSE
    DECLARE
      fsId INTEGER;
      dsId INTEGER;
    BEGIN
      -- Retrieve the infos about the DiskCopy to be used
      SELECT fileSystem, status INTO fsId, rstatus FROM DiskCopy WHERE id = dcId;
      -- retrieve mountpoint and filesystem if any
      IF fsId = 0 THEN
        rmountPoint := '';
        rdiskServer := '';
      ELSE
        SELECT mountPoint, diskServer INTO rmountPoint, dsId
          FROM FileSystem WHERE FileSystem.id = fsId;
        SELECT name INTO rdiskServer FROM DiskServer WHERE id = dsId;
      END IF;
      -- See whether we should wait on another concurrent Put|Update request
      IF rstatus = 11 THEN  -- WAITFS_SCHEDULING
        -- another Put|Update request was faster than us, so we have to wait on it
        -- to be scheduled; we will be restarted at PutStart of that one
        DECLARE
          srParent NUMBER;
        BEGIN
          -- look for it
          SELECT SubRequest.id INTO srParent
            FROM SubRequest, Id2Type
           WHERE request = Id2Type.id
             AND type IN (40, 44)  -- Put, Update
             AND diskCopy = dcId
             AND status IN (13, 14, 6)  -- READYFORSCHED, BEINGSCHED, READY
             AND ROWNUM < 2;   -- if we have more than one just take one of them
          UPDATE SubRequest
             SET status = 5, parent = srParent  -- WAITSUBREQ
           WHERE id = srId;
        EXCEPTION WHEN NO_DATA_FOUND THEN
          -- we didn't find that request: let's assume it failed, we override the status 11
          rstatus := 5;  -- WAITFS
        END;
      ELSE
        -- we are the first, we change status as we are about to go to the scheduler
        UPDATE DiskCopy SET status = 11  -- WAITFS_SCHEDULING
         WHERE castorFile = cfId
           AND status = 5;  -- WAITFS
        -- and we still return 5 = WAITFS to the stager so to go on
      END IF;
    END;
  END IF;
  -- reset svcClass to the request's one and filesize to 0
  -- we are truncating the file and we want to use the new svcClass for migration
  UPDATE CastorFile SET fileSize = 0, svcClass = sclassId
   WHERE id = cfId;
  -- link SubRequest and DiskCopy
  UPDATE SubRequest SET diskCopy = dcId,
                        lastModificationTime = getTime()
   WHERE id = srId;
  -- we don't commit here, the stager will do that when
  -- the subRequest status will be updated to 6
END;
/


/* PL/SQL method implementing selectCastorFile */
CREATE OR REPLACE PROCEDURE selectCastorFile (fId IN INTEGER,
                                              nh IN VARCHAR2,
                                              sc IN INTEGER,
                                              fc IN INTEGER,
                                              fs IN INTEGER,
                                              fn IN VARCHAR2,
                                              lut IN NUMBER,
                                              rid OUT INTEGER,
                                              rfs OUT INTEGER) AS
  CONSTRAINT_VIOLATED EXCEPTION;
  PRAGMA EXCEPTION_INIT(CONSTRAINT_VIOLATED, -1);
  nsHostName VARCHAR2(2048);
BEGIN
  -- Get the stager/nsHost configuration option
  nsHostName := getConfigOption('stager', 'nsHost', nh);
  BEGIN
    -- try to find an existing file and lock it
    SELECT id, fileSize INTO rid, rfs FROM CastorFile
     WHERE fileId = fid AND nsHost = nsHostName FOR UPDATE;
    -- update lastAccess time
    UPDATE CastorFile SET LastAccessTime = getTime(),
                          lastKnownFileName = REGEXP_REPLACE(fn,'(/){2,}','/')
     WHERE id = rid;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- insert new row
    INSERT INTO CastorFile (id, fileId, nsHost, svcClass, fileClass, fileSize,
                            creationTime, lastAccessTime, lastUpdateTime, lastKnownFileName)
      VALUES (ids_seq.nextval, fId, nsHostName, sc, fc, fs, getTime(), getTime(), lut, REGEXP_REPLACE(fn,'(/){2,}','/'))
      RETURNING id, fileSize INTO rid, rfs;
    INSERT INTO Id2Type (id, type) VALUES (rid, 2); -- OBJ_CastorFile
  END;
EXCEPTION WHEN CONSTRAINT_VIOLATED THEN
  -- retry the select since a creation was done in between
  SELECT id, fileSize INTO rid, rfs FROM CastorFile
    WHERE fileId = fid AND nsHost = nsHostName FOR UPDATE;
END;
/

/* PL/SQL method implementing stageRelease */
CREATE OR REPLACE PROCEDURE stageRelease (fid IN INTEGER,
                                          nh IN VARCHAR2,
                                          ret OUT INTEGER) AS
  cfId INTEGER;
  nbRes INTEGER;
  nsHostName VARCHAR2(2048);
BEGIN
  -- Get the stager/nsHost configuration option
  nsHostName := getConfigOption('stager', 'nsHost', nh);
  -- Lock the access to the CastorFile
  -- This, together with triggers will avoid new TapeCopies
  -- or DiskCopies to be added
  SELECT id INTO cfId FROM CastorFile
   WHERE fileId = fid AND nsHost = nsHostName FOR UPDATE;
  -- check if removal is possible for TapeCopies
  SELECT count(*) INTO nbRes FROM TapeCopy
   WHERE status = 3 -- TAPECOPY_SELECTED
     AND castorFile = cfId;
  IF nbRes > 0 THEN
    -- We found something, thus we cannot recreate
    ret := 1;
    RETURN;
  END IF;
  -- check if recreation is possible for SubRequests
  SELECT count(*) INTO nbRes FROM SubRequest
   WHERE status != 11 AND castorFile = cfId;   -- ARCHIVED
  IF nbRes > 0 THEN
    -- We found something, thus we cannot recreate
    ret := 2;
    RETURN;
  END IF;
  -- set DiskCopies to INVALID
  UPDATE DiskCopy SET status = 7 -- INVALID
   WHERE castorFile = cfId AND status = 0; -- STAGED
  ret := 0;
END;
/

/* PL/SQL method implementing stageForcedRm */
CREATE OR REPLACE PROCEDURE stageForcedRm (fid IN INTEGER,
                                           nh IN VARCHAR2,
                                           result OUT NUMBER) AS
  cfId INTEGER;
  nbRes INTEGER;
  dcsToRm "numList";
  nsHostName VARCHAR2(2048);
BEGIN
  -- by default, we are successful
  result := 1;
  -- Get the stager/nsHost configuration option
  nsHostName := getConfigOption('stager', 'nsHost', nh);
  -- Lock the access to the CastorFile
  -- This, together with triggers will avoid new TapeCopies
  -- or DiskCopies to be added
  SELECT id INTO cfId FROM CastorFile
   WHERE fileId = fid AND nsHost = nsHostName FOR UPDATE;
  -- list diskcopies
  SELECT id BULK COLLECT INTO dcsToRm
    FROM DiskCopy
   WHERE castorFile = cfId
     AND status IN (0, 5, 6, 10, 11);  -- STAGED, WAITFS, STAGEOUT, CANBEMIGR, WAITFS_SCHEDULING
  -- If nothing found, report ENOENT
  IF dcsToRm.COUNT = 0 THEN
    result := 0;
    RETURN;
  END IF;
  -- Stop ongoing recalls
  deleteTapeCopies(cfId);
  -- mark all get/put requests for those diskcopies
  -- and the ones waiting on them as failed
  -- so that clients eventually get an answer
  FOR sr IN (SELECT id, status FROM SubRequest
              WHERE diskcopy IN
                (SELECT /*+ CARDINALITY(dcidTable 5) */ *
                   FROM TABLE(dcsToRm) dcidTable)
                AND status IN (0, 1, 2, 5, 6, 13)) LOOP   -- START, WAITSUBREQ, READY, READYFORSCHED
    UPDATE SubRequest
       SET status = 7,  -- FAILED
           errorCode = 4,  -- EINTR
           errorMessage = 'Canceled by another user request',
           parent = 0
     WHERE (id = sr.id) OR (parent = sr.id);
  END LOOP;
  -- Set selected DiskCopies to INVALID
  FORALL i IN dcsToRm.FIRST .. dcsToRm.LAST
    UPDATE DiskCopy SET status = 7 -- INVALID
     WHERE id = dcsToRm(i);
END;
/


/* PL/SQL method implementing stageRm */
CREATE OR REPLACE PROCEDURE stageRm (srId IN INTEGER,
                                     fid IN INTEGER,
                                     nh IN VARCHAR2,
                                     svcClassId IN INTEGER,
                                     ret OUT INTEGER) AS
  cfId INTEGER;
  scId INTEGER;
  nbRes INTEGER;
  dcsToRm "numList";
  sr "numList";
  dcStatus INTEGER;
  nsHostName VARCHAR2(2048);
BEGIN
  ret := 0;
  -- Get the stager/nsHost configuration option
  nsHostName := getConfigOption('stager', 'nsHost', nh);
  BEGIN
    -- Lock the access to the CastorFile
    -- This, together with triggers will avoid new TapeCopies
    -- or DiskCopies to be added
    SELECT id INTO cfId FROM CastorFile
     WHERE fileId = fid AND nsHost = nsHostName FOR UPDATE;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- This file does not exist in the stager catalog
    -- so we just fail the request
    UPDATE SubRequest
       SET status = 7,  -- FAILED
           errorCode = 2,  -- ENOENT
           errorMessage = 'File not found on disk cache'
     WHERE id = srId;
    RETURN;
  END;
  -- First select involved diskCopies
  scId := svcClassId;
  dcStatus := 0;
	IF scId > 0 THEN
    SELECT id BULK COLLECT INTO dcsToRm FROM (
      -- first physical diskcopies
      SELECT DC.id
        FROM DiskCopy DC, FileSystem, DiskPool2SvcClass DP2SC
       WHERE DC.castorFile = cfId
         AND DC.status IN (0, 1, 2, 6, 10)  -- STAGED, STAGEOUT, CANBEMIGR, WAITDISK2DISKCOPY, WAITTAPERECALL
         AND DC.fileSystem = FileSystem.id
         AND FileSystem.diskPool = DP2SC.parent
         AND DP2SC.child = scId)
    UNION ALL (
      -- and then diskcopies resulting from PrepareToPut|Update requests
      SELECT DC.id
        FROM (SELECT id, svcClass FROM StagePrepareToPutRequest UNION ALL
              SELECT id, svcClass FROM StagePrepareToUpdateRequest) PrepareRequest,
             SubRequest, DiskCopy DC
       WHERE SubRequest.diskCopy = DC.id
         AND PrepareRequest.id = SubRequest.request
         AND PrepareRequest.svcClass = scId
         AND DC.castorFile = cfId
         AND DC.status IN (5, 11)  -- WAITFS, WAITFS_SCHEDULING
      );
    IF dcsToRm.COUNT = 0 THEN
      -- We didn't find anything on this svcClass, fail and return
      UPDATE SubRequest
         SET status = 7,  -- FAILED
             errorCode = 2,  -- ENOENT
             errorMessage = 'File not found on this service class'
       WHERE id = srId;
      RETURN;
    END IF;
    -- Check whether something else is left: if not, do as
    -- we are performing a stageRm everywhere.
    -- First select current status of the diskCopies: if CANBEMIGR,
    -- make sure we don't drop the last remaining valid migratable copy,
    -- i.e. drop the disk only copies from the count.
    SELECT status INTO dcStatus
      FROM DiskCopy
     WHERE id = dcsToRm(1);
    IF dcStatus = 10 THEN  -- CANBEMIGR
      SELECT count(*) INTO nbRes FROM DiskCopy
       WHERE castorFile = cfId
         AND status IN (1, 10)  -- WAITDISK2DISKCOPY, CANBEMIGR
         AND id NOT IN (
           (SELECT /*+ CARDINALITY(dcidTable 5) */ *
              FROM TABLE(dcsToRm) dcidTable)
           UNION
           (SELECT DC.id     -- all diskcopies in Tape0 pools
              FROM DiskCopy DC, FileSystem, DiskPool2SvcClass D2S, SvcClass, FileClass
             WHERE DC.castorFile = cfId
               AND DC.fileSystem = FileSystem.id
               AND FileSystem.diskPool = D2S.parent
               AND D2S.child = SvcClass.id
               AND SvcClass.forcedFileClass = FileClass.id
               AND FileClass.nbCopies = 0));
    ELSE
      SELECT count(*) INTO nbRes FROM DiskCopy
         WHERE castorFile = cfId
           AND status IN (0, 1, 2, 5, 6, 10, 11)  -- WAITDISK2DISKCOPY, WAITTAPERECALL, STAGED, STAGEOUT, CANBEMIGR, WAITFS, WAITFS_SCHEDULING
           AND id NOT IN (SELECT /*+ CARDINALITY(dcidTable 5) */ *
                            FROM TABLE(dcsToRm) dcidTable);
    END IF;
    IF nbRes = 0 THEN
      -- nothing found, so we're dropping the last copy; then
      -- we need to perform all the checks to make sure we can
      -- allow the removal.
      scId := 0;
    END IF;
  END IF;
  IF scId = 0 THEN
    SELECT id BULK COLLECT INTO dcsToRm
      FROM DiskCopy
     WHERE castorFile = cfId
       AND status IN (0, 1, 2, 5, 6, 10, 11);  -- WAITDISK2DISKCOPY, WAITTAPERECALL, STAGED, WAITFS, STAGEOUT, CANBEMIGR, WAITFS_SCHEDULING
  END IF;

  IF scId = 0 THEN
    -- full cleanup is to be performed, do all necessary checks beforehand
    DECLARE
      segId INTEGER;
      unusedIds "numList";
    BEGIN
      -- check if removal is possible for migration
      SELECT count(*) INTO nbRes FROM TapeCopy
       WHERE status IN (0, 1, 2, 3) -- CREATED, TOBEMIGRATED, WAITINSTREAMS, SELECTED
         AND castorFile = cfId;
      IF nbRes > 0 THEN
        -- We found something, thus we cannot remove
        UPDATE SubRequest
           SET status = 7,  -- FAILED
               errorCode = 16,  -- EBUSY
               errorMessage = 'The file is not yet migrated'
         WHERE id = srId;
        RETURN;
      END IF;
      -- check if removal is possible for Disk2DiskCopy
      SELECT count(*) INTO nbRes FROM DiskCopy
       WHERE status = 1 -- DISKCOPY_WAITDISK2DISKCOPY
         AND castorFile = cfId;
      IF nbRes > 0 THEN
        -- We found something, thus we cannot remove
        UPDATE SubRequest
           SET status = 7,  -- FAILED
               errorCode = 16,  -- EBUSY
               errorMessage = 'The file is being replicated'
         WHERE id = srId;
        RETURN;
      END IF;
      -- Stop ongoing recalls if stageRm either everywhere or the only available diskcopy.
      -- This is not entirely clean: a proper operation here should be to
      -- drop the SubRequest waiting for recall but keep the recall if somebody
      -- else is doing it, and taking care of other WAITSUBREQ requests as well...
      -- but it's fair enough, provided that the last stageRm will cleanup everything.
      -- First lock all segments for the file
      SELECT segment.id BULK COLLECT INTO unusedIds
        FROM Segment, TapeCopy
       WHERE TapeCopy.castorfile = cfId
         AND TapeCopy.id = Segment.copy
      FOR UPDATE;
      -- Check whether we have any segment in SELECTED
      SELECT segment.id INTO segId
        FROM Segment, TapeCopy
       WHERE TapeCopy.castorfile = cfId
         AND TapeCopy.id = Segment.copy
         AND Segment.status = 7 -- SELECTED
         AND ROWNUM < 2;
      -- Something is running, so give up
      UPDATE SubRequest
         SET status = 7,  -- FAILED
             errorCode = 16,  -- EBUSY
             errorMessage = 'The file is being recalled from tape'
       WHERE id = srId;
      RETURN;
    EXCEPTION WHEN NO_DATA_FOUND THEN
      -- Nothing running
      deleteTapeCopies(cfId);
      -- Invalidate the DiskCopies
      UPDATE DiskCopy
         SET status = 7  -- INVALID
       WHERE status = 2  -- WAITTAPERECALL
         AND castorFile = cfId;
      -- Mark the 'recall' SubRequests as failed
      -- so that clients eventually get an answer
      UPDATE SubRequest
         SET status = 7,  -- FAILED
             errorCode = 4,  -- EINTR
             errorMessage = 'Recall canceled by another user request'
       WHERE castorFile = cfId and status IN (4, 5);   -- WAITTAPERECALL, WAITSUBREQ
    END;
  END IF;

  -- Now perform the remove:
  -- mark all get/put requests for those diskcopies
  -- and the ones waiting on them as failed
  -- so that clients eventually get an answer
  SELECT id BULK COLLECT INTO sr
    FROM SubRequest
   WHERE diskcopy IN (SELECT /*+ CARDINALITY(dcidTable 5) */ *
                        FROM TABLE(dcsToRm) dcidTable)
     AND status IN (0, 1, 2, 5, 6, 13); -- START, WAITSUBREQ, READY, READYFORSCHED
  FORALL i IN sr.FIRST..sr.LAST
    UPDATE SubRequest
       SET status = 7, parent = 0,  -- FAILED
           errorCode = 4,  -- EINTR
           errorMessage = 'Canceled by another user request'
     WHERE id = sr(i) OR parent = sr(i);
  -- Set selected DiskCopies to INVALID. In any case keep
  -- WAITTAPERECALL diskcopies so that recalls can continue.
  -- Note that WAITFS and WAITFS_SCHEDULING DiskCopies don't exist on disk
  -- so they will only be taken by the cleaning daemon for the failed DCs.
  FORALL i IN dcsToRm.FIRST .. dcsToRm.LAST
    UPDATE DiskCopy SET status = 7 -- INVALID
     WHERE id = dcsToRm(i);
  ret := 1;  -- ok
END;
/


/* PL/SQL method implementing a setFileGCWeight request */
CREATE OR REPLACE PROCEDURE setFileGCWeightProc
(fid IN NUMBER, nh IN VARCHAR2, svcClassId IN NUMBER, weight IN FLOAT, ret OUT INTEGER) AS
  CURSOR dcs IS
  SELECT DiskCopy.id, gcWeight
    FROM DiskCopy, CastorFile
   WHERE castorFile.id = diskcopy.castorFile
     AND fileid = fid
     AND nshost = getConfigOption('stager', 'nsHost', nh)
     AND fileSystem IN (
       SELECT FileSystem.id
         FROM FileSystem, DiskPool2SvcClass D2S
        WHERE FileSystem.diskPool = D2S.parent
          AND D2S.child = svcClassId);
  gcwProc VARCHAR(2048);
  gcw NUMBER;
BEGIN
  ret := 0;
  -- get gc userSetGCWeight function to be used, if any
  gcwProc := castorGC.getUserSetGCWeight(svcClassId);
  -- loop over diskcopies and update them
  FOR dc in dcs LOOP
    gcw := dc.gcWeight;
    -- compute actual gc weight to be used
    IF gcwProc IS NOT NULL THEN
      EXECUTE IMMEDIATE 'BEGIN :newGcw := ' || gcwProc || '(:oldGcw, :delta); END;'
        USING OUT gcw, IN gcw, weight;
    END IF;
    -- update DiskCopy
    UPDATE DiskCopy SET gcWeight = gcw WHERE id = dc.id;
    ret := 1;   -- some diskcopies found, ok
  END LOOP;
END;
/


/* PL/SQL method implementing updateAndCheckSubRequest */
CREATE OR REPLACE PROCEDURE updateAndCheckSubRequest(srId IN INTEGER, newStatus IN INTEGER, result OUT INTEGER) AS
  reqId INTEGER;
BEGIN
  -- Lock the access to the Request
  SELECT Id2Type.id INTO reqId
    FROM SubRequest, Id2Type
   WHERE SubRequest.id = srId
     AND Id2Type.id = SubRequest.request
     FOR UPDATE;
  -- Update Status
  UPDATE SubRequest SET status = newStatus,
                        answered = 1,
                        lastModificationTime = getTime() WHERE id = srId;
  IF newStatus IN (6, 11) THEN  -- READY, ARCHIVED
    UPDATE SubRequest SET getNextStatus = 1 -- GETNEXTSTATUS_FILESTAGED
     WHERE id = srId;
  END IF;
  -- Check whether it was the last subrequest in the request
  result := 1;
  SELECT id INTO result FROM SubRequest
   WHERE request = reqId
     AND status IN (0, 1, 2, 3, 4, 5, 7, 10, 12, 13, 14)   -- all but FINISHED, FAILED_FINISHED, ARCHIVED
     AND answered = 0
     AND ROWNUM < 2;
EXCEPTION WHEN NO_DATA_FOUND THEN -- No data found means we were last
  result := 0;
END;
/


/* PL/SQL method implementing storeClusterStatus */
CREATE OR REPLACE PROCEDURE storeClusterStatus
(machines IN castor."strList",
 fileSystems IN castor."strList",
 machineValues IN castor."cnumList",
 fileSystemValues IN castor."cnumList") AS
 ind NUMBER;
 machine NUMBER := 0;
 fs NUMBER := 0;
BEGIN
  -- Sanity check
  IF machines.COUNT = 0 OR fileSystems.COUNT = 0 THEN
    RETURN;
  END IF;
  -- First Update Machines
  FOR i in machines.FIRST .. machines.LAST LOOP
    ind := machineValues.FIRST + 9 * (i - machines.FIRST);
    IF machineValues(ind + 1) = 3 THEN -- ADMIN DELETED
      BEGIN
        SELECT id INTO machine FROM DiskServer WHERE name = machines(i);
        DELETE FROM id2Type WHERE id IN (SELECT machine from dual
                                         UNION ALL
                                         SELECT id FROM FileSystem WHERE diskServer = machine);
        DELETE FROM FileSystem WHERE diskServer = machine;
        DELETE FROM DiskServer WHERE name = machines(i);
      EXCEPTION WHEN NO_DATA_FOUND THEN
        -- Fine, was already deleted
        NULL;
      END;
    ELSE
      BEGIN
        SELECT id INTO machine FROM DiskServer WHERE name = machines(i);
        UPDATE DiskServer
           SET status = machineValues(ind),
               adminStatus = machineValues(ind + 1),
               readRate = machineValues(ind + 2),
               writeRate = machineValues(ind + 3),
               nbReadStreams = machineValues(ind + 4),
               nbWriteStreams = machineValues(ind + 5),
               nbReadWriteStreams = machineValues(ind + 6),
               nbMigratorStreams = machineValues(ind + 7),
               nbRecallerStreams = machineValues(ind + 8)
         WHERE name = machines(i);
      EXCEPTION WHEN NO_DATA_FOUND THEN
        -- we should insert a new machine here
        INSERT INTO DiskServer (name, id, status, adminStatus, readRate, writeRate, nbReadStreams,
                 nbWriteStreams, nbReadWriteStreams, nbMigratorStreams, nbRecallerStreams)
         VALUES (machines(i), ids_seq.nextval, machineValues(ind),
                 machineValues(ind + 1), machineValues(ind + 2),
                 machineValues(ind + 3), machineValues(ind + 4),
                 machineValues(ind + 5), machineValues(ind + 6),
                 machineValues(ind + 7), machineValues(ind + 8));
        INSERT INTO Id2Type (id, type) VALUES (ids_seq.currval, 8); -- OBJ_DiskServer
      END;
    END IF;
    -- Release the lock on the DiskServer as soon as possible to prevent
    -- deadlocks with other activities e.g. recaller
    COMMIT;
  END LOOP;
  -- And then FileSystems
  ind := fileSystemValues.FIRST;
  FOR i in fileSystems.FIRST .. fileSystems.LAST LOOP
    IF fileSystems(i) NOT LIKE ('/%') THEN
      SELECT id INTO machine FROM DiskServer WHERE name = fileSystems(i);
    ELSE
      IF fileSystemValues(ind + 1) = 3 THEN -- ADMIN DELETED
        BEGIN
          SELECT id INTO fs FROM FileSystem WHERE mountPoint = fileSystems(i) AND diskServer = machine;
          DELETE FROM id2Type WHERE id = fs;
          DELETE FROM FileSystem WHERE id = fs;
        EXCEPTION WHEN NO_DATA_FOUND THEN
          -- Fine, was already deleted
          NULL;
        END;
      ELSE
        BEGIN
          SELECT diskServer INTO machine FROM FileSystem
           WHERE mountPoint = fileSystems(i) AND diskServer = machine;
          UPDATE FileSystem
             SET status = fileSystemValues(ind),
                 adminStatus = fileSystemValues(ind + 1),
                 readRate = fileSystemValues(ind + 2),
                 writeRate = fileSystemValues(ind + 3),
                 nbReadStreams = fileSystemValues(ind + 4),
                 nbWriteStreams = fileSystemValues(ind + 5),
                 nbReadWriteStreams = fileSystemValues(ind + 6),
                 nbMigratorStreams = fileSystemValues(ind + 7),
                 nbRecallerStreams = fileSystemValues(ind + 8),
                 free = fileSystemValues(ind + 9),
                 totalSize = fileSystemValues(ind + 10),
                 minFreeSpace = fileSystemValues(ind + 11),
                 maxFreeSpace = fileSystemValues(ind + 12),
                 minAllowedFreeSpace = fileSystemValues(ind + 13)
           WHERE mountPoint = fileSystems(i)
             AND diskServer = machine;
        EXCEPTION WHEN NO_DATA_FOUND THEN
          -- we should insert a new filesystem here
          INSERT INTO FileSystem (free, mountPoint,
                 minFreeSpace, minAllowedFreeSpace, maxFreeSpace,
                 totalSize, readRate, writeRate, nbReadStreams,
                 nbWriteStreams, nbReadWriteStreams, nbMigratorStreams, nbRecallerStreams,
                 id, diskPool, diskserver, status, adminStatus)
          VALUES (fileSystemValues(ind + 9), fileSystems(i), fileSystemValues(ind+11),
                  fileSystemValues(ind + 13), fileSystemValues(ind + 12),
                  fileSystemValues(ind + 10), fileSystemValues(ind + 2),
                  fileSystemValues(ind + 3), fileSystemValues(ind + 4),
                  fileSystemValues(ind + 5), fileSystemValues(ind + 6),
                  fileSystemValues(ind + 7), fileSystemValues(ind + 8),
                  ids_seq.nextval, 0, machine, 2, 1); -- FILESYSTEM_DISABLED, ADMIN_FORCE
          INSERT INTO Id2Type (id, type) VALUES (ids_seq.currval, 12); -- OBJ_FileSystem
        END;
      END IF;
      ind := ind + 14;
    END IF;
    -- Release the lock on the FileSystem as soon as possible to prevent
    -- deadlocks with other activities e.g. recaller
    COMMIT;
  END LOOP;
END;
/


/* PL/SQL method implementing selectPriority */
CREATE OR REPLACE PROCEDURE selectPriority(
  inUid IN INTEGER,
  inGid IN INTEGER,
  inPriority IN INTEGER,
  dbInfo OUT castor.PriorityMap_Cur) AS
BEGIN
  OPEN dbInfo FOR
    SELECT euid, egid, priority FROM PriorityMap
     WHERE (euid = inUid OR inUid = -1)
       AND (egid = inGid OR inGid = -1)
       AND (priority = inPriority OR inPriority = -1);
END;
/

/* PL/SQL method implementing enterPriority
   it can raise constraint violation exception */
CREATE OR REPLACE PROCEDURE enterPriority(
  inUid IN NUMBER,
  inGid IN NUMBER,
  inPriority IN INTEGER) AS
BEGIN
  INSERT INTO PriorityMap (euid, egid, priority)
  VALUES (inUid, inGid, inPriority);
END;
/


/* PL/SQL method implementing deletePriority */
CREATE OR REPLACE PROCEDURE deletePriority(
  inUid IN INTEGER,
  inGid IN INTEGER) AS
BEGIN
  DELETE FROM PriorityMap
   WHERE (euid = inUid OR inUid = -1)
     AND (egid = inGid OR inGid = -1);
END;
/
/*******************************************************************
 *
 * @(#)RCSfile: oracleJob.sql,v  Revision: 1.669  Date: 2008/11/26 10:46:44  Author: sponcec3 
 *
 * PL/SQL code for scheduling and job handling
 *
 * @author Castor Dev team, castor-dev@cern.ch
 *******************************************************************/


/* PL/SQL method to update FileSystem nb of streams when files are opened */
CREATE OR REPLACE PROCEDURE updateFsFileOpened
(ds IN INTEGER, fs IN INTEGER, fileSize IN INTEGER) AS
BEGIN
  /* We lock first the diskserver in order to lock all the
     filesystems of this DiskServer in an atomical way */
  UPDATE DiskServer SET nbReadWriteStreams = nbReadWriteStreams + 1 WHERE id = ds;
  UPDATE FileSystem SET nbReadWriteStreams = nbReadWriteStreams + 1,
                        free = free - fileSize   -- just an evaluation, monitoring will update it
   WHERE id = fs;
END;
/


/* PL/SQL method to update FileSystem nb of streams when files are closed */
CREATE OR REPLACE PROCEDURE updateFsFileClosed(fs IN INTEGER) AS
  ds INTEGER;
BEGIN
  /* We lock first the diskserver in order to lock all the
     filesystems of this DiskServer in an atomical way */
  SELECT DiskServer INTO ds FROM FileSystem WHERE id = fs;
  UPDATE DiskServer SET nbReadWriteStreams = decode(sign(nbReadWriteStreams-1),-1,0,nbReadWriteStreams-1) WHERE id = ds;
  /* now we can safely go */
  UPDATE FileSystem SET nbReadWriteStreams = decode(sign(nbReadWriteStreams-1),-1,0,nbReadWriteStreams-1)
  WHERE id = fs;
END;
/


/* This method should be called when the first byte is written to a file
 * opened with an update. This will kind of convert the update from a
 * get to a put behavior.
 */
CREATE OR REPLACE PROCEDURE firstByteWrittenProc(srId IN INTEGER) AS
  dcId NUMBER;
  cfId NUMBER;
  nbres NUMBER;
  stat NUMBER;
  fclassId NUMBER;
  sclassId NUMBER;
BEGIN
  -- Get data and lock the CastorFile
  SELECT castorfile, diskCopy INTO cfId, dcId
    FROM SubRequest WHERE id = srId;
  SELECT fileclass INTO fclassId FROM CastorFile WHERE id = cfId FOR UPDATE;
  -- Check that the file is not busy, i.e. that we are not
  -- in the middle of migrating it. If we are, just stop and raise
  -- a user exception
  SELECT count(*) INTO nbRes FROM TapeCopy
    WHERE status = 3 -- TAPECOPY_SELECTED
    AND castorFile = cfId;
  IF nbRes > 0 THEN
    raise_application_error(-20106, 'Trying to update a busy file (ongoing migration)');
  END IF;
  -- Check that we can indeed open the file in write mode
  -- 3 criteria have to be met :
  --   - we are not using a INVALID copy (we should not update an old version)
  --   - we are not in a disk only svcClass and the file class asks for tape copy
  --   - there is no other update/put going on or there is a prepareTo and we are
  --     dealing with the same copy.
  SELECT status INTO stat FROM DiskCopy WHERE id = dcId;
  -- First the invalid case
  IF stat = 7 THEN -- INVALID
    raise_application_error(-20106, 'Trying to update an invalid copy of a file (file has been modified by somebody else concurrently)');
  END IF;
  -- Then the disk only check
  SELECT svcClass INTO sclassId
    FROM Subrequest, StageUpdateRequest Request
   WHERE SubRequest.id = srId
     AND Request.id = SubRequest.request;
  IF checkFailPutWhenTape0(sclassId, fclassId) = 1 THEN
     raise_application_error(-20106, 'File update canceled since this service class doesn''t provide tape backend');
  END IF;
  -- Otherwise, either we are alone or we are on the right copy and we
  -- only have to check that there is a prepareTo statement. We do the check
  -- only when needed, that is STAGEOUT case
  IF stat = 6 THEN -- STAGEOUT
    BEGIN
      -- do we have other ongoing requests ?
      SELECT count(*) INTO nbRes FROM SubRequest WHERE diskCopy = dcId AND id != srId;
      IF (nbRes > 0) THEN
        -- do we have a prepareTo Request ? There can be only a single one
        -- or none. If there was a PrepareTo, any subsequent PPut would be rejected and any
        -- subsequent PUpdate would be directly archived (cf. processPrepareRequest).
        SELECT SubRequest.id INTO nbRes
          FROM (SELECT id FROM StagePrepareToPutRequest UNION ALL
                SELECT id FROM StagePrepareToUpdateRequest) PrepareRequest,
               SubRequest
         WHERE SubRequest.CastorFile = cfId
           AND PrepareRequest.id = SubRequest.request
           AND SubRequest.status = 6;  -- READY
      END IF;
      -- we do have a prepareTo, so eveything is fine
    EXCEPTION WHEN NO_DATA_FOUND THEN
      -- No prepareTo, so prevent the writing
      raise_application_error(-20106, 'Trying to update a file already open for write (and no prepareToPut/Update context found)');
    END;
  ELSE
    -- If we are not having a STAGEOUT diskCopy, we are the only ones to write,
    -- so we have to setup everything
    -- invalidate all diskcopies
    UPDATE DiskCopy SET status = 7 -- INVALID
     WHERE castorFile = cfId
       AND status IN (0, 10);
    -- except the one we are dealing with that goes to STAGEOUT
    UPDATE DiskCopy
       SET status = 6 -- STAGEOUT
     WHERE id = dcid;
    -- Suppress all Tapecopies (avoid migration of previous version of the file)
    deleteTapeCopies(cfId);
  END IF;
  -- Invalidate any ongoing replications
  UPDATE DiskCopy SET status = 7 -- INVALID
   WHERE castorFile = cfId
     AND status = 1; -- WAITDISK2DISKCOPY
END;
/


/* Checks whether the protocol used is supporting updates and when not
 * calls firstByteWrittenProc as if the file was already modified */
CREATE OR REPLACE PROCEDURE handleProtoNoUpd
(srId IN INTEGER, protocol VARCHAR2) AS
BEGIN
  IF protocol != 'rfio'  AND
     protocol != 'rfio3' AND
     protocol != 'xroot' THEN
    firstByteWrittenProc(srId);
  END IF;
END;
/


/* PL/SQL method implementing putStart */
CREATE OR REPLACE PROCEDURE putStart
        (srId IN INTEGER, selectedDiskServer IN VARCHAR2, selectedMountPoint IN VARCHAR2,
         rdcId OUT INTEGER, rdcStatus OUT INTEGER, rdcPath OUT VARCHAR2) AS
  srStatus INTEGER;
  srSvcClass INTEGER;
  fsId INTEGER;
  prevFsId INTEGER;
  blah NUMBER;
BEGIN
  -- Get diskCopy and subrequest related information
  SELECT SubRequest.diskCopy, SubRequest.status, DiskCopy.fileSystem,
         Request.svcClass
    INTO rdcId, srStatus, prevFsId, srSvcClass
    FROM SubRequest, DiskCopy,
         (SELECT id, svcClass FROM StagePutRequest UNION ALL
          SELECT id, svcClass FROM StageGetRequest UNION ALL
          SELECT id, svcClass FROM StageUpdateRequest) Request
   WHERE SubRequest.diskcopy = Diskcopy.id
     AND SubRequest.id = srId
     AND SubRequest.request = Request.id;
  -- Check that we did not cancel the SubRequest in the mean time
  IF srStatus IN (7, 9, 10) THEN -- FAILED, FAILED_FINISHED, FAILED_ANSWERING
    raise_application_error(-20104, 'SubRequest canceled while queuing in scheduler. Giving up.');
  END IF;
  -- Check to see if the proposed diskserver and filesystem selected by the
  -- scheduler to run the job is in the correct service class.
  BEGIN
    SELECT FileSystem.id INTO fsId
      FROM DiskServer, FileSystem, DiskPool2SvcClass
     WHERE FileSystem.diskserver = DiskServer.id
       AND FileSystem.diskPool = DiskPool2SvcClass.parent
       AND DiskPool2SvcClass.child = srSvcClass
       AND DiskServer.name = selectedDiskServer
       AND FileSystem.mountPoint = selectedMountPoint;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    raise_application_error(-20114, 'Job scheduled to the wrong service class. Giving up.');
  END;
  -- Check that a job has not already started for this diskcopy. Refer to
  -- bug #14358
  IF prevFsId > 0 AND prevFsId <> fsId THEN
    raise_application_error(-20107, 'This job has already started for this DiskCopy. Giving up.');
  END IF;
  -- Get older castorFiles with the same name and drop their lastKnownFileName
  UPDATE /*+ INDEX (CastorFile) */ CastorFile
     SET lastKnownFileName = TO_CHAR(id)
   WHERE id IN (
    SELECT /*+ INDEX (cfOld) */ cfOld.id 
      FROM CastorFile cfOld, CastorFile cfNew, SubRequest
     WHERE cfOld.lastKnownFileName = cfNew.lastKnownFileName
       AND cfOld.fileid <> cfNew.fileid
       AND cfNew.id = SubRequest.castorFile
       AND SubRequest.id = srId);
  -- In case the DiskCopy was in WAITFS_SCHEDULING,
  -- restart the waiting SubRequests
  UPDATE SubRequest 
     SET status = 1, lastModificationTime = getTime(), parent = 0 -- SUBREQUEST_RESTART
   WHERE parent = srId;
  -- link DiskCopy and FileSystem and update DiskCopyStatus
  UPDATE DiskCopy 
     SET status = 6, -- DISKCOPY_STAGEOUT
         fileSystem = fsId,
         nbCopyAccesses = nbCopyAccesses + 1
   WHERE id = rdcId
   RETURNING status, path
   INTO rdcStatus, rdcPath;
END;
/


/* PL/SQL method implementing getUpdateStart */
CREATE OR REPLACE PROCEDURE getUpdateStart
        (srId IN INTEGER, selectedDiskServer IN VARCHAR2, selectedMountPoint IN VARCHAR2,
         dci OUT INTEGER, rpath OUT VARCHAR2, rstatus OUT NUMBER, reuid OUT INTEGER,
         regid OUT INTEGER) AS
  cfid INTEGER;
  fid INTEGER;
  dcId INTEGER;
  fsId INTEGER;
  dcIdInReq INTEGER;
  nh VARCHAR2(2048);
  fileSize INTEGER;
  srSvcClass INTEGER;
  proto VARCHAR2(2048);
  isUpd NUMBER;
  nbAc NUMBER;
  gcw NUMBER;
  gcwProc VARCHAR2(2048);
  cTime NUMBER;
BEGIN
  -- Get data
  SELECT euid, egid, svcClass, upd, diskCopy
    INTO reuid, regid, srSvcClass, isUpd, dcIdInReq
    FROM SubRequest,
        (SELECT id, euid, egid, svcClass, 0 AS upd FROM StageGetRequest UNION ALL
         SELECT id, euid, egid, svcClass, 1 AS upd FROM StageUpdateRequest) Request
   WHERE SubRequest.request = Request.id AND SubRequest.id = srId;
  -- Take a lock on the CastorFile. Associated with triggers,
  -- this guarantees we are the only ones dealing with its copies
  SELECT CastorFile.fileSize, CastorFile.id
    INTO fileSize, cfId
    FROM CastorFile, SubRequest
   WHERE CastorFile.id = SubRequest.castorFile
     AND SubRequest.id = srId FOR UPDATE;
  -- Check to see if the proposed diskserver and filesystem selected by the
  -- scheduler to run the job is in the correct service class.
  BEGIN
    SELECT FileSystem.id INTO fsId
      FROM DiskServer, FileSystem, DiskPool2SvcClass
     WHERE FileSystem.diskserver = DiskServer.id
       AND FileSystem.diskPool = DiskPool2SvcClass.parent
       AND DiskPool2SvcClass.child = srSvcClass
       AND DiskServer.name = selectedDiskServer
       AND FileSystem.mountPoint = selectedMountPoint;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    raise_application_error(-20114, 'Job scheduled to the wrong service class. Giving up.');
  END;
  -- Try to find local DiskCopy
  SELECT /*+ INDEX(DiskCopy I_DiskCopy_Castorfile) */ id, nbCopyAccesses, gcWeight, creationTime
    INTO dcId, nbac, gcw, cTime
    FROM DiskCopy
   WHERE DiskCopy.castorfile = cfId
     AND DiskCopy.filesystem = fsId
     AND DiskCopy.status IN (0, 6, 10) -- STAGED, STAGEOUT, CANBEMIGR
     AND ROWNUM < 2;
  -- We found it, so we are settled and we'll use the local copy.
  -- It might happen that we have more than one, because LSF may have
  -- scheduled a replication on a fileSystem which already had a previous diskcopy.
  -- We don't care and we randomly took the first one.
  -- First we will compute the new gcWeight of the diskcopy
  IF nbac = 0 THEN
    gcwProc := castorGC.getFirstAccessHook(srSvcClass);
    IF gcwProc IS NOT NULL THEN
      EXECUTE IMMEDIATE 'BEGIN :newGcw := ' || gcwProc || '(:oldGcw, :cTime); END;'
        USING OUT gcw, IN gcw, IN cTime;
    END IF;
  ELSE
    gcwProc := castorGC.getAccessHook(srSvcClass);
    IF gcwProc IS NOT NULL THEN
      EXECUTE IMMEDIATE 'BEGIN :newGcw := ' || gcwProc || '(:oldGcw, :cTime, :nbAc); END;'
        USING OUT gcw, IN gcw, IN cTime, IN nbac;
    END IF;
  END IF;
  -- Here we also update the gcWeight taking into account the new lastAccessTime
  -- and the weightForAccess from our svcClass: this is added as a bonus to
  -- the selected diskCopy.
  UPDATE DiskCopy
     SET gcWeight = gcw,
         lastAccessTime = getTime(),
         nbCopyAccesses = nbCopyAccesses + 1
   WHERE id = dcId
  RETURNING id, path, status INTO dci, rpath, rstatus;
  -- Let's update the SubRequest and set the link with the DiskCopy
  UPDATE SubRequest SET DiskCopy = dci WHERE id = srId RETURNING protocol INTO proto;
  -- In case of an update, if the protocol used does not support
  -- updates properly (via firstByteWritten call), we should
  -- call firstByteWritten now and consider that the file is being
  -- modified.
  IF isUpd = 1 THEN
    handleProtoNoUpd(srId, proto);
  END IF;
EXCEPTION WHEN NO_DATA_FOUND THEN
  -- No disk copy found on selected FileSystem. This can happen in 3 cases :
  --  + either a diskcopy was available and got disabled before this job
  --    was scheduled. Bad luck, we restart from scratch
  --  + or we are an update creating a file and there is a diskcopy in WAITFS
  --    or WAITFS_SCHEDULING associated to us. Then we have to call putStart
  --  + or we are recalling a 0-size file
  -- So we first check the update hypothesis
  IF isUpd = 1 AND dcIdInReq IS NOT NULL THEN
    DECLARE
      stat NUMBER;
    BEGIN
      SELECT status INTO stat FROM DiskCopy WHERE id = dcIdInReq;
      IF stat IN (5, 11) THEN -- WAITFS, WAITFS_SCHEDULING
        -- it is an update creating a file, let's call putStart
        putStart(srId, selectedDiskServer, selectedMountPoint, dci, rstatus, rpath);
        RETURN;
      END IF;
    END;
  END IF;
  -- Now we check the 0-size file hypothesis
  -- XXX this is currently broken, to be fixed later
  -- It was not an update creating a file, so we restart
  UPDATE SubRequest SET status = 1 WHERE id = srId;
  dci := 0;
  rpath := '';
END;
/


/* PL/SQL method implementing disk2DiskCopyStart */
CREATE OR REPLACE PROCEDURE disk2DiskCopyStart
(dcId IN INTEGER, srcDcId IN INTEGER, destdiskServer IN VARCHAR2,
 destMountPoint IN VARCHAR2, destPath OUT VARCHAR2, destSvcClass OUT VARCHAR2,
 srcDiskServer OUT VARCHAR2, srcMountPoint OUT VARCHAR2, srcPath OUT VARCHAR2,
 srcSvcClass OUT VARCHAR2) AS
  fsId NUMBER;
  cfId NUMBER;
  dsId NUMBER;
  res NUMBER;
  unused NUMBER;
  nbCopies NUMBER;
  cfNsHost VARCHAR2(2048);
BEGIN
  -- Check that we did not cancel the replication request in the mean time
  BEGIN
    SELECT SubRequest.status,
           StageDiskCopyReplicaRequest.svcClassName
      INTO unused, destSvcClass
      FROM SubRequest, StageDiskCopyReplicaRequest
     WHERE SubRequest.diskcopy = dcId
       AND SubRequest.request = StageDiskCopyReplicaRequest.id
       AND SubRequest.status = 6; -- READY
  EXCEPTION WHEN NO_DATA_FOUND THEN
    raise_application_error(-20111, 'Replication request canceled while queuing in scheduler. Giving up.');
  END;
  -- Check to see if the proposed diskserver and filesystem selected by the
  -- scheduler to run the destination end of disk2disk copy transfer is in the
  -- correct service class. I.e the service class of the original request. This
  -- is done to prevent files being written to an incorrect service class when
  -- diskservers/filesystems are moved.
  BEGIN
    SELECT FileSystem.id, DiskServer.id INTO fsId, dsId
      FROM DiskServer, FileSystem, DiskPool2SvcClass, SvcClass
     WHERE FileSystem.diskserver = DiskServer.id
       AND FileSystem.diskPool = DiskPool2SvcClass.parent
       AND DiskPool2SvcClass.child = SvcClass.id
       AND SvcClass.name = destSvcClass
       AND DiskServer.name = destDiskServer
       AND FileSystem.mountPoint = destMountPoint;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    raise_application_error(-20108, 'The destination job has been scheduled to the wrong service class.');
  END;
  -- Check whether the source diskcopy is still available. It may no longer be
  -- the case if it got disabled before the job started.
  BEGIN
    SELECT DiskServer.name, FileSystem.mountPoint, DiskCopy.path,
           CastorFile.id, CastorFile.nsHost, SvcClass.name
      INTO srcDiskServer, srcMountPoint, srcPath, cfId, cfNsHost, srcSvcClass
      FROM DiskCopy, CastorFile, DiskServer, FileSystem, DiskPool2SvcClass,
           SvcClass, StageDiskCopyReplicaRequest
     WHERE DiskCopy.id = srcDcId
       AND DiskCopy.castorfile = CastorFile.id
       AND DiskCopy.status IN (0, 10) -- STAGED, CANBEMIGR
       AND FileSystem.id = DiskCopy.filesystem
       AND FileSystem.status IN (0, 1) -- PRODUCTION, DRAINING
       AND FileSystem.diskPool = DiskPool2SvcClass.parent
       AND DiskPool2SvcClass.child = SvcClass.id
       AND DiskServer.id = FileSystem.diskserver
       AND DiskServer.status IN (0, 1)
       -- For diskpools which belong to multiple service classes, make sure
       -- we are checking for the file in the correct service class!
       AND StageDiskCopyReplicaRequest.sourceDiskCopy = DiskCopy.id
       AND StageDiskCopyReplicaRequest.sourceSvcClass = SvcClass.id
       AND StageDiskCopyReplicaRequest.destDiskCopy = dcId;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    raise_application_error(-20109, 'The source DiskCopy to be replicated is no longer available.');
  END;
  -- Prevent multiple copies of the file being created on the same diskserver
  SELECT count(*) INTO nbCopies
    FROM DiskCopy, FileSystem
   WHERE DiskCopy.filesystem = FileSystem.id
     AND FileSystem.diskserver = dsId
     AND DiskCopy.castorfile = cfId
     AND DiskCopy.id != dcId
     AND DiskCopy.status IN (0, 1, 2, 10); -- STAGED, DISK2DISKCOPY, WAITTAPERECALL, CANBEMIGR
  IF nbCopies > 0 THEN
    raise_application_error(-20112, 'Multiple copies of this file already found on this diskserver');
  END IF;
  -- Update the filesystem of the destination diskcopy. If the update fails
  -- either the diskcopy doesn't exist anymore indicating the cancellation of
  -- the subrequest or another transfer has already started for it.
  UPDATE DiskCopy SET filesystem = fsId
   WHERE id = dcId
     AND filesystem = 0
     AND status = 1 -- WAITDISK2DISKCOPY
  RETURNING path INTO destPath;
  IF destPath IS NULL THEN
    raise_application_error(-20110, 'A transfer has already started for this DiskCopy.');
  END IF;
END;
/


/* PL/SQL method implementing disk2DiskCopyDone */
CREATE OR REPLACE PROCEDURE disk2DiskCopyDone
(dcId IN INTEGER, srcDcId IN INTEGER) AS
  srId INTEGER;
  cfId INTEGER;
  fsId INTEGER;
  srcStatus INTEGER;
  proto VARCHAR2(2048);
  reqId NUMBER;
  svcClassId NUMBER;
  gcwProc VARCHAR2(2048);
  gcw NUMBER;
  fileSize NUMBER;
  ouid INTEGER;
  ogid INTEGER;
BEGIN
  -- Lock the CastorFile
  SELECT castorFile INTO cfId
    FROM DiskCopy
   WHERE id = dcId;
  SELECT id INTO cfId FROM CastorFile WHERE id = cfId FOR UPDATE;
  -- Try to get the source diskcopy status
  BEGIN
    SELECT status, gcWeight, diskCopySize
      INTO srcStatus, gcw, fileSize
      FROM DiskCopy
     WHERE id = srcDcId
       AND status IN (0, 10);  -- STAGED, CANBEMIGR
  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- If no diskcopy was returned it means that the source has either:
    --   A) Been GCed while the copying was taking place or
    --   B) The diskcopy is no longer in a STAGED or CANBEMIGR state.
    -- As we do not know which status to put the new copy in and/or
    -- cannot trust that the file was not modified mid transfer, we
    -- invalidate the new copy.
    UPDATE DiskCopy SET status = 7 WHERE id = dcId -- INVALID
    RETURNING CastorFile, FileSystem INTO cfId, fsId;
    -- Restart the SubRequests waiting for the copy
    UPDATE SubRequest SET status = 1, -- SUBREQUEST_RESTART
                          lastModificationTime = getTime()
     WHERE diskCopy = dcId RETURNING id INTO srId;
    UPDATE SubRequest SET status = 1, lastModificationTime = getTime(), parent = 0
     WHERE parent = srId; -- SUBREQUEST_RESTART
    -- Update filesystem status
    updateFsFileClosed(fsId);
    -- Archive the diskCopy replica request
    archiveSubReq(srId);
    RETURN;
  END;
  -- Otherwise, we can validate the new diskcopy
  -- update SubRequest and get data
  UPDATE SubRequest SET status = 6, -- SUBREQUEST_READY
                        getNextStatus = 1, -- GETNEXTSTATUS_FILESTAGED
                        lastModificationTime = getTime()
   WHERE diskCopy = dcId RETURNING id, protocol, request
    INTO srId, proto, reqId;
  SELECT SvcClass.id INTO svcClassId
    FROM SvcClass, StageDiskCopyReplicaRequest Req, SubRequest
   WHERE SubRequest.id = srId
     AND SubRequest.request = Req.id
     AND Req.svcClass = SvcClass.id;
  -- Compute gcWeight
  gcwProc := castorGC.getCopyWeight(svcClassId);
  EXECUTE IMMEDIATE 'BEGIN :newGcw := ' || gcwProc || '(:size, :status, :gcw); END;'
    USING OUT gcw, IN fileSize, srcStatus, gcw;
  -- Update status
  UPDATE DiskCopy
     SET status = srcStatus,
         gcWeight = gcw
   WHERE id = dcId
  RETURNING castorFile, fileSystem, owneruid, ownergid
    INTO cfId, fsId, ouid, ogid;
  -- Update filesystem status
  updateFsFileClosed(fsId);
  -- Archive the diskCopy replica request
  archiveSubReq(srId);
  -- Trigger the creation of additional copies of the file, if necessary.
  replicateOnClose(cfId, ouid, ogid);
  -- Wake up waiting subrequests
  UPDATE SubRequest SET status = 1,  -- SUBREQUEST_RESTART
                        lastModificationTime = getTime(),
                        parent = 0
   WHERE parent = srId;
END;
/


/* PL/SQL method implementing disk2DiskCopyFailed */
CREATE OR REPLACE PROCEDURE disk2DiskCopyFailed
(dcId IN INTEGER, res OUT INTEGER) AS
  fsId NUMBER;
  cfId NUMBER;
  ouid INTEGER;
  ogid INTEGER;
BEGIN
  -- Set the diskcopy status to INVALID so that it will be garbage collected
  -- at a later date.
  fsId := 0;
  res := 0;
  UPDATE DiskCopy SET status = 7 -- INVALID
   WHERE status = 1 -- WAITDISK2DISKCOPY
     AND id = dcId
   RETURNING fileSystem, castorFile, owneruid, ownergid
    INTO fsId, cfId, ouid, ogid;
  -- Fail the corresponding subrequest
  UPDATE SubRequest SET status = 9, -- FAILED_FINISHED
         lastModificationTime = getTime()
   WHERE diskCopy = dcId
     AND status IN (6, 14) -- READY, BEINGSHCED
   RETURNING id INTO res;
  IF res = 0 THEN
    -- Dont trigger replicateOnClose here as we may have been restarted
    RETURN;
  END IF;
  -- If no filesystem was set on the diskcopy then we can safely delete it
  -- without waiting for garbage collection as the transfer was never started
  IF fsId = 0 THEN
    DELETE FROM DiskCopy WHERE id = dcId;
    DELETE FROM Id2Type WHERE id = dcId;
  END IF;
  -- Wake up other subrequests waiting on it
  UPDATE SubRequest SET status = 1, -- RESTART
                        lastModificationTime = getTime(),
                        parent = 0
   WHERE parent = res;
  -- Update filesystem status
  IF fsId > 0 THEN
    updateFsFileClosed(fsId);
  END IF;
  -- Trigger the creation of additional copies of the file, if necessary.
  -- Note: We do this also on failure to be able to recover from transient
  -- errors. E.g timeouts while waiting to be scheduled.
  replicateOnClose(cfId, ouid, ogid);
END;
/


/* PL/SQL method implementing prepareForMigration */
CREATE OR REPLACE PROCEDURE prepareForMigration (srId IN INTEGER,
                                                 fs IN INTEGER,
                                                 ts IN NUMBER,
                                                 fId OUT NUMBER,
                                                 nh OUT VARCHAR2,
                                                 userId OUT INTEGER,
                                                 groupId OUT INTEGER,
                                                 errorCode OUT INTEGER) AS
  cfId INTEGER;
  dcId INTEGER;
  fsId INTEGER;
  scId INTEGER;
  realFileSize INTEGER;
  unused INTEGER;
  contextPIPP INTEGER;
BEGIN
  errorCode := 0;
  -- Get CastorFile
  SELECT castorFile, diskCopy INTO cfId, dcId FROM SubRequest WHERE id = srId;
  -- Lock the CastorFile
  SELECT id INTO cfId FROM CastorFile WHERE id = cfId FOR UPDATE;
  -- Determine the context (Put inside PrepareToPut or not)
  -- check that we are a Put or an Update
  SELECT Request.id INTO unused
    FROM SubRequest,
       (SELECT id FROM StagePutRequest UNION ALL
        SELECT id FROM StageUpdateRequest) Request
   WHERE SubRequest.id = srId
     AND Request.id = SubRequest.request;
  BEGIN
    -- Check that there is a PrepareToPut/Update going on. There can be only a single one
    -- or none. If there was a PrepareTo, any subsequent PPut would be rejected and any
    -- subsequent PUpdate would be directly archived (cf. processPrepareRequest).
    SELECT SubRequest.diskCopy INTO unused
      FROM SubRequest,
       (SELECT id FROM StagePrepareToPutRequest UNION ALL
        SELECT id FROM StagePrepareToUpdateRequest) Request
     WHERE SubRequest.CastorFile = cfId
       AND Request.id = SubRequest.request
       AND SubRequest.status = 6; -- READY
    -- if we got here, we are a Put inside a PrepareToPut
    contextPIPP := 0;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- here we are a standalone Put
    contextPIPP := 1;
  END;
  -- Check whether the diskCopy is still in STAGEOUT. If not, the file
  -- was deleted via stageRm while being written to. Thus, we should just give up
  BEGIN
    SELECT status INTO unused
      FROM DiskCopy WHERE id = dcId AND status = 6; -- STAGEOUT
  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- So we are in the case, we give up
    errorCode := 1;
    -- But we still would like to have the fileId and nameserver
    -- host for logging reasons
    SELECT fileId, nsHost INTO fId, nh
      FROM CastorFile WHERE id = cfId;
    RETURN;
  END;
  -- Now we can safely update CastorFile's file size
  UPDATE CastorFile SET fileSize = fs, lastUpdateTime = ts
   WHERE id = cfId AND (lastUpdateTime IS NULL OR ts >= lastUpdateTime);
  -- If ts < lastUpdateTime, we were late and another job already updated the
  -- CastorFile. So we nevertheless retrieve the real file size, and
  -- we take a lock on the CastorFile. Together with triggers, this insures that
  -- we are the only ones to deal with its copies.
  SELECT fileId, nsHost, fileSize INTO fId, nh, realFileSize
    FROM CastorFile
    WHERE id = cfId
    FOR UPDATE;
  -- Get uid, gid and svcclass from Request
  SELECT euid, egid, svcClass INTO userId, groupId, scId
    FROM SubRequest,
      (SELECT euid, egid, id, svcClass from StagePutRequest UNION ALL
       SELECT euid, egid, id, svcClass from StageUpdateRequest UNION ALL
       SELECT euid, egid, id, svcClass from StagePutDoneRequest) Request
   WHERE SubRequest.request = Request.id AND SubRequest.id = srId;
  -- Get the filesystem of the DiskCopy
  SELECT fileSystem INTO fsId from DiskCopy
   WHERE castorFile = cfId AND status = 6;
  IF contextPIPP != 0 THEN
    -- If not a put inside a PrepareToPut/Update, create TapeCopies
    -- and update DiskCopy status
    putDoneFunc(cfId, realFileSize, contextPIPP, scId);
  ELSE
    -- If put inside PrepareToPut/Update, restart any PutDone currently
    -- waiting on this put/update
    UPDATE SubRequest SET status = 1, parent = 0 -- RESTART
     WHERE id IN
      (SELECT SubRequest.id FROM SubRequest, Id2Type
        WHERE SubRequest.request = Id2Type.id
          AND Id2Type.type = 39       -- PutDone
          AND SubRequest.castorFile = cfId
          AND SubRequest.status = 5); -- WAITSUBREQ
  END IF;
  -- Update filesystem status
  updateFsFileClosed(fsId);
  -- Archive Subrequest
  archiveSubReq(srId);
  COMMIT;
END;
/


/* PL/SQL method implementing getUpdateDone */
CREATE OR REPLACE PROCEDURE getUpdateDoneProc
(subReqId IN NUMBER) AS
BEGIN
  archiveSubReq(subReqId);
END;
/


/* PL/SQL method implementing getUpdateFailed */
CREATE OR REPLACE PROCEDURE getUpdateFailedProc
(srId IN NUMBER) AS
BEGIN
  UPDATE SubRequest SET status = 9 -- FAILED_FINISHED
   WHERE id = srId;
  UPDATE SubRequest SET status = 1 -- RESTART
   WHERE parent = srId;
END;
/


/* PL/SQL method implementing putFailedProc */
CREATE OR REPLACE PROCEDURE putFailedProc(srId IN NUMBER) AS
  dcId INTEGER;
  fsId INTEGER;
  cfId INTEGER;
  unused INTEGER;
BEGIN
  -- Fail SubRequest
  UPDATE SubRequest
     SET status = 9 -- FAILED_FINISHED
   WHERE id = srId
  RETURNING diskCopy, castorFile INTO dcId, cfId;
  IF dcId > 0 THEN
    SELECT fileSystem INTO fsId FROM DiskCopy WHERE id = dcId;
    -- Take file closing into account
    IF fsId > 0 THEN
      updateFsFileClosed(fsId);
    END IF;
    -- ELSE the subRequest is not linked to a diskCopy: should never happen,
    -- but we observed NO DATA FOUND errors and the above SELECT is the only
    -- query that could trigger them! Anyway it's fine to ignore the FS update,
    -- it will be properly updated by the monitoring.
  END IF;
  -- Determine the context (Put inside PrepareToPut/Update ?)
  BEGIN
    -- Check that there is a PrepareToPut/Update going on. There can be only a single one
    -- or none. If there was a PrepareTo, any subsequent PPut would be rejected and any
    -- subsequent PUpdate would be directly archived (cf. processPrepareRequest).
    SELECT SubRequest.id INTO unused
      FROM (SELECT id FROM StagePrepareToPutRequest UNION ALL
            SELECT id FROM StagePrepareToUpdateRequest) PrepareRequest, SubRequest
     WHERE SubRequest.castorFile = cfId
       AND PrepareRequest.id = SubRequest.request
       AND SubRequest.status = 6; -- READY
    -- The select worked out, so we have a prepareToPut/Update
    -- In such a case, we do not cleanup DiskCopy and CastorFile
    -- but we have to wake up a potential waiting putDone
    UPDATE SubRequest SET status = 1, parent = 0 -- RESTART
     WHERE id IN
      (SELECT SubRequest.id
        FROM StagePutDoneRequest, SubRequest
       WHERE SubRequest.CastorFile = cfId
         AND StagePutDoneRequest.id = SubRequest.request
         AND SubRequest.status = 5); -- WAITSUBREQ
  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- This means we are a standalone put
    -- thus cleanup DiskCopy and maybe the CastorFile
    -- (the physical file is dropped by the job)
    DELETE FROM DiskCopy WHERE id = dcId;
    DELETE FROM Id2Type WHERE id = dcId;
    deleteCastorFile(cfId);
  END;
END;
/


/* PL/SQL method implementing getSchedulerResources */
CREATE OR REPLACE
PROCEDURE getSchedulerResources(resources OUT castor.SchedulerResources_Cur) AS
BEGIN
  -- Provide a list of all scheduler resources. For the moment this is just
  -- the status of all diskservers, their associated filesystems and the
  -- service class they are in.
  OPEN resources
    FOR SELECT DiskServer.name, DiskServer.status, DiskServer.adminstatus,
               Filesystem.mountpoint, FileSystem.status, FileSystem.adminstatus,
	       SvcClass.name
          FROM DiskServer, FileSystem, DiskPool2SvcClass, SvcClass
         WHERE FileSystem.diskServer = DiskServer.id
           AND FileSystem.diskPool = DiskPool2SvcClass.parent
           AND DiskPool2SvcClass.child = SvcClass.id;
END;
/


/* PL/SQL method implementing failSchedulerJob */
CREATE OR REPLACE
PROCEDURE failSchedulerJob(srSubReqId IN VARCHAR2, srErrorCode IN NUMBER, res OUT INTEGER) AS
  reqType NUMBER;
  srId NUMBER;
  dcId NUMBER;
BEGIN
  -- Get the necessary information needed about the request and subrequest
  SELECT SubRequest.id, SubRequest.diskcopy, Id2Type.type
    INTO srId, dcId, reqType
    FROM SubRequest, Id2Type
   WHERE SubRequest.subreqid = srSubReqId
     AND SubRequest.request = Id2Type.id
     AND SubRequest.status IN (6, 14); -- READY, BEINGSCHED
  -- Call the relevant cleanup procedures for the job, procedures that they
  -- would have called themselves if the job had failed!
  IF reqType = 40 THEN -- Put
    putFailedProc(srId);
  ELSIF reqType = 133 THEN -- DiskCopyReplica
    disk2DiskCopyFailed(dcId, res);
    RETURN;
  ELSE -- Get or Update
    getUpdateFailedProc(srId);
  END IF;
  -- Fail the subrequest
  UPDATE SubRequest
     SET status = 7, -- FAILED
         errorCode = srErrorCode,
         lastModificationTime = getTime()
   WHERE id = srId
     AND answered = 0
  RETURNING id INTO res;
  -- In all cases, restart requests waiting on the failed one
  IF res IS NOT NULL THEN
    -- Wake up other subrequests waiting on it
    UPDATE SubRequest SET status = 1, -- RESTART
                          lastModificationTime = getTime(),
                          parent = 0
     WHERE parent = res AND status = 5; -- WAITSUBREQ
  END IF;
  -- CAUTION: if you add additional processing here make sure the logic
  -- is also covered in the disk2DiskCopyFailed procedure as we don't
  -- get this far in the processing for StageDiskCopyReplicaRequests!!
EXCEPTION WHEN NO_DATA_FOUND THEN
  -- The subrequest may have been removed, nothing to be done
  res := 0;
  RETURN;
END;
/


/* PL/SQL method implementing postJobChecks */
CREATE OR REPLACE
PROCEDURE postJobChecks(srSubReqId IN VARCHAR2, srErrorCode IN NUMBER, res OUT INTEGER) AS
  unused NUMBER;
BEGIN
  -- Check to see if the subrequest status is SUBREQUEST_READY
  SELECT status INTO unused FROM SubRequest
   WHERE subreqid = srSubReqId
     AND status = 6; -- READY
  -- The job status is incorrect so terminate the scheduler job
  failSchedulerJob(srSubReqId, srErrorCode, res);
EXCEPTION WHEN NO_DATA_FOUND THEN
  -- The subrequest has the correct status because A) the job was successfully
  -- scheduled in LSF or B) a postJobChecks call has already been performed by
  -- another jobManager
  res := 0;
  RETURN;
END;
/


/* PL/SQL method implementing jobToSchedule */
CREATE OR REPLACE
PROCEDURE jobToSchedule(srId OUT INTEGER, srSubReqId OUT VARCHAR2, srProtocol OUT VARCHAR2,
                        srXsize OUT INTEGER, srRfs OUT VARCHAR2, reqId OUT VARCHAR2,
                        cfFileId OUT INTEGER, cfNsHost OUT VARCHAR2, reqSvcClass OUT VARCHAR2,
                        reqType OUT INTEGER, reqEuid OUT INTEGER, reqEgid OUT INTEGER,
                        reqUsername OUT VARCHAR2, srOpenFlags OUT VARCHAR2, clientIp OUT INTEGER,
                        clientPort OUT INTEGER, clientVersion OUT INTEGER, clientType OUT INTEGER,
                        reqSourceDiskCopy OUT INTEGER, reqDestDiskCopy OUT INTEGER,
                        clientSecure OUT INTEGER, reqSourceSvcClass OUT VARCHAR2,
                        reqCreationTime OUT INTEGER, reqDefaultFileSize OUT INTEGER,
                        excludedHosts OUT castor.DiskServerList_Cur) AS
  dsId NUMBER;
  cfId NUMBER;
  unused NUMBER;
BEGIN
  -- Get the next subrequest to be scheduled.
  UPDATE SubRequest
     SET status = 14, lastModificationTime = getTime() -- BEINGSCHED
   WHERE status = 13 -- READYFORSCHED
     AND rownum < 2
 RETURNING id, subReqId, protocol, xsize, requestedFileSystems
    INTO srId, srSubReqId, srProtocol, srXsize, srRfs;

  -- Extract the rest of the information required to submit a job into the
  -- scheduler through the job manager.
  SELECT CastorFile.id, CastorFile.fileId, CastorFile.nsHost, SvcClass.name,
         Id2type.type, Request.reqId, Request.euid, Request.egid, Request.username,
	 Request.direction, Request.sourceDiskCopy, Request.destDiskCopy,
         Request.sourceSvcClass, Client.ipAddress, Client.port, Client.version,
	 (SELECT type
            FROM Id2type
           WHERE id = Client.id) clientType, Client.secure, Request.creationTime,
         decode(SvcClass.defaultFileSize, 0, 2000000000, SvcClass.defaultFileSize)
    INTO cfId, cfFileId, cfNsHost, reqSvcClass, reqType, reqId, reqEuid, reqEgid,
         reqUsername, srOpenFlags, reqSourceDiskCopy, reqDestDiskCopy, reqSourceSvcClass,
         clientIp, clientPort, clientVersion, clientType, clientSecure, reqCreationTime,
         reqDefaultFileSize
    FROM SubRequest, CastorFile, SvcClass, Id2type, Client,
         (SELECT id, username, euid, egid, reqid, client, creationTime,
                 'w' direction, svcClass, NULL sourceDiskCopy, NULL destDiskCopy,
                 NULL sourceSvcClass
            FROM StagePutRequest
           UNION ALL
          SELECT id, username, euid, egid, reqid, client, creationTime,
                 'r' direction, svcClass, NULL sourceDiskCopy, NULL destDiskCopy,
                 NULL sourceSvcClass
            FROM StageGetRequest
           UNION ALL
          SELECT id, username, euid, egid, reqid, client, creationTime,
                 'o' direction, svcClass, NULL sourceDiskCopy, NULL destDiskCopy,
                 NULL sourceSvcClass
            FROM StageUpdateRequest
           UNION ALL
          SELECT id, username, euid, egid, reqid, client, creationTime - 3600,
                 'w' direction, svcClass, sourceDiskCopy, destDiskCopy,
                 (SELECT name FROM SvcClass WHERE id = sourceSvcClass)
            FROM StageDiskCopyReplicaRequest) Request
   WHERE SubRequest.id = srId
     AND SubRequest.castorFile = CastorFile.id
     AND Request.svcClass = SvcClass.id
     AND Id2type.id = SubRequest.request
     AND Request.id = SubRequest.request
     AND Request.client = Client.id;

  -- Extract additional information required for StageDiskCopyReplicaRequest's
  IF reqType = 133 THEN
    -- Set the requested filesystem for the job to the mountpoint of the
    -- source disk copy. The scheduler plugin needs this information to correctly
    -- schedule access to the filesystem.
    BEGIN
      SELECT CONCAT(CONCAT(DiskServer.name, ':'), FileSystem.mountpoint), DiskServer.id
        INTO srRfs, dsId
        FROM DiskServer, FileSystem, DiskCopy, DiskPool2SvcClass, SvcClass
       WHERE DiskCopy.id = reqSourceDiskCopy
         AND DiskCopy.status IN (0, 10) -- STAGED, CANBEMIGR
         AND DiskCopy.filesystem = FileSystem.id
         AND FileSystem.status IN (0, 1)  -- PRODUCTION, DRAINING
         AND FileSystem.diskserver = DiskServer.id
         AND DiskServer.status IN (0, 1)  -- PRODUCTION, DRAINING
         AND FileSystem.diskPool = DiskPool2SvcClass.parent
         AND DiskPool2SvcClass.child = SvcClass.id
         AND SvcClass.name = reqSourceSvcClass;
    EXCEPTION WHEN NO_DATA_FOUND THEN
      -- The source diskcopy has been removed before the jobManager could enter
      -- the job into LSF. Under this circumstance fail the diskcopy transfer.
      -- This will restart the subrequest and trigger a tape recall if possible
      disk2DiskCopyFailed(reqDestDiskCopy, unused);
      COMMIT;
      RAISE;
    END;

    -- Provide the job manager with a list of hosts to exclude as destination
    -- diskservers.
    OPEN excludedHosts FOR
      SELECT distinct(DiskServer.name)
        FROM DiskCopy, DiskServer, FileSystem, DiskPool2SvcClass, SvcClass
       WHERE DiskCopy.filesystem = FileSystem.id
         AND FileSystem.diskserver = DiskServer.id
         AND FileSystem.diskpool = DiskPool2SvcClass.parent
         AND DiskPool2SvcClass.child = SvcClass.id
         AND SvcClass.name = reqSvcClass
         AND DiskCopy.castorfile = cfId
         AND DiskCopy.id != reqSourceDiskCopy
         AND DiskCopy.status IN (0, 1, 2, 10); -- STAGED, DISK2DISKCOPY, WAITTAPERECALL, CANBEMIGR
  END IF;
END;
/
/*******************************************************************
 *
 * @(#)RCSfile: oracleQuery.sql,v  Revision: 1.650.2.1  Date: 2009/01/22 08:45:06  Author: waldron 
 *
 * PL/SQL code for the stager and resource monitoring
 *
 * @author Castor Dev team, castor-dev@cern.ch
 *******************************************************************/


/*
 * PL/SQL method implementing the core part of stage queries
 * It takes a list of castorfile ids as input
 */
CREATE OR REPLACE PROCEDURE internalStageQuery
 (cfs IN "numList",
  svcClassId IN NUMBER,
  result OUT castor.QueryLine_Cur) AS
BEGIN
  IF svcClassId = 0 THEN
    OPEN result FOR
      -- Here we get the status for each cf as follows: if a valid diskCopy is found,
      -- its status is returned, else if a (prepareTo)Get request is found and no diskCopy is there,
      -- WAITTAPERECALL is returned, else -1 (INVALID) is returned
      SELECT fileId, nsHost, dcId, path, fileSize, status, machine, mountPoint, nbCopyAccesses, lastKnownFileName
         FROM (SELECT
             -- we need to give these hints to the optimizer otherwise it goes for a full table scan (!)
             UNIQUE CastorFile.id, CastorFile.fileId, CastorFile.nsHost, DC.id AS dcId,
             DC.path, CastorFile.fileSize,
             CASE WHEN DC.id IS NULL THEN
                 nvl((SELECT UNIQUE decode(SubRequest.status, 0, 2, 3, 2, -1)
                    FROM SubRequest,
                        (SELECT id, svcClass FROM StagePrepareToGetRequest UNION ALL
                         SELECT id, svcClass FROM StagePrepareToPutRequest UNION ALL
                         SELECT id, svcClass FROM StagePrepareToUpdateRequest UNION ALL
                         SELECT id, svcClass FROM StageRepackRequest UNION ALL
                         SELECT id, svcClass FROM StageGetRequest) Req
                          WHERE SubRequest.CastorFile = CastorFile.id
                            AND Subrequest.status IN (0, 3)
                            AND request = Req.id), -1)
                  ELSE DC.status END AS status,
             DC.machine, DC.mountPoint,
             DC.nbCopyAccesses, CastorFile.lastKnownFileName
        FROM CastorFile,
             (SELECT DiskCopy.id, DiskCopy.path, DiskCopy.status, DiskServer.name AS machine, FileSystem.mountPoint,
                     DiskPool2SvcClass.child AS dcSvcClass, DiskCopy.filesystem, DiskCopy.CastorFile, DiskCopy.nbCopyAccesses
                FROM FileSystem, DiskServer, DiskPool2SvcClass,
                     (SELECT id, status, filesystem, castorFile, path, nbCopyAccesses FROM DiskCopy
                       WHERE CastorFile IN (SELECT /*+ CARDINALITY(cfidTable 5) */ * FROM TABLE(cfs) cfidTable)
                         AND status IN (0, 1, 2, 4, 5, 6, 7, 10, 11)
                             -- search for diskCopies not GCCANDIDATE or BEINGDELETED
                       GROUP BY (id, status, filesystem, castorfile, path, nbCopyAccesses)) DiskCopy
               WHERE FileSystem.id(+) = DiskCopy.fileSystem
                 AND nvl(FileSystem.status, 0) = 0 -- PRODUCTION
                 AND DiskServer.id(+) = FileSystem.diskServer
                 AND nvl(DiskServer.status, 0) = 0 -- PRODUCTION
                 AND DiskPool2SvcClass.parent(+) = FileSystem.diskPool) DC
       WHERE CastorFile.id IN (SELECT /*+ CARDINALITY(cfidTable 5) */ * FROM TABLE(cfs) cfidTable)
         AND CastorFile.id = DC.castorFile(+))  -- search for valid diskcopy
    WHERE status != -1 -- when no diskcopy and no subrequest available, ignore garbage
    ORDER BY fileid, nshost;
  ELSE
    OPEN result FOR
      -- Here we get the status for each cf as follows: if a valid diskCopy is found,
      -- its status is returned, else if a (prepareTo)Get request is found and no diskCopy is there,
      -- WAITTAPERECALL is returned, else -1 (INVALID) is returned
      SELECT fileId, nsHost, dcId, path, fileSize, srStatus, machine, mountPoint, nbCopyAccesses, lastKnownFileName
        FROM (SELECT
            -- we need to give these hints to the optimizer otherwise it goes for a full table scan (!)
            UNIQUE CastorFile.id, CastorFile.fileId, CastorFile.nsHost, DC.id AS dcId,
            DC.path, CastorFile.fileSize, DC.status,
            CASE WHEN DC.dcSvcClass = svcClassId THEN DC.status
                 WHEN DC.fileSystem = 0 THEN
                  (SELECT UNIQUE decode(nvl(SubRequest.status, -1), -1, -1, dc.status)
                   FROM SubRequest,
                       (SELECT id, svcClass FROM StagePrepareToGetRequest UNION ALL
                        SELECT id, svcClass FROM StagePrepareToPutRequest UNION ALL
                        SELECT id, svcClass FROM StagePrepareToUpdateRequest UNION ALL
                        SELECT id, svcClass FROM StageRepackRequest UNION ALL
                        SELECT id, svcClass FROM StageGetRequest) Req
                         WHERE SubRequest.CastorFile = CastorFile.id
                           AND request = Req.id
                           AND svcClass = svcClassId)
                 WHEN DC.id IS NULL THEN
                (SELECT UNIQUE decode(SubRequest.status, 0, 2, 3, 2, -1)
                   FROM SubRequest,
                       (SELECT id, svcClass FROM StagePrepareToGetRequest UNION ALL
                        SELECT id, svcClass FROM StagePrepareToPutRequest UNION ALL
                        SELECT id, svcClass FROM StagePrepareToUpdateRequest UNION ALL
                        SELECT id, svcClass FROM StageRepackRequest UNION ALL
                        SELECT id, svcClass FROM StageGetRequest) Req
                         WHERE SubRequest.CastorFile = CastorFile.id
                           AND request = Req.id
                           AND svcClass = svcClassId) END AS srStatus,
            DC.machine, DC.mountPoint,
            DC.nbCopyAccesses, CastorFile.lastKnownFileName
       FROM CastorFile,
            (SELECT DiskCopy.id, DiskCopy.path, DiskCopy.status, DiskServer.name AS machine, FileSystem.mountPoint,
                    DiskPool2SvcClass.child AS dcSvcClass, DiskCopy.filesystem, DiskCopy.CastorFile, DiskCopy.nbCopyAccesses
               FROM FileSystem, DiskServer, DiskPool2SvcClass,
                    (SELECT id, status, filesystem, castorFile, path, nbCopyAccesses FROM DiskCopy
                      WHERE CastorFile IN (SELECT /*+ CARDINALITY(cfidTable 5) */ * FROM TABLE(cfs) cfidTable)
                        AND status IN (0, 1, 2, 4, 5, 6, 7, 10, 11)
                            -- search for diskCopies not GCCANDIDATE or BEINGDELETED
                      GROUP BY (id, status, filesystem, castorfile, path, nbCopyAccesses)) DiskCopy
              WHERE FileSystem.id(+) = DiskCopy.fileSystem
                AND nvl(FileSystem.status, 0) = 0 -- PRODUCTION
                AND DiskServer.id(+) = FileSystem.diskServer
                AND nvl(DiskServer.status, 0) = 0 -- PRODUCTION
                AND DiskPool2SvcClass.parent(+) = FileSystem.diskPool) DC
      WHERE CastorFile.id IN (SELECT /*+ CARDINALITY(cfidTable 5) */ * FROM TABLE(cfs) cfidTable)
        AND CastorFile.id = DC.castorFile(+))  -- search for valid diskcopy
      WHERE srStatus != -1
      ORDER BY fileid, nshost;
   END IF;
END;
/


/*
 * PL/SQL method implementing the stager_qry based on file name
 */
CREATE OR REPLACE PROCEDURE fileNameStageQuery
 (fn IN VARCHAR2,
  svcClassId IN INTEGER,
  maxNbResponses IN INTEGER,
  result OUT castor.QueryLine_Cur) AS
  cfIds "numList";
BEGIN
  IF substr(fn, -1, 1) = '/' THEN  -- files in a 'subdirectory'
    SELECT /*+ INDEX(DiskPool2SvcClass I_DiskPool2SvcClass_C) */ CastorFile.id
      BULK COLLECT INTO cfIds
      FROM DiskCopy, FileSystem, DiskPool2SvcClass, CastorFile
     WHERE CastorFile.lastKnownFileName LIKE fn||'%'
       AND DiskCopy.castorFile = CastorFile.id
       AND DiskCopy.fileSystem = FileSystem.id
       AND FileSystem.diskPool = DiskPool2SvcClass.parent
       AND (DiskPool2SvcClass.child = svcClassId OR svcClassId = 0)
       AND ROWNUM <= maxNbResponses + 1;
  ELSE  -- exact match
    SELECT /*+ INDEX(DiskPool2SvcClass I_DiskPool2SvcClass_C) */ CastorFile.id
      BULK COLLECT INTO cfIds
      FROM DiskCopy, FileSystem, DiskPool2SvcClass, CastorFile
     WHERE CastorFile.lastKnownFileName = fn
       AND DiskCopy.castorFile = CastorFile.id
       AND DiskCopy.fileSystem = FileSystem.id
       AND FileSystem.diskPool = DiskPool2SvcClass.parent
       AND (DiskPool2SvcClass.child = svcClassId OR svcClassId = 0)
       AND ROWNUM <= maxNbResponses + 1;
  END IF;
  IF cfIds.COUNT > maxNbResponses THEN
    -- We have too many rows, we just give up
    raise_application_error(-20102, 'Too many matching files');
  END IF;
  internalStageQuery(cfIds, svcClassId, result);
END;
/


/*
 * PL/SQL method implementing the stager_qry based on file id
 */
CREATE OR REPLACE PROCEDURE fileIdStageQuery
 (fid IN NUMBER,
  nh IN VARCHAR2,
  svcClassId IN INTEGER,
  fileName IN VARCHAR2,
  result OUT castor.QueryLine_Cur) AS
  cfs "numList";
  currentFileName VARCHAR2(2048);
  nsHostName VARCHAR2(2048);
BEGIN
  -- Get the stager/nsHost configuration option
  nsHostName := getConfigOption('stager', 'nsHost', nh);
  -- Extract CastorFile ids from the fileid
  SELECT id BULK COLLECT INTO cfs FROM CastorFile 
   WHERE fileId = fid AND nshost = nsHostName;
  -- Check and fix when needed the LastKnownFileNames
  IF (cfs.COUNT > 0) THEN
    SELECT lastKnownFileName INTO currentFileName
      FROM CastorFile
     WHERE id = cfs(cfs.FIRST);
    IF currentFileName != fileName THEN
      UPDATE CastorFile SET lastKnownFileName = fileName
       WHERE id = cfs(cfs.FIRST);
      COMMIT;
    END IF;
  END IF;
  -- Finally issue the actual query
  internalStageQuery(cfs, svcClassId, result);
END;
/


/*
 * PL/SQL method implementing the stager_qry based on request id
 */
CREATE OR REPLACE PROCEDURE reqIdStageQuery
 (rid IN VARCHAR2,
  svcClassId IN INTEGER,
  notfound OUT INTEGER,
  result OUT castor.QueryLine_Cur) AS
  cfs "numList";
BEGIN
  SELECT sr.castorfile BULK COLLECT INTO cfs
    FROM SubRequest sr,
         (SELECT id
            FROM StagePreparetogetRequest
           WHERE reqid LIKE rid
          UNION ALL
          SELECT id
            FROM StagePreparetoputRequest
           WHERE reqid LIKE rid
          UNION ALL
          SELECT id
            FROM StagePreparetoupdateRequest
           WHERE reqid LIKE rid
          UNION ALL
          SELECT id
            FROM stageGetRequest
           WHERE reqid LIKE rid
          UNION ALL
          SELECT id
            FROM stagePutRequest
           WHERE reqid LIKE rid
          UNION ALL
          SELECT id
            FROM StageRepackRequest
           WHERE reqid LIKE rid) reqlist
   WHERE sr.request = reqlist.id;
  IF cfs.COUNT > 0 THEN
    internalStageQuery(cfs, svcClassId, result);
  ELSE
    notfound := 1;
  END IF;
END;
/


/*
 * PL/SQL method implementing the stager_qry based on user tag
 */
CREATE OR REPLACE PROCEDURE userTagStageQuery
 (tag IN VARCHAR2,
  svcClassId IN INTEGER,
  notfound OUT INTEGER,
  result OUT castor.QueryLine_Cur) AS
  cfs "numList";
BEGIN
  SELECT sr.castorfile BULK COLLECT INTO cfs
    FROM SubRequest sr,
         (SELECT id
            FROM StagePreparetogetRequest
           WHERE userTag LIKE tag
          UNION ALL
          SELECT id
            FROM StagePreparetoputRequest
           WHERE userTag LIKE tag
          UNION ALL
          SELECT id
            FROM StagePreparetoupdateRequest
           WHERE userTag LIKE tag
          UNION ALL
          SELECT id
            FROM stageGetRequest
           WHERE userTag LIKE tag
          UNION ALL
          SELECT id
            FROM stagePutRequest
           WHERE userTag LIKE tag) reqlist
   WHERE sr.request = reqlist.id;
  IF cfs.COUNT > 0 THEN
    internalStageQuery(cfs, svcClassId, result);
  ELSE
    notfound := 1;
  END IF;
END;
/


/*
 * PL/SQL method implementing the LastRecalls stager_qry based on request id
 */
CREATE OR REPLACE PROCEDURE reqIdLastRecallsStageQuery
 (rid IN VARCHAR2,
  svcClassId IN INTEGER,
  notfound OUT INTEGER,
  result OUT castor.QueryLine_Cur) AS
  cfs "numList";
  reqs "numList";
BEGIN
  SELECT id BULK COLLECT INTO reqs
    FROM (SELECT id
            FROM StagePreparetogetRequest
           WHERE reqid LIKE rid
          UNION ALL
          SELECT id
            FROM StagePreparetoupdateRequest
           WHERE reqid LIKE rid
          UNION ALL
          SELECT id
            FROM StageRepackRequest
           WHERE reqid LIKE rid
          );
  IF reqs.COUNT > 0 THEN
    FORALL i IN reqs.FIRST..reqs.LAST
      UPDATE SubRequest SET getNextStatus = 2  -- GETNEXTSTATUS_NOTIFIED
       WHERE getNextStatus = 1  -- GETNEXTSTATUS_FILESTAGED
         AND request = reqs(i)
      RETURNING castorfile BULK COLLECT INTO cfs;
    internalStageQuery(cfs, svcClassId, result);
  ELSE
    notfound := 1;
  END IF;
END;
/


/*
 * PL/SQL method implementing the LastRecalls stager_qry based on user tag
 */
CREATE OR REPLACE PROCEDURE userTagLastRecallsStageQuery
 (tag IN VARCHAR2,
  svcClassId IN INTEGER,
  notfound OUT INTEGER,
  result OUT castor.QueryLine_Cur) AS
  cfs "numList";
  reqs "numList";
BEGIN
  SELECT id BULK COLLECT INTO reqs
    FROM (SELECT id
            FROM StagePreparetogetRequest
           WHERE userTag LIKE tag
          UNION ALL
          SELECT id
            FROM StagePreparetoupdateRequest
           WHERE userTag LIKE tag
          );
  IF reqs.COUNT > 0 THEN
    FORALL i IN reqs.FIRST..reqs.LAST
      UPDATE SubRequest SET getNextStatus = 2  -- GETNEXTSTATUS_NOTIFIED
       WHERE getNextStatus = 1  -- GETNEXTSTATUS_FILESTAGED
         AND request = reqs(i)
      RETURNING castorfile BULK COLLECT INTO cfs;
    internalStageQuery(cfs, svcClassId, result);
  ELSE
    notfound := 1;
  END IF;
END;
/


/*
 * PL/SQL method implementing the diskPoolQuery when listing pools
 */
CREATE OR REPLACE PROCEDURE describeDiskPools
(svcClassName IN VARCHAR2, reqEuid IN INTEGER, reqEgid IN INTEGER,
 res OUT NUMBER, result OUT castor.DiskPoolsQueryLine_Cur) AS
BEGIN
  -- We use here analytic functions and the grouping sets functionnality to
  -- get both the list of filesystems and a summary per diskserver and per
  -- diskpool. The grouping analytic function also allows to mark the summary
  -- lines for easy detection in the C++ code
  IF svcClassName IS NULL THEN
    OPEN result FOR
      SELECT grouping(ds.name) AS IsDSGrouped,
            grouping(fs.mountPoint) AS IsFSGrouped,
              dp.name,
             ds.name, ds.status, fs.mountPoint,
             sum(decode(sign(fs.free - fs.minAllowedFreeSpace * fs.totalSize), -1, 0,
	         fs.free - fs.minAllowedFreeSpace * fs.totalSize)) AS freeSpace,
             sum(fs.totalSize),
             fs.minFreeSpace, fs.maxFreeSpace, fs.status
        FROM FileSystem fs, DiskServer ds, DiskPool dp
       WHERE dp.id = fs.diskPool
         AND ds.id = fs.diskServer
         GROUP BY grouping sets(
             (dp.name, ds.name, ds.status, fs.mountPoint,
               decode(sign(fs.free - fs.minAllowedFreeSpace * fs.totalSize), -1, 0,
	         fs.free - fs.minAllowedFreeSpace * fs.totalSize),
               fs.totalSize,
               fs.minFreeSpace, fs.maxFreeSpace, fs.status),
             (dp.name, ds.name, ds.status),
             (dp.name)
            )
         ORDER BY dp.name, IsDSGrouped DESC, ds.name, IsFSGrouped DESC, fs.mountpoint;
  ELSE 
    OPEN result FOR
      SELECT grouping(ds.name) AS IsDSGrouped,
             grouping(fs.mountPoint) AS IsFSGrouped,
              dp.name,
             ds.name, ds.status, fs.mountPoint,
             sum(decode(sign(fs.free - fs.minAllowedFreeSpace * fs.totalSize), -1, 0,
  	       fs.free - fs.minAllowedFreeSpace * fs.totalSize)) AS freeSpace,
             sum(fs.totalSize),
             fs.minFreeSpace, fs.maxFreeSpace, fs.status
        FROM FileSystem fs, DiskServer ds, DiskPool dp,
             DiskPool2SvcClass d2s, SvcClass sc
       WHERE sc.name = svcClassName
         AND sc.id = d2s.child
         AND checkPermissionOnSvcClass(sc.name, reqEuid, reqEgid, 103) = 0
         AND d2s.parent = dp.id
         AND dp.id = fs.diskPool
         AND ds.id = fs.diskServer
         GROUP BY grouping sets(
             (dp.name, ds.name, ds.status, fs.mountPoint,
               decode(sign(fs.free - fs.minAllowedFreeSpace * fs.totalSize), -1, 0,
	         fs.free - fs.minAllowedFreeSpace * fs.totalSize),
               fs.totalSize,
               fs.minFreeSpace, fs.maxFreeSpace, fs.status),
             (dp.name, ds.name, ds.status),
             (dp.name)
            )
         ORDER BY dp.name, IsDSGrouped DESC, ds.name, IsFSGrouped DESC, fs.mountpoint;
  END IF;
  -- If no results are available, check to see if any diskpool exists and if
  -- access to view all the diskpools has been revoked. The information extracted
  -- here will be used to send an appropriate error message to the client.
  IF result%ROWCOUNT = 0 THEN
    SELECT CASE count(*)
           WHEN sum(checkPermissionOnSvcClass(sc.name, reqEuid, reqEgid, 103)) THEN -1
           ELSE count(*) END
      INTO res
      FROM DiskPool2SvcClass d2s, SvcClass sc
     WHERE d2s.child = sc.id
       AND (sc.name = svcClassName OR svcClassName IS NULL);
  END IF;
END;
/



/*
 * PL/SQL method implementing the diskPoolQuery for a given pool
 */
CREATE OR REPLACE PROCEDURE describeDiskPool
(diskPoolName IN VARCHAR2, svcClassName IN VARCHAR2,
 res OUT NUMBER, result OUT castor.DiskPoolQueryLine_Cur) AS
BEGIN
  -- We use here analytic functions and the grouping sets functionnality to
  -- get both the list of filesystems and a summary per diskserver and per
  -- diskpool. The grouping analytic function also allows to mark the summary
  -- lines for easy detection in the C++ code
  IF svcClassName IS NULL THEN
    OPEN result FOR
      SELECT grouping(ds.name) AS IsDSGrouped,
             grouping(fs.mountPoint) AS IsGrouped,
             ds.name, ds.status, fs.mountPoint,
             sum(fs.free - fs.minAllowedFreeSpace * fs.totalSize) AS freeSpace,
             sum(fs.totalSize),
             fs.minFreeSpace, fs.maxFreeSpace, fs.status
        FROM FileSystem fs, DiskServer ds, DiskPool dp
       WHERE dp.id = fs.diskPool
         AND ds.id = fs.diskServer
         AND dp.name = diskPoolName
         GROUP BY grouping sets(
             (ds.name, ds.status, fs.mountPoint,
               fs.free - fs.minAllowedFreeSpace * fs.totalSize,
               fs.totalSize,
               fs.minFreeSpace, fs.maxFreeSpace, fs.status),
             (ds.name, ds.status),
             (dp.name)
            )
         ORDER BY IsDSGrouped DESC, ds.name, IsGrouped DESC, fs.mountpoint;
  ELSE
    OPEN result FOR
      SELECT grouping(ds.name) AS IsDSGrouped,
             grouping(fs.mountPoint) AS IsGrouped,
             ds.name, ds.status, fs.mountPoint,
             sum(fs.free - fs.minAllowedFreeSpace * fs.totalSize) AS freeSpace,
             sum(fs.totalSize),
             fs.minFreeSpace, fs.maxFreeSpace, fs.status
        FROM FileSystem fs, DiskServer ds, DiskPool dp,
             DiskPool2SvcClass d2s, SvcClass sc
       WHERE sc.name = svcClassName
         AND sc.id = d2s.child
         AND d2s.parent = dp.id
         AND dp.id = fs.diskPool
         AND ds.id = fs.diskServer
         AND dp.name = diskPoolName
         GROUP BY grouping sets(
             (ds.name, ds.status, fs.mountPoint,
               fs.free - fs.minAllowedFreeSpace * fs.totalSize,
               fs.totalSize,
               fs.minFreeSpace, fs.maxFreeSpace, fs.status),
             (ds.name, ds.status),
             (dp.name)
            )
         ORDER BY IsDSGrouped DESC, ds.name, IsGrouped DESC, fs.mountpoint;
  END IF;
  -- If no results are available, check to see if any diskpool exists and if
  -- access to view all the diskpools has been revoked. The information extracted
  -- here will be used to send an appropriate error message to the client.
  IF result%ROWCOUNT = 0 THEN
    SELECT count(*) INTO res
      FROM DiskPool dp, DiskPool2SvcClass d2s, SvcClass sc
     WHERE d2s.child = sc.id
       AND d2s.parent = dp.id
       AND dp.name = diskPoolName
       AND (sc.name = svcClassName OR svcClassName IS NULL);
  END IF;
END;
/
/*******************************************************************
 *
 * @(#)RCSfile: oracleTape.sql,v  Revision: 1.698.2.9  Date: 2009/01/26 16:05:04  Author: gtaur 
 *
 * PL/SQL code for the interface to the tape system
 *
 * @author Castor Dev team, castor-dev@cern.ch
 *******************************************************************/

/* Used to create a row INTO NbTapeCopiesInFS whenever a new
   Stream is created */
CREATE OR REPLACE TRIGGER tr_Stream_Insert
BEFORE INSERT ON Stream
FOR EACH ROW
BEGIN
  FOR item in (SELECT id FROM FileSystem) LOOP
    INSERT INTO NbTapeCopiesInFS (FS, Stream, NbTapeCopies) VALUES (item.id, :new.id, 0);
  END LOOP;
END;
/


/* Used to delete rows IN NbTapeCopiesInFS whenever a
   Stream is deleted */
CREATE OR REPLACE TRIGGER tr_Stream_Delete
BEFORE DELETE ON Stream
FOR EACH ROW
BEGIN
  -- Access to NbTapeCopiesInFS needs to be serialized
  -- because of several copies of different file systems
  -- from different streams which can cause deadlock
  LOCK TABLE NbTapeCopiesInFS IN EXCLUSIVE MODE;
  DELETE FROM NbTapeCopiesInFS WHERE Stream = :old.id;
END;
/


/* Updates the count of tapecopies in NbTapeCopiesInFS
   whenever a TapeCopy is linked to a Stream */
CREATE OR REPLACE TRIGGER tr_Stream2TapeCopy_Insert
AFTER INSERT ON STREAM2TAPECOPY
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE
  cfSize NUMBER;
BEGIN
  -- Access to NbTapeCopiesInFS needs to be serialized
  -- because of several copies of different file systems
  -- from different streams which can cause deadlock
  LOCK TABLE NbTapeCopiesInFS IN EXCLUSIVE MODE;
  UPDATE NbTapeCopiesInFS SET NbTapeCopies = NbTapeCopies + 1
   WHERE FS IN (SELECT DiskCopy.fileSystem
                  FROM DiskCopy, TapeCopy
                 WHERE DiskCopy.castorFile = TapeCopy.castorFile
                   AND TapeCopy.id = :new.child
                   AND DiskCopy.status = 10) -- CANBEMIGR
     AND Stream = :new.parent;
END;
/


/* Updates the count of tapecopies in NbTapeCopiesInFS
   whenever a TapeCopy is unlinked from a Stream */
CREATE OR REPLACE TRIGGER tr_Stream2TapeCopy_Delete
BEFORE DELETE ON STREAM2TAPECOPY
REFERENCING NEW AS NEW OLD AS OLD
FOR EACH ROW
DECLARE cfSize NUMBER;
BEGIN
  -- Access to NbTapeCopiesInFS needs to be serialized
  -- because of several copies of different file systems
  -- from different streams which can cause deadlock
  LOCK TABLE NbTapeCopiesInFS IN EXCLUSIVE MODE;
  UPDATE NbTapeCopiesInFS SET NbTapeCopies = NbTapeCopies - 1
   WHERE FS IN (SELECT DiskCopy.fileSystem
                  FROM DiskCopy, TapeCopy
                 WHERE DiskCopy.castorFile = TapeCopy.castorFile
                   AND TapeCopy.id = :old.child
                   AND DiskCopy.status = 10) -- CANBEMIGR
     AND Stream = :old.parent;
END;
/

/************************************************/
/* Triggers to keep NbTapeCopiesInFS consistent */
/************************************************/

/* Used to create a row in NbTapeCopiesInFS and FileSystemsToCheck
   whenever a new FileSystem is created */
CREATE OR REPLACE TRIGGER tr_FileSystem_Insert
BEFORE INSERT ON FileSystem
FOR EACH ROW
BEGIN
  FOR item in (SELECT id FROM Stream) LOOP
    INSERT INTO NbTapeCopiesInFS (FS, Stream, NbTapeCopies) VALUES (:new.id, item.id, 0);
  END LOOP;
  INSERT INTO FileSystemsToCheck (FileSystem, ToBeChecked) VALUES (:new.id, 0);
END;
/

/* Used to delete rows in NbTapeCopiesInFS and FileSystemsToCheck
   whenever a FileSystem is deleted */
CREATE OR REPLACE TRIGGER tr_FileSystem_Delete
BEFORE DELETE ON FileSystem
FOR EACH ROW
BEGIN
  DELETE FROM NbTapeCopiesInFS WHERE FS = :old.id;
  DELETE FROM FileSystemsToCheck WHERE FileSystem = :old.id;
END;
/

/* Updates the count of tapecopies in NbTapeCopiesInFS
   whenever a DiskCopy has been replicated and the new one
   is put into CANBEMIGR status from the
   WAITDISK2DISKCOPY status */
CREATE OR REPLACE TRIGGER tr_DiskCopy_Update
AFTER UPDATE of status ON DiskCopy
FOR EACH ROW
WHEN (old.status = 1 AND -- WAITDISK2DISKCOPY
      new.status = 10) -- CANBEMIGR
BEGIN
  -- added this lock because of severval copies on different file systems
  -- from different streams which can cause deadlock
  LOCK TABLE  NbTapeCopiesInFS IN ROW SHARE MODE;
  UPDATE NbTapeCopiesInFS SET NbTapeCopies = NbTapeCopies + 1
   WHERE FS = :new.fileSystem
     AND Stream IN (SELECT Stream2TapeCopy.parent
                      FROM Stream2TapeCopy, TapeCopy
                     WHERE TapeCopy.castorFile = :new.castorFile
                       AND Stream2TapeCopy.child = TapeCopy.id
                       AND TapeCopy.status = 2); -- WAITINSTREAMS
END;
/


/* Used to create a row INTO LockTable whenever a new
   DiskServer is created */
CREATE OR REPLACE TRIGGER tr_DiskServer_Insert
BEFORE INSERT ON DiskServer
FOR EACH ROW
BEGIN
  INSERT INTO LockTable (DiskServerId, TheLock) VALUES (:new.id, 0);
END;
/


/* Used to delete rows IN LockTable whenever a
   DiskServer is deleted */
CREATE OR REPLACE TRIGGER tr_DiskServer_Delete
BEFORE DELETE ON DiskServer
FOR EACH ROW
BEGIN
  DELETE FROM LockTable WHERE DiskServerId = :old.id;
END;
/



/* PL/SQL methods to update FileSystem weight for new migrator streams */
CREATE OR REPLACE PROCEDURE updateFsMigratorOpened
(ds IN INTEGER, fs IN INTEGER, fileSize IN INTEGER) AS
BEGIN
  /* We lock first the diskserver in order to lock all the
     filesystems of this DiskServer in an atomical way */
  UPDATE DiskServer SET nbMigratorStreams = nbMigratorStreams + 1 WHERE id = ds;
  UPDATE FileSystem SET nbMigratorStreams = nbMigratorStreams + 1 WHERE id = fs;
END;
/

/* PL/SQL methods to update FileSystem weight for new recaller streams */
CREATE OR REPLACE PROCEDURE updateFsRecallerOpened
(ds IN INTEGER, fs IN INTEGER, fileSize IN INTEGER) AS
BEGIN
  /* We lock first the diskserver in order to lock all the
     filesystems of this DiskServer in an atomical way */
  UPDATE DiskServer SET nbRecallerStreams = nbRecallerStreams + 1 WHERE id = ds;
  UPDATE FileSystem SET nbRecallerStreams = nbRecallerStreams + 1,
                        free = free - fileSize   -- just an evaluation, monitoring will update it
   WHERE id = fs;
END;
/


/* PL/SQL method implementing anyTapeCopyForStream.
 * This implementation is not the original one. It uses NbTapeCopiesInFS
 * because a join on the tables between DiskServer and Stream2TapeCopy
 * costs too much. It should actually not be the case but ORACLE is unable
 * to optimize correctly queries having a ROWNUM clause. It processes the
 * the query without it (yes !!!) and applies the clause afterwards.
 * Here is the previous select in case ORACLE improves some day :
 * SELECT \/*+ FIRST_ROWS *\/ TapeCopy.id INTO unused
 * FROM DiskServer, FileSystem, DiskCopy, CastorFile, TapeCopy, Stream2TapeCopy
 *  WHERE DiskServer.id = FileSystem.diskserver
 *   AND DiskServer.status IN (0, 1) -- DISKSERVER_PRODUCTION, DISKSERVER_DRAINING
 *   AND FileSystem.id = DiskCopy.filesystem
 *   AND FileSystem.status IN (0, 1) -- FILESYSTEM_PRODUCTION, FILESYSTEM_DRAINING
 *   AND DiskCopy.castorfile = CastorFile.id
 *   AND TapeCopy.castorfile = Castorfile.id
 *   AND Stream2TapeCopy.child = TapeCopy.id
 *   AND Stream2TapeCopy.parent = streamId
 *   AND TapeCopy.status = 2 -- WAITINSTREAMS
 *   AND ROWNUM < 2;  */
CREATE OR REPLACE PROCEDURE anyTapeCopyForStream(streamId IN INTEGER, res OUT INTEGER) AS
  unused INTEGER;
BEGIN
  SELECT NbTapeCopiesInFS.NbTapeCopies INTO unused
    FROM NbTapeCopiesInFS, FileSystem, DiskServer
   WHERE NbTapeCopiesInFS.stream = streamId
     AND NbTapeCopiesInFS.NbTapeCopies > 0
     AND FileSystem.id = NbTapeCopiesInFS.FS
     AND FileSystem.status IN (0, 1) -- FILESYSTEM_PRODUCTION, FILESYSTEM_DRAINING
     AND DiskServer.id = FileSystem.DiskServer
     AND DiskServer.status IN (0, 1) -- DISKSERVER_PRODUCTION, DISKSERVER_DRAINING
     AND ROWNUM < 2;
  res := 1;
EXCEPTION
 WHEN NO_DATA_FOUND THEN
  res := 0;
END;
/

 /* PL/SQL method implementing bestTapeCopyForStream */
CREATE OR REPLACE PROCEDURE bestTapeCopyForStream(streamId IN INTEGER,
                                                  diskServerName OUT VARCHAR2, mountPoint OUT VARCHAR2,
                                                  path OUT VARCHAR2, dci OUT INTEGER,
                                                  castorFileId OUT INTEGER, fileId OUT INTEGER,
                                                  nsHost OUT VARCHAR2, fileSize OUT INTEGER,
                                                  tapeCopyId OUT INTEGER, lastUpdateTime OUT INTEGER) AS
  policy VARCHAR(2048);
BEGIN
  -- get the policy name
  BEGIN
    SELECT migrSelectPolicy INTO policy
      FROM Stream, TapePool
     WHERE Stream.id = streamId
       AND Stream.tapePool = TapePool.id;
    -- check for NULL value
    IF policy IS NULL THEN
      policy := 'defaultMigrSelPolicy';
    END IF;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    policy := 'defaultMigrSelPolicy';
  END;
  EXECUTE IMMEDIATE 'BEGIN ' || policy || '(:streamId, :diskServerName, :mountPoint, :path, :dci, :castorFileId, :fileId, :nsHost, :fileSize, :tapeCopyId, :lastUpdateTime); END;'
    USING IN streamId, OUT diskServerName, OUT mountPoint, OUT path, OUT dci, OUT castorFileId, OUT fileId, OUT nsHost, OUT fileSize, OUT tapeCopyId, OUT lastUpdateTime;
END;
/

/* default migration candidate selection policy */
CREATE OR REPLACE PROCEDURE defaultMigrSelPolicy(streamId IN INTEGER,
                                                 diskServerName OUT VARCHAR2, mountPoint OUT VARCHAR2,
                                                 path OUT VARCHAR2, dci OUT INTEGER,
                                                 castorFileId OUT INTEGER, fileId OUT INTEGER,
                                                 nsHost OUT VARCHAR2, fileSize OUT INTEGER,
                                                 tapeCopyId OUT INTEGER, lastUpdateTime OUT INTEGER) AS
  fileSystemId INTEGER := 0;
  dsid NUMBER;
  fsDiskServer NUMBER;
  lastFSChange NUMBER;
  lastFSUsed NUMBER;
  lastButOneFSUsed NUMBER;
  findNewFS NUMBER := 1;
  nbMigrators NUMBER := 0;
  unused "numList";
BEGIN
  -- First try to see whether we should resuse the same filesystem as last time
  SELECT lastFileSystemChange, lastFileSystemUsed, lastButOneFileSystemUsed
    INTO lastFSChange, lastFSUsed, lastButOneFSUsed
    FROM Stream WHERE id = streamId;
  IF getTime() < lastFSChange + 900 THEN
    SELECT (SELECT count(*) FROM stream WHERE lastFileSystemUsed = lastButOneFSUsed) +
           (SELECT count(*) FROM stream WHERE lastButOneFileSystemUsed = lastButOneFSUsed)
      INTO nbMigrators FROM DUAL;
    -- only go if we are the only migrator on the box
    IF nbMigrators = 1 THEN
      BEGIN
        -- check states of the diskserver and filesystem and get mountpoint and diskserver name
        SELECT name, mountPoint, FileSystem.id INTO diskServerName, mountPoint, fileSystemId
          FROM FileSystem, DiskServer
         WHERE FileSystem.diskServer = DiskServer.id
           AND FileSystem.id = lastButOneFSUsed
           AND FileSystem.status IN (0, 1)  -- PRODUCTION, DRAINING
           AND DiskServer.status IN (0, 1); -- PRODUCTION, DRAINING
        -- we are within the time range, so we try to reuse the filesystem
        SELECT /*+ FIRST_ROWS(1)  LEADING(D T ST) */
               D.path, D.id, D.castorfile, T.id
          INTO path, dci, castorFileId, tapeCopyId
          FROM DiskCopy D, TapeCopy T, Stream2TapeCopy ST
         WHERE D.status = 10 -- CANBEMIGR
           AND D.filesystem = lastButOneFSUsed
           AND ST.parent = streamId
           AND T.status = 2 -- WAITINSTREAMS
           AND ST.child = T.id
           AND T.castorfile = D.castorfile
           AND ROWNUM < 2;
        SELECT CastorFile.FileId, CastorFile.NsHost, CastorFile.FileSize, CastorFile.lastUpdateTime
          INTO fileId, nsHost, fileSize, lastUpdateTime
          FROM CastorFile
         WHERE Id = castorFileId;
        -- we found one, no need to go for new filesystem
        findNewFS := 0;
      EXCEPTION WHEN NO_DATA_FOUND THEN
        -- found no tapecopy or diskserver, filesystem are down. We'll go through the normal selection
        NULL;
      END;
    END IF;
  END IF;
  IF findNewFS = 1 THEN
    -- We lock here a given DiskServer. See the comment for the creation of the LockTable
    -- table for a full explanation of why we need such a stupid UPDATE statement
    UPDATE LockTable SET theLock = 1
     WHERE diskServerId = (
       SELECT DS.diskserver_id
         FROM (
           -- The double level of selects is due to the fact that ORACLE is unable
           -- to use ROWNUM and ORDER BY at the same time. Thus, we have to first compute
           -- the maxRate and then select on it.
           SELECT diskserver.id diskserver_id
             FROM FileSystem FS, NbTapeCopiesInFS, DiskServer
            WHERE FS.id = NbTapeCopiesInFS.FS
              AND NbTapeCopiesInFS.NbTapeCopies > 0
              AND NbTapeCopiesInFS.Stream = StreamId
              AND FS.status IN (0, 1)         -- PRODUCTION, DRAINING
              AND DiskServer.id = FS.diskserver
              AND DiskServer.status IN (0, 1) -- PRODUCTION, DRAINING
            ORDER BY -- first prefer diskservers where no migrator runs and filesystems with no recalls
                     DiskServer.nbMigratorStreams ASC, FS.nbRecallerStreams ASC,
                     -- then order by rate as defined by the function
                     fileSystemRate(FS.readRate, FS.writeRate, FS.nbReadStreams, FS.nbWriteStreams,
                                    FS.nbReadWriteStreams, FS.nbMigratorStreams, FS.nbRecallerStreams) DESC,
                     -- finally use randomness to avoid preferring always the same FS
                     DBMS_Random.value
            ) DS
        WHERE ROWNUM < 2)
    RETURNING diskServerId INTO dsid;
    -- Now we got our Diskserver but we lost all other data (due to the fact we had
    -- to do an update for the lock and we could not do a join in the update).
    -- So here we select all we need
    SELECT FN.name, FN.mountPoint, FN.diskserver, FN.id
      INTO diskServerName, mountPoint, fsDiskServer, fileSystemId
      FROM (
        SELECT DiskServer.name, FS.mountPoint, FS.diskserver, FS.id
          FROM FileSystem FS, NbTapeCopiesInFS, Diskserver
         WHERE FS.id = NbTapeCopiesInFS.FS
           AND DiskServer.id = FS.diskserver
           AND NbTapeCopiesInFS.NbTapeCopies > 0
           AND NbTapeCopiesInFS.Stream = StreamId
           AND FS.status IN (0, 1)    -- PRODUCTION, DRAINING
           AND FS.diskserver = dsId
         ORDER BY DiskServer.nbMigratorStreams ASC,
                  FileSystemRate(FS.readRate, FS.writeRate, FS.nbReadStreams, FS.nbWriteStreams,
                  FS.nbReadWriteStreams, FS.nbMigratorStreams, FS.nbRecallerStreams) DESC, dbms_random.value
         ) FN
     WHERE ROWNUM < 2;
    SELECT /*+ FIRST_ROWS(1)  LEADING(D T ST) */
           D.path, D.id, D.castorfile, T.id
      INTO path, dci, castorFileId, tapeCopyId
      FROM DiskCopy D, TapeCopy T, Stream2TapeCopy ST
     WHERE D.status = 10 -- CANBEMIGR
       AND D.filesystem = fileSystemId
       AND ST.parent = streamId
       AND T.status = 2 -- WAITINSTREAMS
       AND ST.child = T.id
       AND T.castorfile = D.castorfile
       AND ROWNUM < 2;
    SELECT CastorFile.FileId, CastorFile.NsHost, CastorFile.FileSize, CastorFile.lastUpdateTime
      INTO fileId, nsHost, fileSize, lastUpdateTime
      FROM CastorFile
     WHERE id = castorFileId;
  END IF;
  -- update status of selected tapecopy and stream
  UPDATE TapeCopy SET status = 3 -- SELECTED
   WHERE id = tapeCopyId;
  -- get locks on all the streams we will handle in order to avoid a
  -- deadlock with the attachTapeCopiesToStreams procedure
  --
  -- the deadlock would occur with updates to the NbTapeCopiesInFS
  -- table performed by the tr_stream2tapecopy_delete trigger triggered
  -- by the "DELETE FROM Stream2TapeCopy" statement below
  SELECT 1 BULK COLLECT INTO unused
    FROM Stream, Stream2TapeCopy S2TC
   WHERE S2TC.parent = Stream.id AND S2TC.child = tapeCopyId
   ORDER BY Stream.id
     FOR UPDATE OF Stream.id;
  UPDATE Stream
     SET status = 3, -- RUNNING
         lastFileSystemUsed = fileSystemId, lastButOneFileSystemUsed = lastFileSystemUsed
   WHERE id = streamId AND status IN (2,3);
  IF findNewFS = 1 THEN
    -- time only if we changed FS
    UPDATE Stream SET lastFileSystemChange = getTime() WHERE id = streamId;
  END IF;
  -- detach the tapecopy from the stream now that it is SELECTED
  -- the triggers will update NbTapeCopiesInFS accordingly
  DELETE FROM Stream2TapeCopy
   WHERE child = tapeCopyId;

  -- Update Filesystem state
  updateFSMigratorOpened(fsDiskServer, fileSystemId, 0);

  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- Reset last filesystems used
    UPDATE Stream
       SET lastFileSystemUsed = 0, lastButOneFileSystemUsed = 0
     WHERE id = streamId;
    -- No data found means the selected filesystem has no
    -- tapecopies to be migrated. Thus we go to next one
    -- However, we reset the NbTapeCopiesInFS row that failed
    -- This is not 100% safe but is far better than retrying
    -- in the same conditions
    IF 0 != fileSystemId THEN
      UPDATE NbTapeCopiesInFS
         SET NbTapeCopies = 0
       WHERE Stream = StreamId
         AND NbTapeCopiesInFS.FS = fileSystemId;
      bestTapeCopyForStream(streamId,
                            diskServerName,
                            mountPoint,
                            path,
                            dci,
                            castorFileId,
                            fileId,
                            nsHost,
                            fileSize,
                            tapeCopyId,
                            lastUpdateTime);
    END IF;
END;
/

/* drain disk migration candidate selection policy */
CREATE OR REPLACE PROCEDURE drainDiskMigrSelPolicy(streamId IN INTEGER,
                                                   diskServerName OUT VARCHAR2, mountPoint OUT VARCHAR2,
                                                   path OUT VARCHAR2, dci OUT INTEGER,
                                                   castorFileId OUT INTEGER, fileId OUT INTEGER,
                                                   nsHost OUT VARCHAR2, fileSize OUT INTEGER,
                                                   tapeCopyId OUT INTEGER, lastUpdateTime OUT INTEGER) AS
  fileSystemId INTEGER := 0;
  dsid NUMBER;
  fsDiskServer NUMBER;
  lastFSChange NUMBER;
  lastFSUsed NUMBER;
  lastButOneFSUsed NUMBER;
  findNewFS NUMBER := 1;
  nbMigrators NUMBER := 0;
  unused "numList";
BEGIN
  -- First try to see whether we should resuse the same filesystem as last time
  SELECT lastFileSystemChange, lastFileSystemUsed, lastButOneFileSystemUsed
    INTO lastFSChange, lastFSUsed, lastButOneFSUsed
    FROM Stream WHERE id = streamId;
  IF getTime() < lastFSChange + 1800 THEN
    SELECT (SELECT count(*) FROM stream WHERE lastFileSystemUsed = lastFSUsed)
      INTO nbMigrators FROM DUAL;
    -- only go if we are the only migrator on the box
    IF nbMigrators = 1 THEN
      BEGIN
        -- check states of the diskserver and filesystem and get mountpoint and diskserver name
        SELECT diskserver.id, name, mountPoint, FileSystem.id INTO dsid, diskServerName, mountPoint, fileSystemId
          FROM FileSystem, DiskServer
         WHERE FileSystem.diskServer = DiskServer.id
           AND FileSystem.id = lastFSUsed
           AND FileSystem.status IN (0, 1)  -- PRODUCTION, DRAINING
           AND DiskServer.status IN (0, 1); -- PRODUCTION, DRAINING
        -- we are within the time range, so we try to reuse the filesystem
        SELECT P.path, P.diskcopy_id, P.castorfile,
             C.fileId, C.nsHost, C.fileSize, P.id, C.lastUpdateTime
        INTO path, dci, castorFileId, fileId, nsHost, fileSize, tapeCopyId, lastUpdateTime
        FROM (SELECT /*+ ORDERED USE_NL(D T) INDEX(T I_TapeCopy_CF_Status_2) INDEX(ST I_PK_Stream2TapeCopy) */
              D.path, D.diskcopy_id, D.castorfile, T.id
                FROM (SELECT /*+ INDEX(DK I_DiskCopy_FS_Status_10) */
                             DK.path path, DK.id diskcopy_id, DK.castorfile
                        FROM DiskCopy DK
                       WHERE decode(DK.status,10,DK.status,null) = 10 -- CANBEMIGR
                         AND DK.filesystem = lastFSUsed) D,
                      TapeCopy T, Stream2TapeCopy ST
               WHERE T.castorfile = D.castorfile
                 AND ST.child = T.id
                 AND ST.parent = streamId
                 AND decode(T.status,2,T.status,null) = 2 -- WAITINSTREAMS
                 AND ROWNUM < 2) P, castorfile C
         WHERE P.castorfile = C.id;
        -- we found one, no need to go for new filesystem
        findNewFS := 0;
      EXCEPTION WHEN NO_DATA_FOUND THEN
        -- found no tapecopy or diskserver, filesystem are down. We'll go through the normal selection
        NULL;
      END;
    END IF;
  END IF;
  IF findNewFS = 1 THEN
    -- We lock here a given DiskServer. See the comment for the creation of the LockTable
    -- table for a full explanation of why we need such a stupid UPDATE statement

    -- The first idea is to reuse the diskserver of the lastFSUsed, even if we change filesystem
    dsId := -1;
    UPDATE LockTable SET theLock = 1
     WHERE diskServerId = (
             SELECT lastButOneFSUsed
               FROM FileSystem FS, NbTapeCopiesInFS, DiskServer
              WHERE FS.id = NbTapeCopiesInFS.FS
                AND NbTapeCopiesInFS.NbTapeCopies > 0
                AND NbTapeCopiesInFS.Stream = StreamId
                AND FS.status IN (0, 1)         -- PRODUCTION, DRAINING
                AND DiskServer.id = FS.diskserver
                AND DiskServer.status IN (0, 1) -- PRODUCTION, DRAINING
                AND DiskServer.id = lastButOneFSUsed
                AND ROWNUM < 2)
    RETURNING diskServerId INTO dsid;
    IF dsId = -1 THEN
      -- We could not reuse the same diskserver, so we jump to another one,
      -- We try to find one with no stream on it
      UPDATE LockTable SET theLock = 1
       WHERE diskServerId = (
         SELECT DS.diskserver_id
           FROM (
             -- The double level of selects is due to the fact that ORACLE is unable
             -- to use ROWNUM and ORDER BY at the same time. Thus, we have to first compute
             -- the maxRate and then select on it.
             SELECT diskserver.id diskserver_id
               FROM FileSystem FS, NbTapeCopiesInFS, DiskServer
              WHERE FS.id = NbTapeCopiesInFS.FS
                AND NbTapeCopiesInFS.NbTapeCopies > 0
                AND NbTapeCopiesInFS.Stream = StreamId
                AND FS.status IN (0, 1)         -- PRODUCTION, DRAINING
                AND DiskServer.id = FS.diskserver
                AND DiskServer.status IN (0, 1) -- PRODUCTION, DRAINING
              ORDER BY -- first prefer diskservers where no migrator runs and filesystems with no recalls
                       DiskServer.nbMigratorStreams ASC, FS.nbRecallerStreams ASC,
                       -- then order by rate as defined by the function
                       fileSystemRate(FS.readRate, FS.writeRate, FS.nbReadStreams, FS.nbWriteStreams,
                                      FS.nbReadWriteStreams, FS.nbMigratorStreams, FS.nbRecallerStreams) DESC,
                       -- finally use randomness to avoid preferring always the same FS
                       DBMS_Random.value
              ) DS
          WHERE ROWNUM < 2)
      RETURNING diskServerId INTO dsid;
    END IF;
    -- Now we got our Diskserver but we lost all other data (due to the fact we had
    -- to do an update for the lock and we could not do a join in the update).
    -- So here we select all we need
    SELECT FN.name, FN.mountPoint, FN.diskserver, FN.id
      INTO diskServerName, mountPoint, fsDiskServer, fileSystemId
      FROM (
        SELECT DiskServer.name, FS.mountPoint, FS.diskserver, FS.id
          FROM FileSystem FS, NbTapeCopiesInFS, Diskserver
         WHERE FS.id = NbTapeCopiesInFS.FS
           AND DiskServer.id = FS.diskserver
           AND NbTapeCopiesInFS.NbTapeCopies > 0
           AND NbTapeCopiesInFS.Stream = StreamId
           AND FS.status IN (0, 1)    -- PRODUCTION, DRAINING
           AND FS.diskserver = dsId
         ORDER BY FileSystemRate(FS.readRate, FS.writeRate, FS.nbReadStreams, FS.nbWriteStreams, FS.nbReadWriteStreams, FS.nbMigratorStreams, FS.nbRecallerStreams) DESC, dbms_random.value
         ) FN
     WHERE ROWNUM < 2;
    SELECT P.path, P.diskcopy_id, P.castorfile,
           C.fileId, C.nsHost, C.fileSize, P.id, C.lastUpdateTime
      INTO path, dci, castorFileId, fileId, nsHost, fileSize, tapeCopyId, lastUpdateTime
      FROM (SELECT /*+ ORDERED USE_NL(D T) INDEX(T I_TapeCopy_CF_Status_2) INDEX(ST I_PK_Stream2TapeCopy) */
            D.path, D.diskcopy_id, D.castorfile, T.id
              FROM (SELECT /*+ INDEX(DK I_DiskCopy_FS_Status_10) */
                           DK.path path, DK.id diskcopy_id, DK.castorfile
                      FROM DiskCopy DK
                     WHERE decode(DK.status,10,DK.status,null) = 10 -- CANBEMIGR
                       AND DK.filesystem = fileSystemId) D,
                    TapeCopy T, Stream2TapeCopy ST
             WHERE T.castorfile = D.castorfile
               AND ST.child = T.id
               AND ST.parent = streamId
               AND decode(T.status,2,T.status,null) = 2 -- WAITINSTREAMS
               AND ROWNUM < 2) P, castorfile C
     WHERE P.castorfile = C.id;

  END IF;
  -- update status of selected tapecopy and stream
  UPDATE TapeCopy SET status = 3 -- SELECTED
   WHERE id = tapeCopyId;
  -- get locks on all the stream we will handle in order to avoid a
  -- deadlock with the attachTapeCopiesToStreams procedure
  --
  -- the deadlock would occur with updates to the NbTapeCopiesInFS
  -- table performed by the tr_stream2tapecopy_delete trigger triggered
  -- by the "DELETE FROM Stream2TapeCopy" statement below
  SELECT 1
    BULK COLLECT INTO unused
    FROM Stream
    WHERE id IN (SELECT parent FROM Stream2TapeCopy WHERE child = tapeCopyId)
    ORDER BY id
    FOR UPDATE;
  UPDATE Stream
     SET status = 3, -- RUNNING
         lastFileSystemUsed = fileSystemId, lastButOneFileSystemUsed = dsid
   WHERE id = streamId AND status IN (2,3);
  IF findNewFS = 1 THEN
    -- time only if we changed FS
    UPDATE Stream SET lastFileSystemChange = getTime() WHERE id = streamId;
  END IF;
  -- detach the tapecopy from the stream now that it is SELECTED
  -- the triggers will update NbTapeCopiesInFS accordingly
  DELETE FROM Stream2TapeCopy
   WHERE child = tapeCopyId;

  -- Update Filesystem state
  updateFSMigratorOpened(fsDiskServer, fileSystemId, 0);

  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- Reset last filesystems used
    UPDATE Stream
       SET lastFileSystemUsed = 0, lastButOneFileSystemUsed = 0
     WHERE id = streamId;
    -- No data found means the selected filesystem has no
    -- tapecopies to be migrated. Thus we go to next one
    -- However, we reset the NbTapeCopiesInFS row that failed
    -- This is not 100% safe but is far better than retrying
    -- in the same conditions
    IF 0 != fileSystemId THEN
      UPDATE NbTapeCopiesInFS
         SET NbTapeCopies = 0
       WHERE Stream = StreamId
         AND NbTapeCopiesInFS.FS = fileSystemId;
      bestTapeCopyForStream(streamId,
                            diskServerName,
                            mountPoint,
                            path,
                            dci,
                            castorFileId,
                            fileId,
                            nsHost,
                            fileSize,
                            tapeCopyId,
                            lastUpdateTime);
    END IF;
END;
/

/* repack migration candidate selection policy */
CREATE OR REPLACE PROCEDURE repackMigrSelPolicy(streamId IN INTEGER,
                                                diskServerName OUT VARCHAR2, mountPoint OUT VARCHAR2,
                                                path OUT VARCHAR2, dci OUT INTEGER,
                                                castorFileId OUT INTEGER, fileId OUT INTEGER,
                                                nsHost OUT VARCHAR2, fileSize OUT INTEGER,
                                                tapeCopyId OUT INTEGER, lastUpdateTime OUT INTEGER) AS
  fileSystemId INTEGER := 0;
  dsid NUMBER;
  fsDiskServer NUMBER;
  lastFSChange NUMBER;
  lastFSUsed NUMBER;
  lastButOneFSUsed NUMBER;
  nbMigrators NUMBER := 0;
  unused "numList";
BEGIN
  -- We lock here a given DiskServer. See the comment for the creation of the LockTable
  -- table for a full explanation of why we need such a stupid UPDATE statement
  UPDATE LockTable SET theLock = 1
   WHERE diskServerId = (
     SELECT DS.diskserver_id
       FROM (
         -- The double level of selects is due to the fact that ORACLE is unable
         -- to use ROWNUM and ORDER BY at the same time. Thus, we have to first compute
         -- the maxRate and then select on it.
         SELECT diskserver.id diskserver_id
           FROM FileSystem FS, NbTapeCopiesInFS, DiskServer
          WHERE FS.id = NbTapeCopiesInFS.FS
            AND NbTapeCopiesInFS.NbTapeCopies > 0
            AND NbTapeCopiesInFS.Stream = StreamId
            AND FS.status IN (0, 1)         -- PRODUCTION, DRAINING
            AND DiskServer.id = FS.diskserver
            AND DiskServer.status IN (0, 1) -- PRODUCTION, DRAINING
          ORDER BY -- first prefer diskservers where no migrator runs and filesystems with no recalls
                   DiskServer.nbMigratorStreams ASC, FS.nbRecallerStreams ASC,
                   -- then order by rate as defined by the function
                   fileSystemRate(FS.readRate, FS.writeRate, FS.nbReadStreams, FS.nbWriteStreams,
                                  FS.nbReadWriteStreams, FS.nbMigratorStreams, FS.nbRecallerStreams) DESC,
                   -- finally use randomness to avoid preferring always the same FS
                   DBMS_Random.value
          ) DS
      WHERE ROWNUM < 2)
  RETURNING diskServerId INTO dsid;
  -- Now we got our Diskserver but we lost all other data (due to the fact we had
  -- to do an update for the lock and we could not do a join in the update).
  -- So here we select all we need
  SELECT FN.name, FN.mountPoint, FN.diskserver, FN.id
    INTO diskServerName, mountPoint, fsDiskServer, fileSystemId
    FROM (
      SELECT DiskServer.name, FS.mountPoint, FS.diskserver, FS.id
        FROM FileSystem FS, NbTapeCopiesInFS, Diskserver
       WHERE FS.id = NbTapeCopiesInFS.FS
         AND DiskServer.id = FS.diskserver
         AND NbTapeCopiesInFS.NbTapeCopies > 0
         AND NbTapeCopiesInFS.Stream = StreamId
         AND FS.status IN (0, 1)    -- PRODUCTION, DRAINING
         AND FS.diskserver = dsId
    ORDER BY -- first prefer diskservers where no migrator runs and filesystems with no recalls
             DiskServer.nbMigratorStreams ASC, FS.nbRecallerStreams ASC,
             -- then order by rate as defined by the function
             fileSystemRate(FS.readRate, FS.writeRate, FS.nbReadStreams, FS.nbWriteStreams,
                            FS.nbReadWriteStreams, FS.nbMigratorStreams, FS.nbRecallerStreams) DESC,
             -- finally use randomness to avoid preferring always the same FS
             DBMS_Random.value
       ) FN
   WHERE ROWNUM < 2;
  SELECT /*+ FIRST_ROWS(1)  LEADING(D T ST) */
         D.path, D.id, D.castorfile, T.id
    INTO path, dci, castorFileId, tapeCopyId
    FROM DiskCopy D, TapeCopy T, Stream2TapeCopy ST
   WHERE D.status = 10 -- CANBEMIGR
     AND D.filesystem = fileSystemId
     AND ST.parent = streamId
     AND T.status = 2 -- WAITINSTREAMS
     AND ST.child = T.id
     AND T.castorfile = D.castorfile
     AND ROWNUM < 2;
  SELECT CastorFile.FileId, CastorFile.NsHost, CastorFile.FileSize, CastorFile.lastUpdateTime
    INTO fileId, nsHost, fileSize, lastUpdateTime
    FROM CastorFile
   WHERE id = castorFileId;
  -- update status of selected tapecopy and stream
  UPDATE TapeCopy SET status = 3 -- SELECTED
   WHERE id = tapeCopyId;
  -- get locks on all the stream we will handle in order to avoid a
  -- deadlock with the attachTapeCopiesToStreams procedure
  --
  -- the deadlock would occur with updates to the NbTapeCopiesInFS
  -- table performed by the tr_stream2tapecopy_delete trigger triggered
  -- by the "DELETE FROM Stream2TapeCopy" statement below
  SELECT 1 BULK COLLECT
    INTO unused
    FROM Stream
    WHERE id IN (SELECT parent FROM Stream2TapeCopy WHERE child = tapeCopyId)
    ORDER BY id
    FOR UPDATE;
  UPDATE Stream
     SET status = 3, -- RUNNING
         lastFileSystemUsed = fileSystemId, lastButOneFileSystemUsed = lastFileSystemUsed
   WHERE id = streamId AND status IN (2,3);
  -- time only if we changed FS
  UPDATE Stream SET lastFileSystemChange = getTime() WHERE id = streamId;
  -- detach the tapecopy from the stream now that it is SELECTED
  -- the triggers will update NbTapeCopiesInFS accordingly
  DELETE FROM Stream2TapeCopy
   WHERE child = tapeCopyId;

  -- Update Filesystem state
  updateFSMigratorOpened(fsDiskServer, fileSystemId, 0);

  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- Reset last filesystems used
    UPDATE Stream
       SET lastFileSystemUsed = 0, lastButOneFileSystemUsed = 0
     WHERE id = streamId;
    -- No data found means the selected filesystem has no
    -- tapecopies to be migrated. Thus we go to next one
    -- However, we reset the NbTapeCopiesInFS row that failed
    -- This is not 100% safe but is far better than retrying
    -- in the same conditions
    IF 0 != fileSystemId THEN
      UPDATE NbTapeCopiesInFS
         SET NbTapeCopies = 0
       WHERE Stream = StreamId
         AND NbTapeCopiesInFS.FS = fileSystemId;
      bestTapeCopyForStream(streamId,
                            diskServerName,
                            mountPoint,
                            path,
                            dci,
                            castorFileId,
                            fileId,
                            nsHost,
                            fileSize,
                            tapeCopyId,
                            lastUpdateTime);
    END IF;
END;
/


/* PL/SQL method implementing bestFileSystemForSegment */
CREATE OR REPLACE PROCEDURE bestFileSystemForSegment(segmentId IN INTEGER, diskServerName OUT VARCHAR2,
                                                     rmountPoint OUT VARCHAR2, rpath OUT VARCHAR2,
                                                     dcid OUT INTEGER) AS
  fileSystemId NUMBER;
  cfid NUMBER;
  fsDiskServer NUMBER;
  fileSize NUMBER;
  nb NUMBER;
BEGIN
  -- First get the DiskCopy and see whether it already has a fileSystem
  -- associated (case of a multi segment file)
  -- We also select on the DiskCopy status since we know it is
  -- in WAITTAPERECALL status and there may be other ones
  -- INVALID, GCCANDIDATE, DELETED, etc...
  SELECT DiskCopy.fileSystem, DiskCopy.path, DiskCopy.id, DiskCopy.CastorFile
    INTO fileSystemId, rpath, dcid, cfid
    FROM TapeCopy, Segment, DiskCopy
   WHERE Segment.id = segmentId
     AND Segment.copy = TapeCopy.id
     AND DiskCopy.castorfile = TapeCopy.castorfile
     AND DiskCopy.status = 2; -- WAITTAPERECALL
  -- Check if the DiskCopy had a FileSystem associated
  IF fileSystemId > 0 THEN
    BEGIN
      -- It had one, force filesystem selection, unless it was disabled.
      SELECT DiskServer.name, DiskServer.id, FileSystem.mountPoint
        INTO diskServerName, fsDiskServer, rmountPoint
        FROM DiskServer, FileSystem
       WHERE FileSystem.id = fileSystemId
         AND FileSystem.status = 0 -- FILESYSTEM_PRODUCTION
         AND DiskServer.id = FileSystem.diskServer
         AND DiskServer.status = 0; -- DISKSERVER_PRODUCTION
      updateFsRecallerOpened(fsDiskServer, fileSystemId, 0);
    EXCEPTION WHEN NO_DATA_FOUND THEN
      -- Error, the filesystem or the machine was probably disabled in between
      raise_application_error(-20101, 'In a multi-segment file, FileSystem or Machine was disabled before all segments were recalled');
    END;
  ELSE
    fileSystemId := 0;
    -- The DiskCopy had no FileSystem associated with it which indicates that
    -- This is a new recall. We try and select a good FileSystem for it!
    FOR a IN (SELECT DiskServer.name, FileSystem.mountPoint, FileSystem.id,
                     FileSystem.diskserver, CastorFile.fileSize
                FROM DiskServer, FileSystem, DiskPool2SvcClass,
                     (SELECT id, svcClass from StageGetRequest UNION ALL
                      SELECT id, svcClass from StagePrepareToGetRequest UNION ALL
                      SELECT id, svcClass from StageRepackRequest UNION ALL
                      SELECT id, svcClass from StageUpdateRequest UNION ALL
                      SELECT id, svcClass from StagePrepareToUpdateRequest) Request,
                      SubRequest, CastorFile
               WHERE CastorFile.id = cfid
                 AND SubRequest.castorfile = cfid
                 AND SubRequest.status = 4 -- SUBREQUEST_WAITTAPERECALL
                 AND Request.id = SubRequest.request
                 AND Request.svcclass = DiskPool2SvcClass.child
                 AND FileSystem.diskpool = DiskPool2SvcClass.parent
                 AND FileSystem.free - FileSystem.minAllowedFreeSpace * FileSystem.totalSize > CastorFile.fileSize
                 AND FileSystem.status = 0 -- FILESYSTEM_PRODUCTION
                 AND DiskServer.id = FileSystem.diskServer
                 AND DiskServer.status = 0 -- DISKSERVER_PRODUCTION
            ORDER BY -- first prefer DSs without concurrent migrators/recallers
                     DiskServer.nbRecallerStreams ASC, FileSystem.nbMigratorStreams ASC,
                     -- then order by rate as defined by the function
                     fileSystemRate(FileSystem.readRate, FileSystem.writeRate, FileSystem.nbReadStreams,
                                    FileSystem.nbWriteStreams, FileSystem.nbReadWriteStreams, FileSystem.nbMigratorStreams,
                                    FileSystem.nbRecallerStreams) DESC,
                     -- finally use randomness to avoid preferring always the same FS
                     DBMS_Random.value)
    LOOP
      diskServerName := a.name;
      rmountPoint    := a.mountPoint;
      fileSystemId   := a.id;
      -- Check that we don't already have a copy of this file on this filesystem.
      -- This will never happen in normal operations but may be the case if a filesystem
      -- was disabled and did come back while the tape recall was waiting.
      -- Even if we optimize by cancelling remaining unneeded tape recalls when a
      -- fileSystem comes back, the ones running at the time of the come back will have
      -- the problem.
      SELECT count(*) INTO nb
        FROM DiskCopy
       WHERE fileSystem = a.id
         AND castorfile = cfid
         AND status = 0; -- STAGED
      IF nb != 0 THEN
        raise_application_error(-20103, 'Recaller could not find a FileSystem in production in the requested SvcClass and without copies of this file');
      END IF;
      -- Set the diskcopy's filesystem
      UPDATE DiskCopy
         SET fileSystem = a.id
       WHERE id = dcid;
      updateFsRecallerOpened(a.diskServer, a.id, a.fileSize);
      RETURN;
    END LOOP;

    IF fileSystemId = 0 THEN
      raise_application_error(-20115, 'No suitable filesystem found for this recalled segment');
    END IF;
  END IF;
END;
/


/* PL/SQL method implementing fileRecallFailed */
CREATE OR REPLACE PROCEDURE fileRecallFailed(tapecopyId IN INTEGER) AS
 cfId NUMBER;
BEGIN
  SELECT castorFile INTO cfId FROM TapeCopy
   WHERE id = tapecopyId;
  UPDATE DiskCopy SET status = 4 -- DISKCOPY_FAILED
   WHERE castorFile = cfId
     AND status = 2; -- DISKCOPY_WAITTAPERECALL
  UPDATE SubRequest 
     SET status = 7, -- SUBREQUEST_FAILED
         getNextStatus = 1, -- GETNEXTSTATUS_FILESTAGED (not strictly correct but the request is over anyway)
         lastModificationTime = getTime(),
         errorCode = 1015,  -- SEINTERNAL
         errorMessage = 'File recall from tape has failed, please try again later',
         parent = 0
   WHERE castorFile = cfId
     AND status IN (4, 5); -- WAITTAPERECALL, WAITSUBREQ
END;
/


/* PL/SQL method implementing streamsToDo */
CREATE OR REPLACE PROCEDURE streamsToDo(res OUT castor.Stream_Cur) AS
  streams "numList";
BEGIN
  SELECT UNIQUE Stream.id BULK COLLECT INTO streams
    FROM Stream, NbTapeCopiesInFS, FileSystem, DiskServer
   WHERE Stream.status = 0 -- PENDING
     AND NbTapeCopiesInFS.stream = Stream.id
     AND NbTapeCopiesInFS.NbTapeCopies > 0
     AND FileSystem.id = NbTapeCopiesInFS.FS
     AND FileSystem.status IN (0, 1) -- PRODUCTION, DRAINING
     AND DiskServer.id = FileSystem.DiskServer
     AND DiskServer.status IN (0, 1); -- PRODUCTION, DRAINING
  FORALL i in streams.FIRST..streams.LAST
    UPDATE Stream SET status = 1 -- WAITDRIVE
    WHERE id = streams(i);

  OPEN res FOR
    SELECT Stream.id, Stream.InitialSizeToTransfer, Stream.status,
           TapePool.id, TapePool.name
      FROM Stream, TapePool
     WHERE Stream.id MEMBER OF streams
       AND Stream.TapePool = TapePool.id;
END;
/


/* PL/SQL method implementing fileRecalled */
CREATE OR REPLACE PROCEDURE fileRecalled(tapecopyId IN INTEGER) AS
  subRequestId NUMBER;
  requestId NUMBER;
  dci NUMBER;
  reqType NUMBER;
  cfId NUMBER;
  fsId NUMBER;
  fs NUMBER;
  gcw NUMBER;
  gcwProc VARCHAR(2048);
  ouid INTEGER;
  ogid INTEGER;
BEGIN
  SELECT SubRequest.id, SubRequest.request, DiskCopy.id, CastorFile.id, DiskCopy.fileSystem, Castorfile.FileSize
    INTO subRequestId, requestId, dci, cfId, fsId, fs
    FROM TapeCopy, SubRequest, DiskCopy, CastorFile
   WHERE TapeCopy.id = tapecopyId
     AND CastorFile.id = TapeCopy.castorFile
     AND DiskCopy.castorFile = TapeCopy.castorFile
     AND SubRequest.diskcopy(+) = DiskCopy.id
     AND DiskCopy.status = 2;  -- DISKCOPY_WAITTAPERECALL
  -- cleanup:
  -- delete any previous failed diskcopy for this castorfile (due to failed recall attempts for instance)
  DELETE FROM Id2Type WHERE id IN (SELECT id FROM DiskCopy WHERE castorFile = cfId AND status = 4);
  DELETE FROM DiskCopy WHERE castorFile = cfId AND status = 4;  -- FAILED
  -- mark as invalid any previous diskcopy in disabled filesystems, which may have triggered this recall
  UPDATE DiskCopy SET status = 7  -- INVALID
   WHERE fileSystem IN (SELECT id FROM FileSystem WHERE status = 2)  -- DISABLED
     AND castorFile = cfId
     AND status = 0;  -- STAGED

  SELECT type INTO reqType FROM Id2Type WHERE id =
    (SELECT request FROM SubRequest WHERE id = subRequestId);
  -- Repack handling:
  -- create the tapecopies for waiting subrequests and update diskcopies
  IF reqType = 119 THEN  -- OBJ_StageRepackRequest
    startRepackMigration(subRequestId, cfId, dci, ouid, ogid);
  ELSE
    DECLARE
      svcClassId NUMBER;
      gcw VARCHAR2(2048);
    BEGIN
      SELECT Request.svcClass, euid, egid INTO svcClassId, ouid, ogid
        FROM (SELECT id, svcClass, euid, egid FROM StageGetRequest UNION ALL
              SELECT id, svcClass, euid, egid FROM StagePrepareToGetRequest UNION ALL
              SELECT id, svcClass, euid, egid FROM StageUpdateRequest UNION ALL
              SELECT id, svcClass, euid, egid FROM StagePrepareToUpdateRequest) Request
       WHERE Request.id = requestId;
      gcwProc := castorGC.getRecallWeight(svcClassId);
      EXECUTE IMMEDIATE 'BEGIN :newGcw := ' || gcwProc || '(:size); END;'
        USING OUT gcw, IN fs;
      UPDATE DiskCopy
         SET status = 0,  -- DISKCOPY_STAGED
             lastAccessTime = getTime(),  -- for the GC, effective lifetime of this diskcopy starts now
             gcWeight = gcw,
             diskCopySize = fs
       WHERE id = dci;
    END;
    -- restart this subrequest if it's not a repack one
    UPDATE SubRequest
       SET status = 1, lastModificationTime = getTime(), parent = 0  -- SUBREQUEST_RESTART
     WHERE id = subRequestId;
  END IF;
  -- restart other requests waiting on this recall
  UPDATE SubRequest
     SET status = 1, lastModificationTime = getTime(), parent = 0  -- SUBREQUEST_RESTART
   WHERE parent = subRequestId;
  -- update filesystem status
  updateFsFileClosed(fsId);
  -- Trigger the creation of additional copies of the file, if necessary.
  replicateOnClose(cfId, ouid, ogid);
END;
/


/* PL/SQL method implementing resetStream */
create or replace PROCEDURE resetStream (sid IN INTEGER) AS
  CONSTRAINT_VIOLATED EXCEPTION;
  PRAGMA EXCEPTION_INIT(CONSTRAINT_VIOLATED, -02292);
BEGIN  
   DELETE FROM Stream WHERE id = sid;
   DELETE FROM id2type WHERE id=sid;
   UPDATE Tape SET status=0, Stream = null WHERE Stream = sid;
EXCEPTION WHEN CONSTRAINT_VIOLATED THEN
  -- constraint violation and we cannot delete the stream
  UPDATE Stream SET status = 6, tape = null, lastFileSystemChange = null WHERE id = sid; 
  UPDATE Tape SET status=0, Stream = null WHERE Stream = sid;
END;
/


/* PL/SQL method implementing segmentsForTape */
CREATE OR REPLACE PROCEDURE segmentsForTape (tapeId IN INTEGER, segments
OUT castor.Segment_Cur) AS
  segs "numList";
  rows PLS_INTEGER := 500;
  CURSOR c1 IS
    SELECT Segment.id FROM Segment
    WHERE Segment.tape = tapeId AND Segment.status = 0 ORDER BY Segment.fseq
    FOR UPDATE;
BEGIN
  OPEN c1;
  FETCH c1 BULK COLLECT INTO segs LIMIT rows;
  CLOSE c1;

  IF segs.COUNT > 0 THEN
     UPDATE Tape SET status = 4 -- MOUNTED
       WHERE id = tapeId;
     FORALL j IN segs.FIRST..segs.LAST -- bulk update with the forall..
       UPDATE Segment SET status = 7 -- SELECTED
       WHERE id = segs(j);
  END IF;

  OPEN segments FOR
    SELECT fseq, offset, bytes_in, bytes_out, host_bytes, segmCksumAlgorithm, segmCksum,
           errMsgTxt, errorCode, severity, blockId0, blockId1, blockId2, blockId3,
           creationTime, id, tape, copy, status, priority
      FROM Segment
     WHERE id IN (SELECT /*+ CARDINALITY(segsTable 5) */ * FROM TABLE(segs) segsTable);
END;
/


/* PL/SQL method implementing anySegmentsForTape */
CREATE OR REPLACE PROCEDURE anySegmentsForTape
(tapeId IN INTEGER, nb OUT INTEGER) AS
BEGIN
  SELECT count(*) INTO nb FROM Segment
  WHERE Segment.tape = tapeId
    AND Segment.status = 0;
  IF nb > 0 THEN
    UPDATE Tape SET status = 3 -- WAITMOUNT
    WHERE id = tapeId;
  END IF;
END;
/


/* PL/SQL method implementing failedSegments */
CREATE OR REPLACE PROCEDURE failedSegments
(segments OUT castor.Segment_Cur) AS
BEGIN
  OPEN segments FOR
    SELECT fseq, offset, bytes_in, bytes_out, host_bytes, segmCksumAlgorithm, segmCksum,
           errMsgTxt, errorCode, severity, blockId0, blockId1, blockId2, blockId3,
           creationTime, id, tape, copy, status, priority
      FROM Segment
     WHERE Segment.status = 6; -- SEGMENT_FAILED
END;
/


/* PL/SQL procedure which is executed whenever a files has been written to tape by the migrator to
 * check, whether the file information has to be added to the NameServer or to replace an entry
 * (repack case)
 */
CREATE OR REPLACE PROCEDURE checkFileForRepack(fid IN INTEGER, ret OUT VARCHAR2) AS
  sreqid NUMBER;
BEGIN
  ret := NULL;
  -- Get the repackvid field from the existing request (if none, then we are not in a repack process)
  SELECT SubRequest.id, StageRepackRequest.repackvid
    INTO sreqid, ret
    FROM SubRequest, DiskCopy, CastorFile, StageRepackRequest
   WHERE stagerepackrequest.id = subrequest.request
     AND diskcopy.id = subrequest.diskcopy
     AND diskcopy.status = 10 -- CANBEMIGR
     AND subrequest.status = 12 -- SUBREQUEST_REPACK
     AND diskcopy.castorfile = castorfile.id
     AND castorfile.fileid = fid
     AND ROWNUM < 2;
  UPDATE SubRequest SET status = 11  -- SUBREQUEST_ARCHIVED XXX this step is to be moved after the operation
                                     -- has been successful once the migrator is properly rewritten
   WHERE SubRequest.id = sreqid;
EXCEPTION WHEN NO_DATA_FOUND THEN
  NULL;
END;
/


/* PL/SQL method implementing rtcpclientdCleanUp */
CREATE OR REPLACE PROCEDURE rtcpclientdCleanUp AS
  tpIds "numList";
BEGIN
  -- Deal with Migrations
  -- 1) Ressurect tapecopies for migration
  UPDATE TapeCopy SET status = 1 WHERE status = 3;
  -- 2) Clean up the streams
  UPDATE Stream SET status = 0 
   WHERE status NOT IN (0, 5, 6, 7) --PENDING, CREATED, STOPPED, WAITPOLICY
  RETURNING tape BULK COLLECT INTO tpIds;
  UPDATE Stream SET tape = NULL WHERE tape != 0;
  -- 3) Reset the tape for migration
  FORALL i IN tpIds.FIRST .. tpIds.LAST  
    UPDATE tape SET stream = 0, status = 0 WHERE status IN (2, 3, 4) AND id = tpIds(i);

  -- Deal with Recalls
  UPDATE Segment SET status = 0 WHERE status = 7; -- Resurrect SELECTED segment
  UPDATE Tape SET status = 1 WHERE tpmode = 0 AND status IN (2, 3, 4); -- Resurrect the tapes running for recall
  UPDATE Tape A SET status = 8 
   WHERE status IN (0, 6, 7) AND EXISTS
    (SELECT id FROM Segment WHERE status = 0 AND tape = A.id);
  COMMIT;
END;
/


/** Functions for the MigHunterDaemon **/

/** Cleanup before starting a new MigHunterDaemon **/
CREATE OR REPLACE PROCEDURE migHunterCleanUp(svcName IN VARCHAR2)
AS
  svcId NUMBER;
BEGIN
  SELECT id INTO svcId FROM SvcClass WHERE name = svcName;
  -- clean up tapecopies , WAITPOLICY reset into TOBEMIGRATED
  UPDATE /*+ BEGIN_OUTLINE_DATA
             IGNORE_OPTIM_EMBEDDED_HINTS
             ALL_ROWS
             OUTLINE_LEAF(@"SEL3FF8579E")
             UNNEST(@"SEL1")
             OUTLINE(@"UPD1")
             OUTLINE(@"SEL1")
             INDEX_RS_ASC(@"SEL3FF8579E" "TC"@"UPD1" ("TAPECOPY"."STATUS"))
             INDEX_RS_ASC(@"SEL3FF8579E" "CF"@"SEL1" ("CASTORFILE"."ID"))
             LEADING(@"SEL3FF8579E" "TC"@"UPD1" "CF"@"SEL1")
             USE_NL(@"SEL3FF8579E" "CF"@"SEL1") */
         TapeCopy TC
     SET status = 1
   WHERE status = 7 
     AND EXISTS (
       SELECT 'x' 
         FROM CastorFile CF
        WHERE TC.castorFile = CF.id
          AND CF.svcclass = svcId);
  -- clean up streams, WAITPOLICY reset into CREATED
  UPDATE Stream SET status = 5 WHERE status = 7 AND tapepool IN
   (SELECT svcclass2tapepool.child
      FROM svcclass2tapepool
     WHERE svcId = svcclass2tapepool.parent);
  COMMIT;
END;
/

/* Get input for python migration policy */
CREATE OR REPLACE PROCEDURE inputForMigrationPolicy
(svcclassName IN VARCHAR2,
 policyName OUT VARCHAR2,
 svcId OUT NUMBER,
 dbInfo OUT castor.DbMigrationInfo_Cur) AS
 tcIds "numList";
BEGIN
  -- do the same operation of getMigrCandidate and return the dbInfoMigrationPolicy
  -- we look first for repack condidates for this svcclass
  -- we update atomically WAITPOLICY
  SELECT SvcClass.migratorpolicy, SvcClass.id INTO policyName, svcId
    FROM SvcClass
   WHERE SvcClass.name = svcClassName;

  UPDATE /*+ BEGIN_OUTLINE_DATA
             IGNORE_OPTIM_EMBEDDED_HINTS
             ALL_ROWS
             OUTLINE_LEAF(@"SEL3FF8579E")
             UNNEST(@"SEL1")
             OUTLINE(@"UPD1")
             OUTLINE(@"SEL1")
             INDEX_RS_ASC(@"SEL3FF8579E" "TC"@"UPD1" ("TAPECOPY"."STATUS"))
             INDEX_RS_ASC(@"SEL3FF8579E" "CF"@"SEL1" ("CASTORFILE"."ID"))
             LEADING(@"SEL3FF8579E" "TC"@"UPD1" "CF"@"SEL1")
             USE_NL(@"SEL3FF8579E" "CF"@"SEL1") */
         TapeCopy TC 
     SET status = 7
   WHERE status IN (0, 1)
     AND (EXISTS
       (SELECT 'x' FROM SubRequest, StageRepackRequest
         WHERE StageRepackRequest.svcclass = svcId
           AND SubRequest.request = StageRepackRequest.id
           AND SubRequest.status = 12  -- SUBREQUEST_REPACK
           AND TC.castorfile = SubRequest.castorfile
      ) OR EXISTS (
        SELECT 'x'
          FROM CastorFile CF
         WHERE TC.castorFile = CF.id
           AND CF.svcClass = svcId))
    RETURNING TC.id -- CREATED / TOBEMIGRATED
    BULK COLLECT INTO tcIds;
  COMMIT;
  -- return the full resultset
  OPEN dbInfo FOR
    SELECT TapeCopy.id, TapeCopy.copyNb, CastorFile.lastknownfilename,
           CastorFile.nsHost, CastorFile.fileid, CastorFile.filesize
      FROM Tapecopy,CastorFile
     WHERE CastorFile.id = TapeCopy.castorfile
       AND TapeCopy.id IN 
         (SELECT /*+ CARDINALITY(tcidTable 5) */ * 
            FROM table(tcIds) tcidTable);
END;
/

/* Get input for python Stream Policy */
CREATE OR REPLACE PROCEDURE inputForStreamPolicy
(svcClassName IN VARCHAR2,
 policyName OUT VARCHAR2,
 runningStreams OUT INTEGER,
 maxStream OUT INTEGER,
 dbInfo OUT castor.DbStreamInfo_Cur)
AS
  tpId NUMBER; -- used in the loop
  tcId NUMBER; -- used in the loop
  streamId NUMBER; -- stream attached to the tapepool
  svcId NUMBER; -- id for the svcclass
  strIds "numList";
BEGIN
  -- info for policy
  SELECT streamPolicy, nbDrives, id INTO policyName, maxStream, svcId
    FROM SvcClass WHERE SvcClass.name = svcClassName;
  SELECT count(*) INTO runningStreams
    FROM Stream, SvcClass2TapePool
   WHERE Stream.TapePool = SvcClass2TapePool.child
     AND SvcClass2TapePool.parent = svcId
     AND Stream.status = 3;
  UPDATE stream SET status = 7
   WHERE Stream.status IN (4, 5, 6)
     AND Stream.id
      IN (SELECT Stream.id FROM Stream,SvcClass2TapePool
           WHERE Stream.Tapepool = SvcClass2TapePool.child
             AND SvcClass2TapePool.parent = svcId)
  RETURNING Stream.id BULK COLLECT INTO strIds;
  COMMIT;
  --- return for policy
  OPEN dbInfo FOR
    SELECT Stream.id, count(distinct Stream2TapeCopy.child), sum(CastorFile.filesize)
      FROM Stream2TapeCopy, TapeCopy, CastorFile, Stream
     WHERE
       Stream.id IN (SELECT /*+ CARDINALITY(stridTable 5) */ * FROM TABLE(strIds) stridTable)
       AND Stream2TapeCopy.child = TapeCopy.id(+)
       AND TapeCopy.castorfile = CastorFile.id(+)
       AND Stream.id = Stream2TapeCopy.parent(+)
       AND Stream.status = 7
     GROUP BY Stream.id;
END;
/

/* createOrUpdateStream */
CREATE OR REPLACE PROCEDURE createOrUpdateStream
(svcClassName IN VARCHAR2,
 initialSizeToTransfer IN NUMBER, -- total initialSizeToTransfer for the svcClass
 volumeThreashold IN NUMBER, -- parameter given by -V
 initialSizeCeiling IN NUMBER, -- to calculate the initialSizeToTransfer per stream
 doClone IN INTEGER,
 nbMigrationCandidate IN INTEGER,
 retCode OUT INTEGER) -- all candidate before applying the policy
AS
  nbOldStream NUMBER; -- stream for the specific svcclass
  nbDrives NUMBER; -- drives associated to the svcclass
  initSize NUMBER; --  the initialSizeToTransfer per stream
  tpId NUMBER; -- tape pool id
  strId NUMBER; -- stream id
  streamToClone NUMBER; -- stream id to clone
  svcId NUMBER; --svcclass id
  tcId NUMBER; -- tape copy id
  oldSize NUMBER; -- value for a cloned stream
BEGIN
  retCode := 0;
  -- get streamFromSvcClass
  BEGIN
    SELECT id INTO svcId FROM SvcClass
     WHERE name = svcClassName AND ROWNUM < 2;
    SELECT count(Stream.id) INTO nbOldStream
      FROM Stream, SvcClass2TapePool
     WHERE SvcClass2TapePool.child = Stream.tapepool
       AND SvcClass2TapePool.parent = svcId;
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
    -- RTCPCLD_MSG_NOTPPOOLS
    -- restore candidate
    retCode := -1;
    RETURN;
  END;

  IF nbOldStream <= 0 AND initialSizeToTransfer < volumeThreashold THEN
    -- restore WAITINSTREAM to TOBEMIGRATED, not enough data
    retCode := -2 ; -- RTCPCLD_MSG_DATALIMIT
    RETURN;
  END IF;

  IF nbOldStream >= 0 AND (doClone = 1 OR nbMigrationCandidate > 0) THEN
    -- stream creator
    SELECT SvcClass.nbDrives INTO nbDrives FROM SvcClass WHERE id = svcId;
    IF nbDrives = 0 THEN
    	retCode := -3; -- RESTORE NEEDED
    	RETURN;
    END IF;
    -- get the initialSizeToTransfer to associate to the stream
    IF initialSizeToTransfer/nbDrives > initialSizeCeiling THEN
      initSize := initialSizeCeiling;
    ELSE
      initSize := initialSizeToTransfer/nbDrives;
    END IF;

    -- loop until the max number of stream
    IF nbOldStream < nbDrives THEN
      LOOP
        -- get the tape pool with less stream
        BEGIN
         -- tapepool without stream randomly chosen
          SELECT a INTO tpId
            FROM (
              SELECT TapePool.id AS a FROM TapePool,SvcClass2TapePool
               WHERE TapePool.id NOT IN (SELECT TapePool FROM Stream)
                 AND TapePool.id = SvcClass2TapePool.child
	         AND SvcClass2TapePool.parent = svcId
            ORDER BY dbms_random.value
	    ) WHERE ROWNUM < 2;
        EXCEPTION WHEN NO_DATA_FOUND THEN
          -- at least one stream foreach tapepool
           SELECT tapepool INTO tpId
             FROM (
               SELECT tapepool, count(*) AS c
                 FROM Stream
                WHERE tapepool IN (
                  SELECT SvcClass2TapePool.child
                    FROM SvcClass2TapePool
                   WHERE SvcClass2TapePool.parent = svcId)
             GROUP BY tapepool
             ORDER BY c ASC, dbms_random.value)
           WHERE ROWNUM < 2;
	END;

        -- STREAM_CREATED
        INSERT INTO Stream
          (id, initialsizetotransfer, lastFileSystemChange, tape, lastFileSystemUsed,
           lastButOneFileSystemUsed, tapepool, status)
        VALUES (ids_seq.nextval, initSize, null, null, null, null, tpId, 5) RETURN id INTO strId;
        INSERT INTO Id2Type (id, type) values (strId,26); -- Stream type
    	IF doClone = 1 THEN
	  BEGIN
	    -- clone the new stream with one from the same tapepool
	    SELECT id, initialsizetotransfer INTO streamToClone, oldSize
              FROM Stream WHERE tapepool = tpId AND id != strId AND ROWNUM < 2;
            FOR tcId IN (SELECT child FROM Stream2TapeCopy
                          WHERE Stream2TapeCopy.parent = streamToClone)
            LOOP
              -- a take the first one, they are supposed to be all the same
              INSERT INTO stream2tapecopy (parent, child) VALUES (strId, tcId.child);
            END LOOP;
            UPDATE Stream SET initialSizeToTransfer = oldSize WHERE id = strId;
           EXCEPTION WHEN NO_DATA_FOUND THEN
  	    -- no stream to clone for this tapepool
  	    NULL;
	   END;
	END IF;
        nbOldStream := nbOldStream + 1;
        EXIT WHEN nbOldStream >= nbDrives;
      END LOOP;
    END IF;
  END IF;
END;
/

/* attach tapecopies to stream */
CREATE OR REPLACE PROCEDURE attachTapeCopiesToStreams
(tapeCopyIds IN castor."cnumList",
 tapePoolIds IN castor."cnumList")
AS
  streamId NUMBER; -- stream attached to the tapepool
  counter NUMBER := 0;
  unused NUMBER;
  nbStream NUMBER;
BEGIN
  -- add choosen tapecopies to all Streams associated to the tapepool used by the policy
  FOR i IN tapeCopyIds.FIRST .. tapeCopyIds.LAST LOOP
    BEGIN
      SELECT count(id) INTO nbStream FROM Stream
       WHERE Stream.tapepool = tapePoolIds(i);
      IF nbStream <> 0 THEN
        -- we have at least a stream for that tapepool
        SELECT id INTO unused
          FROM TapeCopy
         WHERE Status in (2,7) AND id = tapeCopyIds(i) FOR UPDATE;
        -- let's attach it to the different streams
        FOR streamId IN (SELECT id FROM Stream WHERE Stream.tapepool = tapePoolIds(i)) LOOP
          UPDATE TapeCopy SET Status = 2 WHERE Status = 7 AND id = tapeCopyIds(i);
          DECLARE CONSTRAINT_VIOLATED EXCEPTION;
          PRAGMA EXCEPTION_INIT (CONSTRAINT_VIOLATED, -1);
          BEGIN
            INSERT INTO stream2tapecopy (parent ,child) VALUES (streamId.id, tapeCopyIds(i));
          EXCEPTION WHEN CONSTRAINT_VIOLATED THEN
            -- if the stream does not exist anymore
            UPDATE tapecopy SET status = 7 WHERE id = tapeCopyIds(i);
            -- it might also be that the tapecopy does not exist anymore
          END;
        END LOOP; -- stream loop
      END IF;
    EXCEPTION WHEN NO_DATA_FOUND THEN
      -- Go on the tapecopy has been resurrected or migrated
      NULL;
    END;
    counter := counter + 1;
    IF counter = 100 THEN
      counter := 0;
      COMMIT;
    END IF;
  END LOOP; -- loop tapecopies

  -- resurrect the one never attached
  FORALL i IN tapeCopyIds.FIRST .. tapeCopyIds.LAST
    UPDATE TapeCopy SET Status = 1 WHERE id = tapeCopyIds(i) AND Status = 7;
  COMMIT;
END;
/

/* start choosen stream */
CREATE OR REPLACE PROCEDURE startChosenStreams
        (streamIds IN castor."cnumList", initSize IN NUMBER) AS
BEGIN
  FORALL i IN streamIds.FIRST .. streamIds.LAST
    UPDATE Stream
       SET status = 0, -- PENDING
           -- initialSize overwritten to initSize only if it is 0
           initialSizeToTransfer = decode(initialSizeToTransfer, 0, initSize, initialSizeToTransfer)
     WHERE Stream.status = 7 -- WAITPOLICY
       AND id = streamIds(i);
  COMMIT;
END;
/

/* stop chosen stream */
CREATE OR REPLACE PROCEDURE stopChosenStreams
        (streamIds IN castor."cnumList") AS
  nbTc NUMBER;
BEGIN
  FOR i IN streamIds.FIRST .. streamIds.LAST LOOP
    SELECT count(*) INTO nbTc FROM stream2tapecopy WHERE parent = streamIds(i);
    IF nbTc = 0 THEN
      DELETE FROM Stream WHERE id = streamIds(i);
    ELSE
      UPDATE Stream
         SET status = 0 -- PENDING
       WHERE Stream.status = 7 -- WAITPOLICY
         AND id = streamIds(i);
    END IF;
    COMMIT;
  END LOOP;
END;
/

/* resurrect Candidates */
CREATE OR REPLACE PROCEDURE resurrectCandidates
(migrationCandidates IN castor."cnumList") -- all candidate before applying the policy
AS
  unused "numList";
BEGIN
  FORALL i IN migrationCandidates.FIRST .. migrationCandidates.LAST
    UPDATE TapeCopy SET Status = 1 WHERE Status = 7 AND id = migrationCandidates(i);
  COMMIT;
END;
/

/* invalidate tape copies */
CREATE OR REPLACE PROCEDURE invalidateTapeCopies
(tapecopyIds IN castor."cnumList") -- tapecopies not in the nameserver
AS
BEGIN
  FORALL i IN tapecopyIds.FIRST .. tapecopyIds.LAST
    UPDATE TapeCopy SET status = 6 WHERE id = tapecopyIds(i) AND status = 7;
  COMMIT;
END;
/

/** Functions for the RecHandlerDaemon **/

/* Get input for python recall policy */
CREATE OR REPLACE PROCEDURE inputForRecallPolicy(dbInfo OUT castor.DbRecallInfo_Cur) AS
  svcId NUMBER;
BEGIN
  OPEN dbInfo FOR
    SELECT tape.id, tape.vid, count(distinct segment.id), sum(castorfile.filesize),
           gettime() - min(segment.creationtime), max(Segment.priority)
      FROM TapeCopy, CastorFile, Segment, Tape
     WHERE Tape.id = Segment.tape(+)
       AND TapeCopy.id(+) = Segment.copy
       AND CastorFile.id(+) = TapeCopy.castorfile
       AND Tape.status IN (1, 2, 8)  -- PENDING, WAITDRIVE, WAITPOLICY
       AND Segment.status = 0  -- SEGMENT_UNPROCESSED
     GROUP BY Tape.id, Tape.vid
     HAVING count(distinct segment.id) > 0;
END;
/

/* resurrect tapes */
CREATE OR REPLACE PROCEDURE resurrectTapes
(tapeIds IN castor."cnumList")
AS
BEGIN
  FORALL i IN tapeIds.FIRST .. tapeIds.LAST
    UPDATE Tape SET status = 1 WHERE status = 8 AND id = tapeIds(i);
  COMMIT;
END;
/
/*******************************************************************
 *
 * @(#)RCSfile: oracleGC.sql,v  Revision: 1.679.2.1  Date: 2008/12/03 16:57:34  Author: itglp 
 *
 * PL/SQL code for stager cleanup and garbage collecting
 *
 * @author Castor Dev team, castor-dev@cern.ch
 *******************************************************************/

/* PL/SQL declaration for the castorGC package */
CREATE OR REPLACE PACKAGE castorGC AS
  TYPE SelectFiles2DeleteLine IS RECORD (
        path VARCHAR2(2048),
        id NUMBER,
        fileId NUMBER,
        nsHost VARCHAR2(2048),
        lastAccessTime INTEGER,
        nbAccesses NUMBER,
        gcWeight NUMBER,
        gcTriggeredBy VARCHAR2(2048),
        svcClassName VARCHAR2(2048));
  TYPE SelectFiles2DeleteLine_Cur IS REF CURSOR RETURN SelectFiles2DeleteLine;
  TYPE JobLogEntry IS RECORD (
    fileid NUMBER,
    nshost VARCHAR2(2048),
    operation INTEGER);
  TYPE JobLogEntry_Cur IS REF CURSOR RETURN JobLogEntry;
  -- find out a gc function to be used from a given serviceClass
  FUNCTION getUserWeight(svcClassId NUMBER) RETURN VARCHAR2;
  FUNCTION getRecallWeight(svcClassId NUMBER) RETURN VARCHAR2;
  FUNCTION getCopyWeight(svcClassId NUMBER) RETURN VARCHAR2;
  FUNCTION getFirstAccessHook(svcClassId NUMBER) RETURN VARCHAR2;
  FUNCTION getAccessHook(svcClassId NUMBER) RETURN VARCHAR2;
  FUNCTION getUserSetGCWeight(svcClassId NUMBER) RETURN VARCHAR2;
  -- compute gcWeight from size
  FUNCTION size2GCWeight(s NUMBER) RETURN NUMBER;
  -- Default gc policy
  FUNCTION sizeRelatedUserWeight(fileSize NUMBER, DiskCopyStatus NUMBER) RETURN NUMBER;
  FUNCTION sizeRelatedRecallWeight(fileSize NUMBER) RETURN NUMBER;
  FUNCTION sizeRelatedCopyWeight(fileSize NUMBER, DiskCopyStatus NUMBER, sourceWeight NUMBER) RETURN NUMBER;
  FUNCTION dayBonusFirstAccessHook(oldGcWeight NUMBER, creationTime NUMBER) RETURN NUMBER;
  FUNCTION halfHourBonusAccessHook(oldGcWeight NUMBER, creationTime NUMBER, nbAccesses NUMBER) RETURN NUMBER;
  FUNCTION cappedUserSetGCWeight(oldGcWeight NUMBER, userDelta NUMBER) RETURN NUMBER;
  -- FIFO gc policy
  FUNCTION creationTimeUserWeight(fileSize NUMBER, DiskCopyStatus NUMBER) RETURN NUMBER;
  FUNCTION creationTimeRecallWeight(fileSize NUMBER) RETURN NUMBER;
  FUNCTION creationTimeCopyWeight(fileSize NUMBER, DiskCopyStatus NUMBER, sourceWeight NUMBER) RETURN NUMBER;
  -- LRU gc policy
  FUNCTION LRUFirstAccessHook(oldGcWeight NUMBER, creationTime NUMBER) RETURN NUMBER;
  FUNCTION LRUAccessHook(oldGcWeight NUMBER, creationTime NUMBER, nbAccesses NUMBER) RETURN NUMBER;
END castorGC;
/

CREATE OR REPLACE PACKAGE BODY castorGC AS

  FUNCTION getUserWeight(svcClassId NUMBER) RETURN VARCHAR2 AS
    ret VARCHAR2(2048);
  BEGIN
    SELECT userWeight INTO ret
      FROM SvcClass, GcPolicy
     WHERE SvcClass.id = svcClassId
       AND SvcClass.gcPolicy = GcPolicy.name;
    RETURN ret;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- we did not get any policy, let's go for the default
    SELECT userWeight INTO ret
      FROM GcPolicy
     WHERE GcPolicy.name = 'default';
    RETURN ret;
  END;

  FUNCTION getRecallWeight(svcClassId NUMBER) RETURN VARCHAR2 AS
    ret VARCHAR2(2048);
  BEGIN
    SELECT recallWeight INTO ret
      FROM SvcClass, GcPolicy
     WHERE SvcClass.id = svcClassId
       AND SvcClass.gcPolicy = GcPolicy.name;
    RETURN ret;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- we did not get any policy, let's go for the default
    SELECT recallWeight INTO ret
      FROM GcPolicy
     WHERE GcPolicy.name = 'default';
    RETURN ret;
  END;

  FUNCTION getCopyWeight(svcClassId NUMBER) RETURN VARCHAR2 AS
    ret VARCHAR2(2048);
  BEGIN
    SELECT copyWeight INTO ret
      FROM SvcClass, GcPolicy
     WHERE SvcClass.id = svcClassId
       AND SvcClass.gcPolicy = GcPolicy.name;
    RETURN ret;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    -- we did not get any policy, let's go for the default
    SELECT copyWeight INTO ret
      FROM GcPolicy
     WHERE GcPolicy.name = 'default';
    RETURN ret;
  END;

  FUNCTION getFirstAccessHook(svcClassId NUMBER) RETURN VARCHAR2 AS
    ret VARCHAR2(2048);
  BEGIN
    SELECT firstAccessHook INTO ret
      FROM SvcClass, GcPolicy
     WHERE SvcClass.id = svcClassId
       AND SvcClass.gcPolicy = GcPolicy.name;
    RETURN ret;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    RETURN NULL;
  END;

  FUNCTION getAccessHook(svcClassId NUMBER) RETURN VARCHAR2 AS
    ret VARCHAR2(2048);
  BEGIN
    SELECT accessHook INTO ret
      FROM SvcClass, GcPolicy
     WHERE SvcClass.id = svcClassId
       AND SvcClass.gcPolicy = GcPolicy.name;
    RETURN ret;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    RETURN NULL;
  END;

  FUNCTION getUserSetGCWeight(svcClassId NUMBER) RETURN VARCHAR2 AS
    ret VARCHAR2(2048);
  BEGIN
    SELECT userSetGCWeight INTO ret
      FROM SvcClass, GcPolicy
     WHERE SvcClass.id = svcClassId
       AND SvcClass.gcPolicy = GcPolicy.name;
    RETURN ret;
  EXCEPTION WHEN NO_DATA_FOUND THEN
    RETURN NULL;
  END;

  FUNCTION size2GCWeight(s NUMBER) RETURN NUMBER IS
  BEGIN
    IF s < 1073741824 THEN
      RETURN 1073741824/(s+1)*86400 + getTime();  -- 1GB/filesize (days) + current time as lastAccessTime
    ELSE
      RETURN 86400 + getTime();  -- the value for 1G file. We do not make any difference for big files and privilege FIFO
    END IF;
  END;

  FUNCTION sizeRelatedUserWeight(fileSize NUMBER, DiskCopyStatus NUMBER) RETURN NUMBER AS
  BEGIN
    RETURN size2GCWeight(fileSize);
  END;

  FUNCTION sizeRelatedRecallWeight(fileSize NUMBER) RETURN NUMBER AS
  BEGIN
    RETURN size2GCWeight(fileSize);
  END;

  FUNCTION sizeRelatedCopyWeight(fileSize NUMBER, DiskCopyStatus NUMBER, sourceWeight NUMBER) RETURN NUMBER AS
  BEGIN
    RETURN size2GCWeight(fileSize);
  END;

  FUNCTION dayBonusFirstAccessHook(oldGcWeight NUMBER, creationTime NUMBER) RETURN NUMBER AS
  BEGIN
    RETURN oldGcWeight - 86400;
  END;

  FUNCTION halfHourBonusAccessHook(oldGcWeight NUMBER, creationTime NUMBER, nbAccesses NUMBER) RETURN NUMBER AS
  BEGIN
    RETURN oldGcWeight + 1800;
  END;

  FUNCTION cappedUserSetGCWeight(oldGcWeight NUMBER, userDelta NUMBER) RETURN NUMBER AS
  BEGIN
    IF userDelta >= 18000 THEN -- 5h max
      RETURN oldGcWeight + 18000;
    ELSE
      RETURN oldGcWeight + userDelta;
    END IF;
  END;

  -- FIFO gc policy
  FUNCTION creationTimeUserWeight(fileSize NUMBER, DiskCopyStatus NUMBER) RETURN NUMBER AS
  BEGIN
    RETURN getTime();
  END;

  FUNCTION creationTimeRecallWeight(fileSize NUMBER) RETURN NUMBER AS
  BEGIN
    RETURN getTime();
  END;

  FUNCTION creationTimeCopyWeight(fileSize NUMBER, DiskCopyStatus NUMBER, sourceWeight NUMBER) RETURN NUMBER AS
  BEGIN
    RETURN getTime();
  END;

  -- LRU gc policy
  FUNCTION LRUFirstAccessHook(oldGcWeight NUMBER, creationTime NUMBER) RETURN NUMBER AS
  BEGIN
    RETURN getTime();
  END;

  FUNCTION LRUAccessHook(oldGcWeight NUMBER, creationTime NUMBER, nbAccesses NUMBER) RETURN NUMBER AS
  BEGIN
    RETURN getTime();
  END;

END castorGC;
/

/* PL/SQL method implementing selectFiles2Delete
   This is the standard garbage collector: it sorts STAGED
   diskcopies by gcWeight and selects them for deletion up to
   the desired free space watermark */
CREATE OR REPLACE
PROCEDURE selectFiles2Delete(diskServerName IN VARCHAR2,
                             files OUT castorGC.SelectFiles2DeleteLine_Cur) AS
  dcIds "numList";
  freed INTEGER;
  deltaFree INTEGER;
  toBeFreed INTEGER;
  dontGC INTEGER;
  totalCount INTEGER;
BEGIN
  -- First of all, check if we are in a Disk1 pool
  dontGC := 0;
  FOR sc IN (SELECT disk1Behavior
               FROM SvcClass, DiskPool2SvcClass D2S, DiskServer, FileSystem
              WHERE SvcClass.id = D2S.child
                AND D2S.parent = FileSystem.diskPool
                AND FileSystem.diskServer = DiskServer.id
                AND DiskServer.name = diskServerName) LOOP
    -- If any of the service classes to which we belong (normally a single one)
    -- say this is Disk1, we don't GC STAGED files.
    IF sc.disk1Behavior = 1 THEN
      dontGC := 1;
      EXIT;
    END IF;
  END LOOP;

  -- Loop on all concerned fileSystems in a random order.
  totalCount := 0;
  FOR fs IN (SELECT FileSystem.id
               FROM FileSystem, DiskServer
              WHERE FileSystem.diskServer = DiskServer.id
                AND DiskServer.name = diskServerName
             ORDER BY dbms_random.value) LOOP

    -- Count the number of diskcopies on this filesystem that are in a
    -- BEINGDELETED state. These need to be reselected in any case.
    freed := 0;
    SELECT totalCount + count(*), nvl(sum(DiskCopy.diskCopySize), 0)
      INTO totalCount, freed
      FROM DiskCopy, FileSystem, DiskServer
     WHERE DiskCopy.fileSystem = filesystem.id
       AND decode(DiskCopy.status, 9, DiskCopy.status, NULL) = 9 -- BEINGDELETED
       AND FileSystem.diskServer = DiskServer.id
       AND FileSystem.id = fs.id
       AND DiskServer.name = diskservername;

    -- Process diskcopies that are in an INVALID state.
    UPDATE DiskCopy
       SET status = 9, -- BEINGDELETED
           gcType = decode(gcType, NULL, 1, gcType) -- USER
     WHERE fileSystem = fs.id
       AND status = 7  -- INVALID
       AND NOT EXISTS
        (SELECT 'x' FROM SubRequest
          WHERE SubRequest.diskcopy = DiskCopy.id
            AND SubRequest.status IN (4, 5, 6, 12, 13, 14)) -- being processed (WAIT*, READY, *SCHED)
       AND rownum <= 10000 - totalCount
    RETURNING id BULK COLLECT INTO dcIds;
    COMMIT;

    -- If we have more than 10,000 files to GC, exit the loop. There is no point
    -- processing more as the maximum sent back to the client in one call is
    -- 10,000. This protects the garbage collector from being overwhelmed with
    -- requests and reduces the stager DB load. Furthermore, if too much data is
    -- sent back to the client, the transfer time between the stager and client
    -- becomes very long and the message may timeout or may not even fit in the
    -- clients receive buffer!!!!
    totalCount := totalCount + dcIds.COUNT();
    EXIT WHEN totalCount >= 10000;

    -- Continue processing but with STAGED files
    IF dontGC = 0 THEN
      -- Calculate the amount of space that would be freed on the filesystem
      -- if the files selected above were to be deleted.
      IF dcIds.COUNT > 0 THEN
        SELECT freed + sum(diskCopySize) INTO freed
          FROM DiskCopy
         WHERE DiskCopy.id IN
             (SELECT /*+ CARDINALITY(fsidTable 5) */ *
                FROM TABLE(dcIds) dcidTable);
      END IF;
      -- Get the amount of space to be liberated
      SELECT decode(sign(maxFreeSpace * totalSize - free), -1, 0, maxFreeSpace * totalSize - free)
        INTO toBeFreed
        FROM FileSystem
       WHERE id = fs.id;
      -- If space is still required even after removal of INVALID files, consider
      -- removing STAGED files until we are below the free space watermark
      IF freed < toBeFreed THEN
        -- Loop on file deletions. Select only enough files until we reach the
        -- 10000 return limit.
        FOR dc IN (SELECT id, castorFile FROM (
                     SELECT id, castorFile FROM DiskCopy
                      WHERE fileSystem = fs.id
                        AND status = 0 -- STAGED
                        AND NOT EXISTS (
                            SELECT 'x' FROM SubRequest
                             WHERE SubRequest.diskcopy = DiskCopy.id
                               AND SubRequest.status IN (4, 5, 6, 12, 13, 14)) -- being processed (WAIT*, READY, *SCHED)
                        ORDER BY gcWeight ASC)
                   WHERE rownum <= 10000 - totalCount) LOOP
          -- Mark the DiskCopy
          UPDATE DiskCopy
             SET status = 9, -- BEINGDELETED
                 gcType = 0  -- AUTO
           WHERE id = dc.id RETURNING diskCopySize INTO deltaFree;
          totalCount := totalCount + 1;
          -- Update freed space
          freed := freed + deltaFree;
          -- Shall we continue ?
          IF toBeFreed <= freed THEN
            EXIT;
          END IF;
        END LOOP;
      END IF;
      COMMIT;
    END IF;
    -- We have enough files to exit the loop ?
    EXIT WHEN totalCount >= 10000;
  END LOOP;

  -- Now select all the BEINGDELETED diskcopies in this diskserver for the gcDaemon
  OPEN files FOR
    SELECT /*+ INDEX(CastorFile PK_CastorFile_ID) */ FileSystem.mountPoint || DiskCopy.path,
           DiskCopy.id,
           Castorfile.fileid, Castorfile.nshost,
           DiskCopy.lastAccessTime, DiskCopy.nbCopyAccesses, DiskCopy.gcWeight,
           CASE WHEN DiskCopy.gcType = 0 THEN 'Automatic'
                WHEN DiskCopy.gcType = 1 THEN 'User Requested'
                WHEN DiskCopy.gcType = 2 THEN 'Too many replicas'
                ELSE 'Unknown' END,
           getSvcClassList(FileSystem.id)
      FROM CastorFile, DiskCopy, FileSystem, DiskServer
     WHERE decode(DiskCopy.status, 9, DiskCopy.status, NULL) = 9 -- BEINGDELETED
       AND DiskCopy.castorfile = CastorFile.id
       AND DiskCopy.fileSystem = FileSystem.id
       AND FileSystem.diskServer = DiskServer.id
       AND DiskServer.name = diskServerName
       AND rownum <= 10000;
END;
/


/*
 * PL/SQL method implementing filesDeleted
 * Note that we don't increase the freespace of the fileSystem.
 * This is done by the monitoring daemon, that knows the
 * exact amount of free space.
 * dcIds gives the list of diskcopies to delete.
 * fileIds returns the list of castor files to be removed
 * from the name server
 */
CREATE OR REPLACE PROCEDURE filesDeletedProc
(dcIds IN castor."cnumList",
 fileIds OUT castor.FileList_Cur) AS
BEGIN
  IF dcIds.COUNT > 0 THEN
    -- list the castorfiles to be cleaned up afterwards
    FORALL i IN dcIds.FIRST .. dcIds.LAST
      INSERT INTO filesDeletedProcHelper VALUES
           ((SELECT castorFile FROM DiskCopy
              WHERE id = dcIds(i)));
    -- Loop over the deleted files; first use FORALL for bulk operation
    FORALL i IN dcIds.FIRST .. dcIds.LAST
      DELETE FROM Id2Type WHERE id = dcIds(i);
    FORALL i IN dcIds.FIRST .. dcIds.LAST
      DELETE FROM DiskCopy WHERE id = dcIds(i);
    -- then use a normal loop to clean castorFiles
    FOR cf IN (SELECT DISTINCT(cfId) FROM filesDeletedProcHelper) LOOP
      deleteCastorFile(cf.cfId);
    END LOOP;
  END IF;
  OPEN fileIds FOR SELECT * FROM FilesDeletedProcOutput;
END;
/

/*
 * PL/SQL method removing completely a file from the stager
 * including all its related objects (diskcopy, tapecopy, segments...)
 * The given files are supposed to already have been removed from the
 * name server
 * Note that we don't increase the freespace of the fileSystem.
 * This is done by the monitoring daemon, that knows the
 * exact amount of free space.
 * cfIds gives the list of files to delete.
 */
CREATE OR REPLACE PROCEDURE filesClearedProc(cfIds IN castor."cnumList") AS
  dcIds "numList";
BEGIN
  IF cfIds.COUNT <= 0 THEN
    RETURN;
  END IF;
  -- first convert the input array into a temporary table
  FORALL i IN cfIds.FIRST..cfIds.LAST
    INSERT INTO FilesClearedProcHelper (cfId) VALUES (cfIds(i));
  -- delete the DiskCopies in bulk
  SELECT id BULK COLLECT INTO dcIds
    FROM Diskcopy WHERE castorfile IN (SELECT cfId FROM FilesClearedProcHelper);
  FORALL i IN dcIds.FIRST .. dcIds.LAST
    DELETE FROM Id2Type WHERE id = dcIds(i);
  FORALL i IN dcIds.FIRST .. dcIds.LAST
    DELETE FROM DiskCopy WHERE id = dcIds(i);
  -- put SubRequests into FAILED (for non FINISHED ones)
  UPDATE SubRequest
     SET status = 7,  -- FAILED
         errorCode = 16,  -- EBUSY
         errorMessage = 'Request canceled by another user request'
   WHERE castorfile IN (SELECT cfId FROM FilesClearedProcHelper)
     AND status IN (4, 5, 6, 12, 13, 14);  -- being processed (WAIT*, READY, *SCHED)
  -- Loop over the deleted files for cleaning the tape copies
  FOR i in cfIds.FIRST .. cfIds.LAST LOOP
    deleteTapeCopies(cfIds(i));
  END LOOP;
  -- Finally drop castorFiles in bulk
  FORALL i IN cfIds.FIRST .. cfIds.LAST
    DELETE FROM Id2Type WHERE id = cfIds(i);
  FORALL i IN cfIds.FIRST .. cfIds.LAST
    DELETE FROM CastorFile WHERE id = cfIds(i);
END;
/

/* PL/SQL method implementing filesDeletionFailedProc */
CREATE OR REPLACE PROCEDURE filesDeletionFailedProc
(dcIds IN castor."cnumList") AS
  cfId NUMBER;
BEGIN
  IF dcIds.COUNT > 0 THEN
    -- Loop over the files
    FORALL i IN dcIds.FIRST .. dcIds.LAST
      UPDATE DiskCopy SET status = 4 -- FAILED
       WHERE id = dcIds(i);
  END IF;
END;
/



/* PL/SQL method implementing nsFilesDeletedProc */
CREATE OR REPLACE PROCEDURE nsFilesDeletedProc
(nh IN VARCHAR2,
 fileIds IN castor."cnumList",
 orphans OUT castor.IdRecord_Cur) AS
  unused NUMBER;
  nsHostName VARCHAR2(2048);
BEGIN
  IF fileIds.COUNT <= 0 THEN
    RETURN;
  END IF;
  -- Get the stager/nsHost configuration option
  nsHostName := getConfigOption('stager', 'nsHost', nh);
  -- Loop over the deleted files and split the orphan ones
  -- from the normal ones
  FOR fid in fileIds.FIRST .. fileIds.LAST LOOP
    BEGIN
      SELECT id INTO unused FROM CastorFile
       WHERE fileid = fileIds(fid) AND nsHost = nsHostName;
      stageForcedRm(fileIds(fid), nsHostName, unused);
    EXCEPTION WHEN NO_DATA_FOUND THEN
      -- this file was dropped from nameServer AND stager
      -- and still exists on disk. We put it into the list
      -- of orphan fileids to return
      INSERT INTO NsFilesDeletedOrphans VALUES(fileIds(fid));
    END;
  END LOOP;
  -- return orphan ones
  OPEN orphans FOR SELECT * FROM NsFilesDeletedOrphans;
END;
/


/* PL/SQL method implementing stgFilesDeletedProc */
CREATE OR REPLACE PROCEDURE stgFilesDeletedProc
(dcIds IN castor."cnumList",
 stgOrphans OUT castor.IdRecord_Cur) AS
  unused NUMBER;
BEGIN
  -- Nothing to do
  IF dcIds.COUNT <= 0 THEN
    RETURN;
  END IF;
  -- Insert diskcopy ids into a temporary table
  FORALL i IN dcIds.FIRST..dcIds.LAST
   INSERT INTO StgFilesDeletedOrphans VALUES(dcIds(i));
  -- Return a list of diskcopy ids which no longer exist
  OPEN stgOrphans FOR
    SELECT diskCopyId FROM StgFilesDeletedOrphans
     WHERE NOT EXISTS (
        SELECT 'x' FROM DiskCopy
         WHERE id = diskCopyId);
END;
/


/** Cleanup job **/

/* A little generic method to delete efficiently */
CREATE OR REPLACE PROCEDURE bulkDelete(sel IN VARCHAR2, tab IN VARCHAR2) AS
BEGIN
  EXECUTE IMMEDIATE
  'DECLARE
    CURSOR s IS '||sel||'
    ids "numList";
  BEGIN
    OPEN s;
    LOOP
      FETCH s BULK COLLECT INTO ids LIMIT 10000;
      EXIT WHEN s%NOTFOUND;
      FORALL i IN ids.FIRST..ids.LAST
        DELETE FROM Id2Type WHERE id = ids(i);
      FORALL i IN ids.FIRST..ids.LAST
        DELETE FROM '||tab||' WHERE id = ids(i);
      COMMIT;
    END LOOP;
    CLOSE s;
  END;';
END;
/

/* A generic method to delete requests of a given type */
CREATE OR REPLACE Procedure bulkDeleteRequests(reqType IN VARCHAR) AS
BEGIN
  -- first the clients
  bulkDelete('SELECT client FROM '|| reqType ||' R WHERE
    NOT EXISTS (SELECT ''x'' FROM SubRequest WHERE request = R.id);',
    'Client');
  -- then the requests: they could be merged to make it more efficient
  bulkDelete('SELECT id FROM '|| reqType ||' R WHERE
    NOT EXISTS (SELECT ''x'' FROM SubRequest WHERE request = R.id);',
    reqType);
  COMMIT;
END;
/

/* Search and delete old archived/failed subrequests and their requests */
CREATE OR REPLACE PROCEDURE deleteTerminatedRequests AS
  timeOut INTEGER;
  rate INTEGER;
  srIds "numList";
BEGIN
  -- select requested timeout from configuration table
  timeout := 3600*TO_NUMBER(getConfigOption('cleaning', 'terminatedRequestsTimeout', '120'));
  -- get a rough estimate of the current request processing rate
  SELECT count(*) INTO rate
    FROM SubRequest
   WHERE status IN (9, 11)  -- FAILED_FINISHED, ARCHIVED
     AND lastModificationTime > getTime() - 1800;
  IF rate > 0 AND (500000 / rate * 1800) < timeOut THEN
    timeOut := 500000 / rate * 1800;  -- keep 500k requests max
  END IF;

  -- now delete the SubRequests. Here we don't use bulkDelete
  -- to be able to pass timeout as a bind variable and make it sharable
  -- original call was:
  -- bulkDelete('SELECT id FROM SubRequest WHERE status IN (9, 11)
  --   AND lastModificationTime < getTime() - '|| timeOut ||';',
  --   'SubRequest');
  DECLARE
    CURSOR s IS SELECT id FROM SubRequest 
     WHERE status IN (9, 11) 
       AND lastModificationTime < getTime() - timeOut;
    CURSOR t IS SELECT UNIQUE castorFile FROM SubRequest 
     WHERE status IN (9, 11)
       AND lastModificationTime < getTime() - timeOut;
    ids "numList";
  BEGIN
    OPEN t;
    LOOP
      FETCH t BULK COLLECT INTO ids LIMIT 1000;
      EXIT WHEN t%NOTFOUND;
      FOR i IN ids.FIRST..ids.LAST LOOP
        deleteCastorFile(ids(i));
      END LOOP;
      COMMIT;
    END LOOP;
    CLOSE t;
    OPEN s;
    LOOP
      FETCH s BULK COLLECT INTO ids LIMIT 10000;
      EXIT WHEN s%NOTFOUND;
      FORALL i IN ids.FIRST..ids.LAST
        DELETE FROM Id2Type WHERE id = ids(i); 
      FORALL i IN ids.FIRST..ids.LAST
        DELETE FROM SubRequest WHERE id = ids(i);
      COMMIT;
    END LOOP;
    CLOSE s;
  END;

  -- and then related Requests + Clients
    ---- Get ----
  bulkDeleteRequests('StageGetRequest');
    ---- Put ----
  bulkDeleteRequests('StagePutRequest');
    ---- Update ----
  bulkDeleteRequests('StageUpdateRequest');
    ---- PrepareToGet -----
  bulkDeleteRequests('StagePrepareToGetRequest');
    ---- PrepareToPut ----
  bulkDeleteRequests('StagePrepareToPutRequest');
    ---- PrepareToUpdate ----
  bulkDeleteRequests('StagePrepareToUpdateRequest');
    ---- PutDone ----
  bulkDeleteRequests('StagePutDoneRequest');
    ---- Rm ----
  bulkDeleteRequests('StageRmRequest');
    ---- Repack ----
  bulkDeleteRequests('StageRepackRequest');
    ---- DiskCopyReplica ----
  bulkDeleteRequests('StageDiskCopyReplicaRequest');
END;
/


/* Search and delete old diskCopies in bad states */
CREATE OR REPLACE PROCEDURE deleteFailedDiskCopies(timeOut IN NUMBER) AS
  dcIds "numList";
  cfIds "numList";
  ct INTEGER;
BEGIN
  -- select INVALID diskcopies without filesystem (they can exist after a
  -- stageRm that came before the diskcopy had been created on disk) and ALL FAILED
  -- ones (coming from failed recalls or failed removals from the gcDaemon).
  -- Note that we don't select INVALID diskcopies from recreation of files
  -- because they are taken by the standard GC as they physically exist on disk.
  SELECT id
    BULK COLLECT INTO dcIds
    FROM DiskCopy
   WHERE (status = 4 OR (status = 7 AND fileSystem = 0))
     AND creationTime < getTime() - timeOut;
  SELECT /*+ INDEX(DC PK_DiskCopy_ID) */ UNIQUE castorFile
    BULK COLLECT INTO cfIds
    FROM DiskCopy DC
   WHERE id IN (SELECT /*+ CARDINALITY(ids 5) */ * FROM TABLE(dcIds) ids);
  -- drop the DiskCopies
  FORALL i IN dcIds.FIRST..dcIds.LAST
    DELETE FROM Id2Type WHERE id = dcIds(i);
  FORALL i IN dcIds.FIRST..dcIds.LAST
    DELETE FROM DiskCopy WHERE id = dcIds(i);
  COMMIT;
  -- maybe delete the CastorFiles if nothing is left for them
  IF cfIds.COUNT > 0 THEN
    ct := 0;
    FOR c IN cfIds.FIRST..cfIds.LAST LOOP
      deleteCastorFile(cfIds(c));
      ct := ct + 1;
      IF ct = 1000 THEN
        -- commit every 1000, don't pause
        ct := 0;
        COMMIT;
      END IF;
    END LOOP;
    COMMIT;
  END IF;
END;
/

/* Deal with old diskCopies in STAGEOUT */
CREATE OR REPLACE PROCEDURE deleteOutOfDateStageOutDCs(timeOut IN NUMBER) AS
BEGIN
  -- Deal with old DiskCopies in STAGEOUT/WAITFS. The rule is to drop
  -- the ones with 0 fileSize and issue a putDone for the others
  FOR f IN (SELECT c.filesize, c.id, c.fileId, c.nsHost, d.fileSystem, d.id AS dcId, d.status AS dcStatus
               FROM DiskCopy d, Castorfile c
              WHERE c.id = d.castorFile
                AND d.creationTime < getTime() - timeOut
                AND d.status IN (5, 6, 11) -- WAITFS, STAGEOUT, WAITFS_SCHEDULING
                AND NOT EXISTS (
                  SELECT 'x'
                    FROM SubRequest, Id2Type
                   WHERE castorFile = c.id
                     AND SubRequest.request = Id2Type.id
                     AND status IN (0, 1, 2, 3, 5, 6, 13, 14) -- all active
                     AND type NOT IN (37, 38))) LOOP -- ignore PrepareToPut, PrepareToUpdate
    IF (0 = f.fileSize) OR (f.dcStatus <> 6) THEN
      -- here we invalidate the diskcopy and let the GC run
      UPDATE DiskCopy SET status = 7 WHERE id = f.dcid;
      INSERT INTO CleanupJobLog VALUES (f.fileId, f.nsHost, 0);
    ELSE
      -- here we issue a putDone
      -- context 2 : real putDone. Missing PPut requests are ignored.
      -- svcClass 0 since we don't know it. This will trigger a
      -- default behavior in the putDoneFunc
      putDoneFunc(f.id, f.fileSize, 2, 0);
      INSERT INTO CleanupJobLog VALUES (f.fileId, f.nsHost, 1);
    END IF;
  END LOOP;
  COMMIT;
END;
/


/* Deal with stuck recalls - this workaround should be dropped
   after rtcpclientd is reviewed */
CREATE OR REPLACE PROCEDURE restartStuckRecalls AS
BEGIN
  UPDATE Segment SET status = 0 WHERE status = 7 and tape IN
    (SELECT id from Tape WHERE tpmode = 0 AND status IN (0, 6) AND id IN
      (SELECT tape FROM Segment WHERE status = 7));
  UPDATE Tape SET status = 1 WHERE tpmode = 0 AND status IN (0, 6) AND id IN
    (SELECT tape FROM Segment WHERE status in (0, 7));
  COMMIT;
END;
/


/* Runs cleanup operations and a table shrink for maintenance purposes */
CREATE OR REPLACE PROCEDURE cleanup AS
  t INTEGER;
BEGIN
  -- First perform some cleanup of old stuff:
  -- for each, read relevant timeout from configuration table
  t := TO_NUMBER(getConfigOption('cleaning', 'outOfDateStageOutDCsTimeout', '72'));
  deleteOutOfDateStageOutDCs(t*3600);
  t := TO_NUMBER(getConfigOption('cleaning', 'failedDCsTimeout', '72'));
  deleteFailedDiskCopies(t*3600);

  -- Loop over all tables which support row movement and recover space from
  -- the object and all dependant objects. We deliberately ignore tables
  -- with function based indexes here as the 'shrink space' option is not
  -- supported.
  FOR t IN (SELECT table_name FROM user_tables
             WHERE row_movement = 'ENABLED'
               AND table_name NOT IN (
                 SELECT table_name FROM user_indexes
                  WHERE index_type LIKE 'FUNCTION-BASED%')
               AND temporary = 'N')
  LOOP
    EXECUTE IMMEDIATE 'ALTER TABLE '|| t.table_name ||' SHRINK SPACE CASCADE';
  END LOOP;
END;
/


/* PL/SQL method used by the stager to log what it has been done by the cleanup job */
CREATE OR REPLACE PROCEDURE dumpCleanupLogs(jobLog OUT castorGC.JobLogEntry_Cur) AS
  unused NUMBER;
BEGIN
  SELECT fileid INTO unused FROM CleanupJobLog WHERE ROWNUM < 2;
  -- if we got here, we have something in the log table, let's lock it and dump it
  LOCK TABLE CleanupJobLog IN EXCLUSIVE MODE;
  OPEN jobLog FOR
    SELECT * FROM CleanupJobLog;
EXCEPTION WHEN NO_DATA_FOUND THEN
  -- nothing to do
  NULL;
END;
/


/*
 * Database jobs
 */
BEGIN
  -- Remove database jobs before recreating them
  FOR j IN (SELECT job_name FROM user_scheduler_jobs
             WHERE job_name IN ('HOUSEKEEPINGJOB', 'CLEANUPJOB', 'BULKCHECKFSBACKINPRODJOB', 'RESTARTSTUCKRECALLSJOB'))
  LOOP
    DBMS_SCHEDULER.DROP_JOB(j.job_name, TRUE);
  END LOOP;

  -- Create a db job to be run every 20 minutes executing the deleteTerminatedRequests procedure
  DBMS_SCHEDULER.CREATE_JOB(
      JOB_NAME        => 'houseKeepingJob',
      JOB_TYPE        => 'PLSQL_BLOCK',
      JOB_ACTION      => 'BEGIN deleteTerminatedRequests(); END;',
      JOB_CLASS       => 'CASTOR_JOB_CLASS',
      START_DATE      => SYSDATE + 60/1440,
      REPEAT_INTERVAL => 'FREQ=MINUTELY; INTERVAL=20',
      ENABLED         => TRUE,
      COMMENTS        => 'Cleaning of terminated requests');

  -- Create a db job to be run twice a day executing the cleanup procedure
  DBMS_SCHEDULER.CREATE_JOB(
      JOB_NAME        => 'cleanupJob',
      JOB_TYPE        => 'PLSQL_BLOCK',
      JOB_ACTION      => 'BEGIN cleanup(); END;',
      JOB_CLASS       => 'CASTOR_JOB_CLASS',
      START_DATE      => SYSDATE + 60/1440,
      REPEAT_INTERVAL => 'FREQ=HOURLY; INTERVAL=12',
      ENABLED         => TRUE,
      COMMENTS        => 'Database maintenance');

  -- Create a db job to be run every 5 minutes executing the bulkCheckFSBackInProd procedure
  DBMS_SCHEDULER.CREATE_JOB(
      JOB_NAME        => 'bulkCheckFSBackInProdJob',
      JOB_TYPE        => 'PLSQL_BLOCK',
      JOB_ACTION      => 'BEGIN bulkCheckFSBackInProd(); END;',
      JOB_CLASS       => 'CASTOR_JOB_CLASS',
      START_DATE      => SYSDATE + 60/1440,
      REPEAT_INTERVAL => 'FREQ=MINUTELY; INTERVAL=5',
      ENABLED         => TRUE,
      COMMENTS        => 'Bulk operation to processing filesystem state changes');
  
  -- Create a db job to be run every hour executing the restartStuckRecalls workaround procedure
  DBMS_SCHEDULER.CREATE_JOB(
      JOB_NAME        => 'restartStuckRecallsJob',
      JOB_TYPE        => 'PLSQL_BLOCK',
      JOB_ACTION      => 'BEGIN restartStuckRecalls(); END;',
      JOB_CLASS       => 'CASTOR_JOB_CLASS',
      START_DATE      => SYSDATE + 60/1440,
      REPEAT_INTERVAL => 'FREQ=MINUTELY; INTERVAL=60',
      ENABLED         => TRUE,
      COMMENTS        => 'Workaround to restart stuck recalls');
END;
/
/*******************************************************************
 *
 * @(#)RCSfile: oracleDebug.sql,v  Revision: 1.12  Date: 2008/11/06 18:12:49  Author: waldron 
 *
 * Some SQL code to ease support and debugging
 *
 * @author Castor Dev team, castor-dev@cern.ch
 *******************************************************************/

/* PL/SQL declaration for the castorDebug package */
CREATE OR REPLACE PACKAGE castorDebug AS
  TYPE DiskCopyDebug_typ IS RECORD (
    id INTEGER,
    diskPool VARCHAR2(2048),
    location VARCHAR2(2048),
    available CHAR(1),
    status NUMBER,
    creationtime DATE,
    gcWeight NUMBER);
  TYPE DiskCopyDebug IS TABLE OF DiskCopyDebug_typ;
  TYPE SubRequestDebug IS TABLE OF SubRequest%ROWTYPE;
  TYPE RequestDebug_typ IS RECORD (
    creationtime DATE,
    SubReqId NUMBER,
    SubReqParentId NUMBER,
    Status NUMBER,
    username VARCHAR2(2048),
    machine VARCHAR2(2048),
    svcClassName VARCHAR2(2048),
    ReqId NUMBER,
    ReqType VARCHAR2(20));
  TYPE RequestDebug IS TABLE OF RequestDebug_typ;
  TYPE TapeCopyDebug_typ IS RECORD (
    TCId NUMBER,
    TCStatus NUMBER,
    SegId NUMBER,
    SegStatus NUMBER,
    SegErrCode NUMBER,
    VID VARCHAR2(2048),
    tpMode NUMBER,
    TapeStatus NUMBER,
    nbStreams NUMBER,
    SegErr VARCHAR2(2048));
  TYPE TapeCopyDebug IS TABLE OF TapeCopyDebug_typ;
END;
/


/* Return the castor file id associated with the reference number */
CREATE OR REPLACE FUNCTION getCF(ref NUMBER) RETURN NUMBER AS
  t NUMBER;
  cfId NUMBER;
BEGIN
  SELECT type INTO t FROM id2Type WHERE id = ref;
  IF (t = 2) THEN -- CASTORFILE
    RETURN ref;
  ELSIF (t = 5) THEN -- DiskCopy
    SELECT castorFile INTO cfId FROM DiskCopy WHERE id = ref;
  ELSIF (t = 27) THEN -- SubRequest
    SELECT castorFile INTO cfId FROM SubRequest WHERE id = ref;
  ELSIF (t = 30) THEN -- TapeCopy
    SELECT castorFile INTO cfId FROM TapeCopy WHERE id = ref;
  ELSIF (t = 18) THEN -- Segment
    SELECT castorFile INTO cfId FROM TapeCopy, Segment WHERE Segment.id = ref AND TapeCopy.id = Segment.copy;
  END IF;
  RETURN cfId;
EXCEPTION WHEN NO_DATA_FOUND THEN -- fileid ?
  SELECT id INTO cfId FROM CastorFile WHERE fileId = ref;
  RETURN cfId;
END;
/


/* Get the diskcopys associated with the reference number */
CREATE OR REPLACE FUNCTION getDCs(ref number) RETURN castorDebug.DiskCopyDebug PIPELINED AS
BEGIN
  FOR d IN (SELECT DiskCopy.id,
                   DiskPool.name AS diskpool,
                   DiskServer.name || ':' || FileSystem.mountPoint || DiskCopy.path AS location,
                   decode(DiskServer.status, 2, 'N', decode(FileSystem.status, 2, 'N', 'Y')) AS available,
                   DiskCopy.status AS status,
                   to_date('01011970','ddmmyyyy') + 1/24/60/60 * creationtime AS creationtime,
                   DiskCopy.gcWeight AS gcweight
              FROM DiskCopy, FileSystem, DiskServer, DiskPool
             WHERE DiskCopy.fileSystem = FileSystem.id(+)
               AND FileSystem.diskServer = diskServer.id(+)
               AND DiskPool.id(+) = fileSystem.diskPool
               AND DiskCopy.castorfile = getCF(ref)) LOOP
     PIPE ROW(d);
  END LOOP;
END;
/


/* Get the tapecopys, segments and streams associated with the reference number */
CREATE OR REPLACE FUNCTION getTCs(ref number) RETURN castorDebug.TapeCopyDebug PIPELINED AS
BEGIN
  FOR t IN (SELECT TapeCopy.id AS TCId, TapeCopy.status AS TCStatus,
                   Segment.Id, Segment.status AS SegStatus, Segment.errorCode AS SegErrCode,
                   Tape.vid AS VID, Tape.tpMode AS tpMode, Tape.Status AS TapeStatus,
                   CASE WHEN Stream2TapeCopy.child IS NULL THEN 0 ELSE count(*) END AS nbStreams,
                   Segment.errMsgTxt AS SegErr
              FROM TapeCopy, Segment, Tape, Stream2TapeCopy
             WHERE TapeCopy.id = Segment.copy(+)
               AND Segment.tape = Tape.id(+)
               AND TapeCopy.castorfile = getCF(ref)
               AND Stream2TapeCopy.child(+) = TapeCopy.id
              GROUP BY TapeCopy.id, TapeCopy.status, Segment.id, Segment.status, Segment.errorCode,
                       Tape.vid, Tape.tpMode, Tape.Status, Segment.errMsgTxt, Stream2TapeCopy.child) LOOP
     PIPE ROW(t);
  END LOOP;
END;
/


/* Get the subrequests associated with the reference number. (By castorfile/diskcopy/
 * subrequest/tapecopy or fileid
 */
CREATE OR REPLACE FUNCTION getSRs(ref number) RETURN castorDebug.SubRequestDebug PIPELINED AS
BEGIN
  FOR d IN (SELECT * FROM SubRequest WHERE castorfile = getCF(ref)) LOOP
     PIPE ROW(d);
  END LOOP;
END;
/


/* Get the requests associated with the reference number. (By castorfile/diskcopy/
 * subrequest/tapecopy or fileid
 */
CREATE OR REPLACE FUNCTION getRs(ref number) RETURN castorDebug.RequestDebug PIPELINED AS
BEGIN
  FOR d IN (SELECT to_date('01011970','ddmmyyyy') + 1/24/60/60 * creationtime AS creationtime,
                   SubRequest.id AS SubReqId, SubRequest.parent AS SubReqParentId, SubRequest.Status,
                   username, machine, svcClassName, Request.id AS ReqId, Request.type AS ReqType
              FROM SubRequest,
                    (SELECT id, username, machine, svcClassName, 'Get' AS type FROM StageGetRequest UNION ALL
                     SELECT id, username, machine, svcClassName, 'PGet' AS type FROM StagePrepareToGetRequest UNION ALL
                     SELECT id, username, machine, svcClassName, 'Put' AS type FROM StagePutRequest UNION ALL
                     SELECT id, username, machine, svcClassName, 'PPut' AS type FROM StagePrepareToPutRequest UNION ALL
                     SELECT id, username, machine, svcClassName, 'Upd' AS type FROM StageUpdateRequest UNION ALL
                     SELECT id, username, machine, svcClassName, 'PUpd' AS type FROM StagePrepareToUpdateRequest UNION ALL
                     SELECT id, username, machine, svcClassName, 'Repack' AS type FROM StageRepackRequest UNION ALL
                     SELECT id, username, machine, svcClassName, 'GetNext' AS type FROM StageGetNextRequest UNION ALL
                     SELECT id, username, machine, svcClassName, 'UpdNext' AS type FROM StageUpdateNextRequest UNION ALL
                     SELECT id, username, machine, svcClassName, 'PutDone' AS type FROM StagePutDoneRequest UNION ALL
                     SELECT id, username, machine, svcClassName, 'DCRepl' AS type FROM StageDiskCopyReplicaRequest UNION ALL
                     SELECT id, username, machine, svcClassName, 'SetFileGCWeight' AS type FROM SetFileGCWeight) Request
             WHERE castorfile = getCF(ref)
               AND Request.id = SubRequest.request) LOOP
     PIPE ROW(d);
  END LOOP;
END;
/