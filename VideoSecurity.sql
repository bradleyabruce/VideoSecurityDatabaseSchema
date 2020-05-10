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
    [InternalIP] [varchar](16) NOT NULL,
    [ExternalIP] [varchar](16) NOT NULL,
    [CameraName] [varchar](30) NOT NULL,
    [MacAddress] [varchar](50) NOT NULL,
    [CameraLocationID] [int] NOT NULL,
    [CameraStatusID] [int] NOT NULL
);

CREATE TABLE tCameraStates
(
	[CameraStateID] [int] IDENTITY(1,1),
	[CameraState] [varchar](50) NOT NULL,
);

CREATE TABLE tCameraLocations
(
	[CameraLocationID] [int] IDENTITY(1,1),
	[CameraLocation] [varchar](100) NOT NULL,
);