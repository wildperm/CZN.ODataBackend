﻿



CREATE TABLE [ЯвкаГражданина] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Явка] VARCHAR(255)  NULL,

	 [КарточкаГражданина_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ЗадачаПоГражданину] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Задача] VARCHAR(255)  NULL,

	 [КарточкаГКарточкаГражданинаражданина_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ОтметкаГражданина] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Отметка] VARCHAR(255)  NULL,

	 [КарточкаГражданина_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ТрудоваяДеятельность] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ТрудоваяДеятельность] VARCHAR(255)  NULL,

	 [Личность_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ТрудоваяКнижка] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ТрудоваяКнижка] VARCHAR(255)  NULL,

	 [Личность_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [НаправлениеГражданина] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [Направление] VARCHAR(255)  NULL,

	 [КарточкаГражданина_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [Личность] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ФИО] VARCHAR(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ПередачаКарточки] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ДатаПередачи] DATETIME  NULL,

	 [Сотрудник] VARCHAR(255)  NULL,

	 [КарточкаГражданина_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [КарточкаГражданина] (

	 [primaryKey] UNIQUEIDENTIFIER  NOT NULL,

	 [ДатаПриема] DATETIME  NULL,

	 [Личность_m0] UNIQUEIDENTIFIER  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMNETLOCKDATA] (

	 [LockKey] VARCHAR(300)  NOT NULL,

	 [UserName] VARCHAR(300)  NOT NULL,

	 [LockDate] DATETIME  NULL,

	 PRIMARY KEY ([LockKey]))


CREATE TABLE [STORMSETTINGS] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Module] varchar(1000)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [User] varchar(255)  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMAdvLimit] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [User] varchar(255)  NULL,

	 [Published] bit  NULL,

	 [Module] varchar(255)  NULL,

	 [Name] varchar(255)  NULL,

	 [Value] text  NULL,

	 [HotKeyData] int  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERSETTING] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMWEBSEARCH] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Name] varchar(255)  NOT NULL,

	 [Order] INT  NOT NULL,

	 [PresentView] varchar(255)  NOT NULL,

	 [DetailedView] varchar(255)  NOT NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERDETAIL] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Caption] varchar(255)  NOT NULL,

	 [DataObjectView] varchar(255)  NOT NULL,

	 [ConnectMasterProp] varchar(255)  NOT NULL,

	 [OwnerConnectProp] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [STORMFILTERLOOKUP] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [DataObjectType] varchar(255)  NOT NULL,

	 [Container] varchar(255)  NULL,

	 [ContainerTag] varchar(255)  NULL,

	 [FieldsToView] varchar(255)  NULL,

	 [FilterSetting_m0] uniqueidentifier  NOT NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [UserSetting] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [AppName] varchar(256)  NULL,

	 [UserName] varchar(512)  NULL,

	 [UserGuid] uniqueidentifier  NULL,

	 [ModuleName] varchar(1024)  NULL,

	 [ModuleGuid] uniqueidentifier  NULL,

	 [SettName] varchar(256)  NULL,

	 [SettGuid] uniqueidentifier  NULL,

	 [SettLastAccessTime] DATETIME  NULL,

	 [StrVal] varchar(256)  NULL,

	 [TxtVal] varchar(max)  NULL,

	 [IntVal] int  NULL,

	 [BoolVal] bit  NULL,

	 [GuidVal] uniqueidentifier  NULL,

	 [DecimalVal] decimal(20,10)  NULL,

	 [DateTimeVal] DATETIME  NULL,

	 PRIMARY KEY ([primaryKey]))


