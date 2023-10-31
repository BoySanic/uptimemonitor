create table Services (
    ServiceID int not null auto_increment,
    ServiceName varchar(50),
    ServiceImportanceID int,
    ServiceAddress varchar(50),
    ServicePort int,
    ServiceSystemdName varchar(50),
    ServiceLogonName varchar(50),
    ServicePubkey varchar(5000),
    ServiceUptimeCommand varchar(500),
    ServiceUpString varchar(100),
    PRIMARY KEY (ServiceID)
);
create table ServiceHistory (
    HistoryID int not null auto_increment,
    ServiceID int,
    HistoryDateTime datetime,
    HistoryCommand varchar(500),
    HistoryResult varchar(5000),
    HistoryPass boolean,
    Primary Key (HistoryID)
);
create table ContactMethods(
    ContactMethodID int not null auto_increment,
    ContactMethodName varchar(50),
    Primary KEY (ContactMethodID)
);
create table Operator (
    OperatorID int not null auto_increment,
    OperatorName varchar(50),
    PRIMARY KEY (OperatorID)
);
create table OperatorMethods(
    OperatorMethodID int not null auto_increment,
    OperatorID int,
    ContactMethodID int,
    OperatorMethodValue varchar(100),
    PRIMARY KEY (OperatorMethodID)
);
create table ServiceImportance(
    ServiceImportanceID int not null auto_increment,
    ServiceImportanceName varchar(50),
    PRIMARY KEY (ServiceImportanceID)
);
create table ImportanceSeverityTable(
    ImportanceSeverityID int not null auto_increment,
    SevericeImportanceID int,
    ImportanceSeverityDowntimeHrs float,
    ContactMethodID int,
    PRIMARY KEY (ImportanceSeverityID)
);
