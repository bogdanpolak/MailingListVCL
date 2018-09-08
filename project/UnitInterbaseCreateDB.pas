unit UnitInterbaseCreateDB;

interface

const
  IB_SCRIPT =
    'SET DROPnonexistent ON;'+sLineBreak+
    'SET AUTOCOMMIT OFF;'+sLineBreak+
    'DROP TRIGGER TR_MailingList;'+sLineBreak+
    'DROP GENERATOR GEN_MailingList_ID;'+sLineBreak+
    'DROP TRIGGER TR_Contacts;'+sLineBreak+
    'DROP GENERATOR GEN_Contact_ID;'+sLineBreak+
    'DROP TABLE Contacts;'+sLineBreak+
    'DROP TABLE Contact2List;'+sLineBreak+
    'DROP TABLE MailingList;'+sLineBreak+
    'CREATE TABLE MailingList ('+sLineBreak+
    '  listid INTEGER NOT NULL,'+sLineBreak+
    '  description VARCHAR(50) NOT NULL,'+sLineBreak+
    '  PRIMARY KEY (listid)'+sLineBreak+
    ');'+sLineBreak+
    'CREATE TABLE Contact2List ('+sLineBreak+
    '  contactid INTEGER NOT NULL,'+sLineBreak+
    '  listid INTEGER NOT NULL,'+sLineBreak+
    '  PRIMARY KEY (contactid,listid)'+sLineBreak+
    ');'+sLineBreak+
    'CREATE TABLE Contacts ('+sLineBreak+
    '  contactid INTEGER NOT NULL,'+sLineBreak+
    '  email VARCHAR(100) NOT NULL,'+sLineBreak+
    '  firstname VARCHAR(50),'+sLineBreak+
    '  lastname VARCHAR(50),'+sLineBreak+
    '  company VARCHAR(100),'+sLineBreak+
    '  registred SMALLINT DEFAULT 1,'+sLineBreak+
    '  confimed SMALLINT DEFAULT 0,'+sLineBreak+
    '  reg_timestamp TIMESTAMP,'+sLineBreak+
    '  confirm_timestamp TIMESTAMP,'+sLineBreak+
    '  unreg_timestamp TIMESTAMP,'+sLineBreak+
    '  PRIMARY KEY (contactid)'+sLineBreak+
    ');'+sLineBreak+
    'CREATE GENERATOR GEN_MailingList_ID;'+sLineBreak+
    'CREATE GENERATOR GEN_Contact_ID;'+sLineBreak+
    'SET TERM ^ ;'+sLineBreak+
    'CREATE TRIGGER TR_MailingList FOR MailingList'+sLineBreak+
    '  ACTIVE BEFORE INSERT POSITION 0 AS '+sLineBreak+
    'BEGIN'+sLineBreak+
    '  IF (NEW.listid IS NULL) THEN'+sLineBreak+
    '    NEW.listid = GEN_ID( GEN_MailingList_ID, 1);'+sLineBreak+
    'END^'+sLineBreak+
    'CREATE TRIGGER TR_Contacts FOR Contacts'+sLineBreak+
    '  ACTIVE BEFORE INSERT POSITION 0 AS '+sLineBreak+
    'BEGIN'+sLineBreak+
    '  IF (NEW.contactid IS NULL) THEN'+sLineBreak+
    '    NEW.emailid = GEN_ID( GEN_Contact_ID, 1);'+sLineBreak+
    'END^'+sLineBreak+
    'SET TERM ;^'+sLineBreak+
    'SET DROPnonexistent OFF;'+sLineBreak+
    'COMMIT;'+sLineBreak+
    'INSERT INTO MailingList(description) VALUES (''Mailing g³ówny'');'+sLineBreak+
    'INSERT INTO MailingList(description) VALUES (''Lista testowa'');'+sLineBreak+
    '';

  IB_INSERT_CONTACTS_SQL = 'INSERT INTO Contacts'+
    '(email, firstname, lastname, company, reg_timestamp)'+
    ' VALUES (:email, :firstname, :lastname, :company, :reg)';

  IB_INSERT_CONTCT2LIST_SQL = 'INSERT INTO Contact2List'+
    '(contactid, listid) VALUES (:contactid, :listid)';


implementation

end.
