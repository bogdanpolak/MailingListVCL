unit UnitDatabaseScriptsDDL;

interface

const
  IB_SCRIPT =
    'SET DROPnonexistent ON;'+sLineBreak+
    'DROP TRIGGER TR_MailingList;'+sLineBreak+
    'DROP GENERATOR GEN_MailingList_ID;'+sLineBreak+
    'DROP TRIGGER TR_MailingEmail;'+sLineBreak+
    'DROP GENERATOR GEN_MailingEmail_ID;'+sLineBreak+
    'DROP TABLE MailingEmail;'+sLineBreak+
    'DROP TABLE MailingList;'+sLineBreak+
    'CREATE TABLE MailingList ('+sLineBreak+
    '  listid INTEGER NOT NULL,'+sLineBreak+
    '  description VARCHAR(50) NOT NULL,'+sLineBreak+
    '  PRIMARY KEY (listid)'+sLineBreak+
    ');'+sLineBreak+
    'CREATE TABLE MailingEmail ('+sLineBreak+
    '  emailid INTEGER NOT NULL,'+sLineBreak+
    '  email VARCHAR(100) NOT NULL,'+sLineBreak+
    '  listid INTEGER NOT NULL,'+sLineBreak+
    '  firstname VARCHAR(50),'+sLineBreak+
    '  lastname VARCHAR(50),'+sLineBreak+
    '  company VARCHAR(100),'+sLineBreak+
    '  registred SMALLINT DEFAULT 1,'+sLineBreak+
    '  confimed SMALLINT DEFAULT 0,'+sLineBreak+
    '  reg_timestamp TIMESTAMP,'+sLineBreak+
    '  confirm_timestamp TIMESTAMP,'+sLineBreak+
    '  unreg_timestamp TIMESTAMP,'+sLineBreak+
    '  PRIMARY KEY (emailid)'+sLineBreak+
    ');'+sLineBreak+
    'CREATE GENERATOR GEN_MailingList_ID;'+sLineBreak+
    'CREATE GENERATOR GEN_MailingEmail_ID;'+sLineBreak+
    'SET TERM ^ ;'+sLineBreak+
    'CREATE TRIGGER TR_MailingList FOR MailingList'+sLineBreak+
    '  ACTIVE BEFORE INSERT POSITION 0 AS '+sLineBreak+
    'BEGIN'+sLineBreak+
    '  IF (NEW.listid IS NULL) THEN'+sLineBreak+
    '    NEW.listid = GEN_ID( GEN_MailingList_ID, 1);'+sLineBreak+
    'END^'+sLineBreak+
    'CREATE TRIGGER TR_MailingEmail FOR MailingEmail'+sLineBreak+
    '  ACTIVE BEFORE INSERT POSITION 0 AS '+sLineBreak+
    'BEGIN'+sLineBreak+
    '  IF (NEW.emailid IS NULL) THEN'+sLineBreak+
    '    NEW.emailid = GEN_ID( GEN_MailingEmail_ID, 1);'+sLineBreak+
    'END^'+sLineBreak+
    'SET TERM ;^'+sLineBreak+
    'SET DROPnonexistent OFF;'+sLineBreak;

  FILL_SAMPLE_DATA =
    'INSERT INTO MailingList(description)'+
    ' VALUES (''Mailing g³ówny'');'+sLineBreak+
    'INSERT INTO MailingList(description)'+
    ' VALUES (''Lista testowa'');'+sLineBreak+

    'INSERT INTO MailingEmail(email,listid,reg_timestamp)'+
    ' VALUES (''bogdan.polak.no.spam@bsc.com.pl'', 2, ''NOW'');'+sLineBreak+
    'INSERT INTO MailingEmail(email,listid,reg_timestamp)'+
    ' VALUES (''jan.kowalski@gmail.pl'', 2, ''NOW'');'+sLineBreak+
    '';


implementation

end.
