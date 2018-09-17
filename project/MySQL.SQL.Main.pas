unit MySQL.SQL.Main;

interface

const
  MYSQL_SCRIPT =
    'CREATE TABLE MailingList ('+sLineBreak+
    '  listid INT(6) UNSIGNED AUTO_INCREMENT,'+sLineBreak+
    '  descritopn VARCHAR(50) NOT NULL,'+sLineBreak+
    '  insert_token VARCHAR(50) NOT NULL,'+sLineBreak+
    '  unreg_token VARCHAR(50) NOT NULL,'+sLineBreak+
    '  PRIMARY KEY (listid)'+sLineBreak+
    ');'+sLineBreak+
    'CREATE TABLE MailingEmail ('+sLineBreak+
    '  emailid INT(6) UNSIGNED AUTO_INCREMENT,'+sLineBreak+
    '  email VARCHAR(100) NOT NULL,'+sLineBreak+
    '  listid INT(6) NOT NULL,'+sLineBreak+
    '  firstname VARCHAR(50),'+sLineBreak+
    '  lastname VARCHAR(50),'+sLineBreak+
    '  company VARCHAR(100),'+sLineBreak+
    '  confirmation_hash VARCHAR(50),'+sLineBreak+
    '  registred TINYINT(1) NOT NULL DEFAULT 1,'+sLineBreak+
    '  confimed TINYINT(1) NOT NULL DEFAULT 0,'+sLineBreak+
    '  reg_timestamp DATETIME,'+sLineBreak+
    '  confirm_timestamp DATETIME,'+sLineBreak+
    '  unreg_timestamp DATETIME,'+sLineBreak+
    '  PRIMARY KEY (emailid)'+sLineBreak+
    ');'+sLineBreak;



implementation

end.
