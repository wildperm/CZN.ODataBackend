




CREATE TABLE ЯвкаГражданина (

 primaryKey UUID NOT NULL,

 Карточка гражданина_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ЗадачаПоГражданину (

 primaryKey UUID NOT NULL,

 Карточка гражданина_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ОтметкаГражданина (

 primaryKey UUID NOT NULL,

 Карточка гражданина_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ТрудоваяДеятельность (

 primaryKey UUID NOT NULL,

 Личность_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ТрудоваяКнижка (

 primaryKey UUID NOT NULL,

 Личность_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE НаправлениеГражданина (

 primaryKey UUID NOT NULL,

 Карточка гражданина_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Личность (

 primaryKey UUID NOT NULL,

 ФИО VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ПередачаКарточки (

 primaryKey UUID NOT NULL,

 ДатаПередачи TIMESTAMP(3) NULL,

 Сотрудник VARCHAR(255) NULL,

 Карточка гражданина_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE Карточка гражданина (

 primaryKey UUID NOT NULL,

 ДатаПриема TIMESTAMP(3) NULL,

 Личность_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMNETLOCKDATA (

 LockKey VARCHAR(300) NOT NULL,

 UserName VARCHAR(300) NOT NULL,

 LockDate TIMESTAMP(3) NULL,

 PRIMARY KEY (LockKey));



CREATE TABLE STORMSETTINGS (

 primaryKey UUID NOT NULL,

 Module VARCHAR(1000) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 "User" VARCHAR(255) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMAdvLimit (

 primaryKey UUID NOT NULL,

 "User" VARCHAR(255) NULL,

 Published BOOLEAN NULL,

 Module VARCHAR(255) NULL,

 Name VARCHAR(255) NULL,

 Value TEXT NULL,

 HotKeyData INT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERSETTING (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMWEBSEARCH (

 primaryKey UUID NOT NULL,

 Name VARCHAR(255) NOT NULL,

 "Order" INT NOT NULL,

 PresentView VARCHAR(255) NOT NULL,

 DetailedView VARCHAR(255) NOT NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERDETAIL (

 primaryKey UUID NOT NULL,

 Caption VARCHAR(255) NOT NULL,

 DataObjectView VARCHAR(255) NOT NULL,

 ConnectMasterProp VARCHAR(255) NOT NULL,

 OwnerConnectProp VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE STORMFILTERLOOKUP (

 primaryKey UUID NOT NULL,

 DataObjectType VARCHAR(255) NOT NULL,

 Container VARCHAR(255) NULL,

 ContainerTag VARCHAR(255) NULL,

 FieldsToView VARCHAR(255) NULL,

 FilterSetting_m0 UUID NOT NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE UserSetting (

 primaryKey UUID NOT NULL,

 AppName VARCHAR(256) NULL,

 UserName VARCHAR(512) NULL,

 UserGuid UUID NULL,

 ModuleName VARCHAR(1024) NULL,

 ModuleGuid UUID NULL,

 SettName VARCHAR(256) NULL,

 SettGuid UUID NULL,

 SettLastAccessTime TIMESTAMP(3) NULL,

 StrVal VARCHAR(256) NULL,

 TxtVal TEXT NULL,

 IntVal INT NULL,

 BoolVal BOOLEAN NULL,

 GuidVal UUID NULL,

 DecimalVal DECIMAL(20,10) NULL,

 DateTimeVal TIMESTAMP(3) NULL,

 PRIMARY KEY (primaryKey));



CREATE TABLE ApplicationLog (

 primaryKey UUID NOT NULL,

 Category VARCHAR(64) NULL,

 EventId INT NULL,

 Priority INT NULL,

 Severity VARCHAR(32) NULL,

 Title VARCHAR(256) NULL,

 Timestamp TIMESTAMP(3) NULL,

 MachineName VARCHAR(32) NULL,

 AppDomainName VARCHAR(512) NULL,

 ProcessId VARCHAR(256) NULL,

 ProcessName VARCHAR(512) NULL,

 ThreadName VARCHAR(512) NULL,

 Win32ThreadId VARCHAR(128) NULL,

 Message VARCHAR(2500) NULL,

 FormattedMessage TEXT NULL,

 PRIMARY KEY (primaryKey));




 ALTER TABLE ЯвкаГражданина ADD CONSTRAINT FKb1b6d8abee03452792eccfae59bd5d17 FOREIGN KEY (Карточка гражданина_m0) REFERENCES Карточка гражданина; 
CREATE INDEX Indexcbe1b0c7b6d07081e9d17bdf20056eefe93d4b0d on ЯвкаГражданина (Карточка гражданина_m0); 

 ALTER TABLE ЗадачаПоГражданину ADD CONSTRAINT FKd853c64002624f8b9ea3e8db18c02b85 FOREIGN KEY (Карточка гражданина_m0) REFERENCES Карточка гражданина; 
CREATE INDEX Index6dcc9c06bc93f4fb133d0056975ae23242495cdc on ЗадачаПоГражданину (Карточка гражданина_m0); 

 ALTER TABLE ОтметкаГражданина ADD CONSTRAINT FK3ace6c64275b47c5a9b6983efcb5b4b2 FOREIGN KEY (Карточка гражданина_m0) REFERENCES Карточка гражданина; 
CREATE INDEX Index13f4b77f544af307471274a520d08df729c77326 on ОтметкаГражданина (Карточка гражданина_m0); 

 ALTER TABLE ТрудоваяДеятельность ADD CONSTRAINT FKb70c5ef37bfd4f0598cca4c2c4566866 FOREIGN KEY (Личность_m0) REFERENCES Личность; 
CREATE INDEX Index9669dd1714ad2875ba7114b4c58760d205bd7ec6 on ТрудоваяДеятельность (Личность_m0); 

 ALTER TABLE ТрудоваяКнижка ADD CONSTRAINT FK0e52b90a3d1e475c896d33f9e2fe77e3 FOREIGN KEY (Личность_m0) REFERENCES Личность; 
CREATE INDEX Index59101d2d6d1e6a3be1e7a35619cb6256eecd80ee on ТрудоваяКнижка (Личность_m0); 

 ALTER TABLE НаправлениеГражданина ADD CONSTRAINT FK749af5000d504d48a157fa8908b08139 FOREIGN KEY (Карточка гражданина_m0) REFERENCES Карточка гражданина; 
CREATE INDEX Indexa319809455aae32f308432867cf9583a9e933fb6 on НаправлениеГражданина (Карточка гражданина_m0); 

 ALTER TABLE ПередачаКарточки ADD CONSTRAINT FK5a64d900c4e843a1bfd0a0ccae70ea66 FOREIGN KEY (Карточка гражданина_m0) REFERENCES Карточка гражданина; 
CREATE INDEX Indexb8ecc113e60c477b3e75fdaf412b628f0a7e79cf on ПередачаКарточки (Карточка гражданина_m0); 

 ALTER TABLE Карточка гражданина ADD CONSTRAINT FKdd7142d9e19b4469a549bf1e34e3682b FOREIGN KEY (Личность_m0) REFERENCES Личность; 
CREATE INDEX Indexb42b0b11354b25390597044c3bcb7ab26019af1e on Карточка гражданина (Личность_m0); 

 ALTER TABLE STORMWEBSEARCH ADD CONSTRAINT FK4ff0c2c855e2440e8057ed4674bcf41f FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERDETAIL ADD CONSTRAINT FKae0c78799ca249d89d597f18bb5c5348 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

 ALTER TABLE STORMFILTERLOOKUP ADD CONSTRAINT FKd7001b0448b44e0791250451e9268c24 FOREIGN KEY (FilterSetting_m0) REFERENCES STORMFILTERSETTING; 

