unit Interbase.SQL.Main;

interface

const
  IB_SCRIPT =
    'SET DROPnonexistent ON;'+sLineBreak+
    'SET AUTOCOMMIT OFF;'+sLineBreak+
    'DROP TRIGGER TR_MailingList;'+sLineBreak+
    'DROP GENERATOR GEN_MailingList_ID;'+sLineBreak+
    'DROP TRIGGER TR_Contacts;'+sLineBreak+
    'DROP GENERATOR GEN_Contact_ID;'+sLineBreak+
    'DROP TABLE DBInfo;'+sLineBreak+
    'DROP TABLE Users;'+sLineBreak+
    'DROP TABLE Contact2List;'+sLineBreak+
    'DROP TABLE Contacts;'+sLineBreak+
    'DROP TABLE MailingList;'+sLineBreak+
    'CREATE TABLE DBInfo ('+sLineBreak+
    '  versionnr INTEGER NOT NULL,'+sLineBreak+
    '  PRIMARY KEY (versionnr)'+sLineBreak+
    ');'+sLineBreak+
    'CREATE TABLE Users ('+sLineBreak+
    '  login VARCHAR(25) NOT NULL,'+sLineBreak+
    '  accesshash VARCHAR(100) NOT NULL,'+sLineBreak+
    '  PRIMARY KEY (login)'+sLineBreak+
    ');'+sLineBreak+
    'CREATE TABLE MailingList ('+sLineBreak+
    '  listid INTEGER NOT NULL,'+sLineBreak+
    '  description VARCHAR(50) CHARACTER SET UTF8 NOT NULL,'+sLineBreak+
    '  PRIMARY KEY (listid)'+sLineBreak+
    ');'+sLineBreak+
    'CREATE TABLE Contact2List ('+sLineBreak+
    '  contactid INTEGER NOT NULL,'+sLineBreak+
    '  listid INTEGER NOT NULL,'+sLineBreak+
    '  PRIMARY KEY (contactid,listid)'+sLineBreak+
    ');'+sLineBreak+
    'CREATE TABLE Contacts ('+sLineBreak+
    '  contactid INTEGER NOT NULL,'+sLineBreak+
    '  email VARCHAR(100) CHARACTER SET UTF8 NOT NULL,'+sLineBreak+
    '  firstname VARCHAR(50) CHARACTER SET UTF8,'+sLineBreak+
    '  lastname VARCHAR(50) CHARACTER SET UTF8,'+sLineBreak+
    '  company VARCHAR(100) CHARACTER SET UTF8,'+sLineBreak+
    '  registred SMALLINT DEFAULT 1,'+sLineBreak+
    '  confimed SMALLINT DEFAULT 0,'+sLineBreak+
    '  create_timestamp TIMESTAMP,'+sLineBreak+
    '  confirm_timestamp TIMESTAMP,'+sLineBreak+
    '  unreg_timestamp TIMESTAMP,'+sLineBreak+
    '  PRIMARY KEY (contactid)'+sLineBreak+
    ');'+sLineBreak+
    'CREATE GENERATOR GEN_MailingList_ID;'+sLineBreak+
    'CREATE GENERATOR GEN_Contact_ID;'+sLineBreak+
    'SET TERM ^ ;'+sLineBreak+
    (* * * * * * * * * * * * * * * * * * * * * * * * * * * *)
    'CREATE TRIGGER TR_MailingList FOR MailingList'+sLineBreak+
    '  ACTIVE BEFORE INSERT POSITION 0 AS '+sLineBreak+
    'BEGIN'+sLineBreak+
    '  IF (NEW.listid IS NULL) THEN'+sLineBreak+
    '    NEW.listid = GEN_ID( GEN_MailingList_ID, 1);'+sLineBreak+
    'END^'+sLineBreak+
    (* * * * * * * * * * * * * * * * * * * * * * * * * * * *)
    'CREATE TRIGGER TR_Contacts FOR Contacts'+sLineBreak+
    '  ACTIVE BEFORE INSERT POSITION 0 AS '+sLineBreak+
    'BEGIN'+sLineBreak+
    '  IF (NEW.contactid IS NULL) THEN'+sLineBreak+
    '    NEW.contactid = GEN_ID( GEN_Contact_ID, 1);'+sLineBreak+
    'END^'+sLineBreak+
    (* * * * * * * * * * * * * * * * * * * * * * * * * * * *)
    'SET TERM ;^'+sLineBreak+
    'SET DROPnonexistent OFF;'+sLineBreak+
    'COMMIT;'+sLineBreak+
    'INSERT INTO DBInfo (versionnr) VALUES (1);'+sLineBreak+
    'INSERT INTO MailingList(description) VALUES (''Mailing główny'');'+sLineBreak+
    'INSERT INTO MailingList(description) VALUES (''Lista testowa'');'+sLineBreak+
    // login: jan  hasło: jan01  text do sha256: jan,jan01
    // wyliczanie hasha:
    // System.Hash.THashSHA2.GetHashString (username+','+password, TSHA2Version.SHA256): string;
    'INSERT INTO Users(login,accesshash) VALUES (''jan'','+
      '''083E7F0FA4F62A81CABC8D03CBA5E3096ED5A038CFFA181377F383329A00E21E'');'+sLineBreak+
    // login: demo  hasło: demo  text do sha256: demo,demo
    'INSERT INTO Users(login,accesshash) VALUES (''demo'','+
      '''DD3E4A89090BE0A261D91BC2A255D4F11CFA897AE98349F9BF0CCB1A0CC47FF5'');'+sLineBreak+
    'COMMIT;'+sLineBreak+
    '';

  IB_INSERT_CONTACTS_SQL = 'INSERT INTO Contacts'+
    '(email, firstname, lastname, company, create_timestamp)'+
    ' VALUES (:email, :firstname, :lastname, :company, :reg)';

  IB_INSERT_CONTCT2LIST_SQL = 'INSERT INTO Contact2List'+
    '(contactid, listid) VALUES (:contactid, :listid)';


implementation

end.
