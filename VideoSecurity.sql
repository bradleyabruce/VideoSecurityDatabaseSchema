CREATE TABLE tUsers(
	[UserID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[EmailAddress] [varchar](100) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
    [IpAddress] [varchar](50) NOT NULL
);

CREATE TABLE tCameras(
    [CameraID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [InternalAddress] [varchar](16) NOT NULL,
    [ExternalAddress] [varchar](16) NOT NULL,
    [CameraName] [varchar](30) NOT NULL,
    [MacAddress] [varchar](50) NOT NULL,
    [CameraLocationID] [int] NOT NULL,
    [CameraStatusID] [int] NOT NULL
);

CREATE TABLE tServers(
    [ServerID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [InternalAddress] [varchar](16) NOT NULL,
    [ExternalAddress] [varchar](16) NOT NULL,
    [MacAddress] [varchar](50) NOT NULL,
	[Name] [varchar](20) NOT NULL,
	[PortNumber] [int] NOT NULL,
	[ServerStatusID] [int] NOT NULL,
	[DirectoryPath] [varchar](100)
);

CREATE TABLE tServerStatus(
    [ServerStatusID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
    [ServerStatus] [varchar](25) NOT NULL
);