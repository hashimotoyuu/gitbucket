ALTER TABLE GROUP_MEMBER ADD COLUMN MANAGER BOOLEAN DEFAULT FALSE;

CREATE TABLE SSH_KEY (
  USER_NAME VARCHAR(100) NOT NULL,
  SSH_KEY_ID INT AUTO_INCREMENT,
  PUBLIC_KEY TEXT NOT NULL
);

ALTER TABLE SSH_KEY ADD CONSTRAINT IDX_SSH_KEY_PK PRIMARY KEY (USER_NAME, SSH_KEY_ID);
ALTER TABLE SSH_KEY ADD CONSTRAINT IDX_SSH_KEY_FK0 FOREIGN KEY (USER_NAME) REFERENCES ACCOUNT (USER_NAME);