CREATE TABLE [ApplicationLog] (

	 [primaryKey] uniqueidentifier  NOT NULL,

	 [Category] varchar(64)  NULL,

	 [EventId] INT  NULL,

	 [Priority] INT  NULL,

	 [Severity] varchar(32)  NULL,

	 [Title] varchar(256)  NULL,

	 [Timestamp] DATETIME  NULL,

	 [MachineName] varchar(32)  NULL,

	 [AppDomainName] varchar(512)  NULL,

	 [ProcessId] varchar(256)  NULL,

	 [ProcessName] varchar(512)  NULL,

	 [ThreadName] varchar(512)  NULL,

	 [Win32ThreadId] varchar(128)  NULL,

	 [Message] varchar(2500)  NULL,

	 [FormattedMessage] varchar(max)  NULL,

	 PRIMARY KEY ([primaryKey]))




 ALTER TABLE [ЯвкаГражданина] ADD CONSTRAINT [ЯвкаГражданина_FКарточкаГражданина_0] FOREIGN KEY ([КарточкаГражданина_m0]) REFERENCES [КарточкаГражданина]
CREATE INDEX ЯвкаГражданина_IКарточкаГражданина_m0 on [ЯвкаГражданина] ([КарточкаГражданина_m0])

 ALTER TABLE [ЗадачаПоГражданину] ADD CONSTRAINT [ЗадачаПоГражданину_FКарточкаГражданина_0] FOREIGN KEY ([КарточкаГКарточкаГражданинаражданина_m0]) REFERENCES [КарточкаГражданина]
CREATE INDEX ЗадачаПоГражданину_IКарточкаГКарточкаГражданинаражданина_m0 on [ЗадачаПоГражданину] ([КарточкаГКарточкаГражданинаражданина_m0])

 ALTER TABLE [ОтметкаГражданина] ADD CONSTRAINT [ОтметкаГражданина_FКарточкаГражданина_0] FOREIGN KEY ([КарточкаГражданина_m0]) REFERENCES [КарточкаГражданина]
CREATE INDEX ОтметкаГражданина_IКарточкаГражданина_m0 on [ОтметкаГражданина] ([КарточкаГражданина_m0])

 ALTER TABLE [ТрудоваяДеятельность] ADD CONSTRAINT [ТрудоваяДеятельность_FЛичность_0] FOREIGN KEY ([Личность_m0]) REFERENCES [Личность]
CREATE INDEX ТрудоваяДеятельность_IЛичность_m0 on [ТрудоваяДеятельность] ([Личность_m0])

 ALTER TABLE [ТрудоваяКнижка] ADD CONSTRAINT [ТрудоваяКнижка_FЛичность_0] FOREIGN KEY ([Личность_m0]) REFERENCES [Личность]
CREATE INDEX ТрудоваяКнижка_IЛичность_m0 on [ТрудоваяКнижка] ([Личность_m0])

 ALTER TABLE [НаправлениеГражданина] ADD CONSTRAINT [НаправлениеГражданина_FКарточкаГражданина_0] FOREIGN KEY ([КарточкаГражданина_m0]) REFERENCES [КарточкаГражданина]
CREATE INDEX НаправлениеГражданина_IКарточкаГражданина_m0 on [НаправлениеГражданина] ([КарточкаГражданина_m0])

 ALTER TABLE [ПередачаКарточки] ADD CONSTRAINT [ПередачаКарточки_FКарточкаГражданина_0] FOREIGN KEY ([КарточкаГражданина_m0]) REFERENCES [КарточкаГражданина]
CREATE INDEX ПередачаКарточки_IКарточкаГражданина_m0 on [ПередачаКарточки] ([КарточкаГражданина_m0])

 ALTER TABLE [КарточкаГражданина] ADD CONSTRAINT [КарточкаГражданина_FЛичность_0] FOREIGN KEY ([Личность_m0]) REFERENCES [Личность]
CREATE INDEX КарточкаГражданина_IЛичность_m0 on [КарточкаГражданина] ([Личность_m0])

 ALTER TABLE [STORMWEBSEARCH] ADD CONSTRAINT [STORMWEBSEARCH_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERDETAIL] ADD CONSTRAINT [STORMFILTERDETAIL_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

 ALTER TABLE [STORMFILTERLOOKUP] ADD CONSTRAINT [STORMFILTERLOOKUP_FSTORMFILTERSETTING_0] FOREIGN KEY ([FilterSetting_m0]) REFERENCES [STORMFILTERSETTING]

