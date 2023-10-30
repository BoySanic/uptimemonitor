create table Services {
    ServiceID int identity(1,1),
    ServiceName varchar(50),
    ServiceImportanceID,
    ServiceAddress varchar(50),
    ServicePort int,
    ServiceSystemdName varchar(50),
    ServiceLogonName varchar(50),
    ServicePubkey varchar(5000),
    ServiceUptimeCommand varchar(500),
    ServiceUpString varchar(100)
};
create table ServiceHistory {
    HistoryID int identity(1,1),
    ServiceID int,
    HistoryDateTime datetime,
    HistoryCommand varchar(500),
    HistoryResult varchar(5000),
    HistoryPass boolean
};
create table ContactMethods{
    ContactMethodID int identity(1,1),
    ContactMethodName varchar(50)
};
create table Operator {
    OperatorID int identity(1,1),
    OperatorName varchar(50)
};
create table OperatorMethods{
    OperatorMethodID int identity(1,1),
    OperatorID int,
    ContactMethodID int,
    OperatorMethodValue varchar(100)
};
create table ServiceImportance{
    ServiceImportanceID int identity(1,1),
    ServiceImportanceName varchar(50)
};
create table ImportanceSeverityTable{
    ImportanceSeverityID int identity(1,1),
    SeverityImportanceID int,
    ImportanceSeverityDowntimeHrs float,
    ContactMethodID int
};
