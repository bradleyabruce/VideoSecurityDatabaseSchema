CREATE TABLE tCameras(
    CameraID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Name varchar(50) NOT NULL,
    InternalAddress varchar(16) NOT NULL,
    ExternalAddress varchar(16) NOT NULL,
    MacAddress varchar(50) NOT NULL,
    PortNumber int NOT NULL,
    CameraStatusID int NOT NULL,
    DirectoryPath varchar(100)
);

CREATE TABLE tServers(
    ServerID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Name varchar(50) NOT NULL,
    InternalAddress varchar(16) NOT NULL,
    ExternalAddress varchar(16) NOT NULL,
    MacAddress varchar(50) NOT NULL,
	PortNumber int NOT NULL,
	ServerStatusID int NOT NULL,
	DirectoryPath varchar(100)
);

CREATE TABLE tServerStatus(
    ServerStatusID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    ServerStatus varchar(35) NOT NULL
);

CREATE TABLE tCameraStatus(
    CameraStatusID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    CameraStatus varchar(35) NOT NULL
);

CREATE TABLE tCameraServer(
    CameraServerID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	ServerID int NOT NULL,
	CameraID int NOT NULL
);

CREATE TABLE tServerLog
(
	ServerLogID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	ServerID int NOT NULL,
	ServerStatusID int NOT NULL,
	ServerMessage varchar(255),
	LogDateTime DATETIME NOT NULL
);

CREATE TABLE tCameraLog
(
	CameraLogID int AUTO_INCREMENT NOT NULL PRIMARY KEY,
	CameraID int NOT NULL,
	CameraStatusID int NOT NULL,
	CameraMessage varchar(255),
	LogDateTime DATETIME NOT NULL
);