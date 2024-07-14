-- Drop sequences if they exist
DROP SEQUENCE seq_customer_id;
DROP SEQUENCE seq_account_id;
DROP SEQUENCE seq_loan_id;
DROP SEQUENCE seq_certificate_id;
DROP SEQUENCE seq_card_id;
DROP SEQUENCE seq_creditcheck_id;
DROP SEQUENCE seq_request_id;
DROP SEQUENCE seq_approval_id;
DROP SEQUENCE seq_document_id;

-- Create sequences for each table
CREATE SEQUENCE seq_customer_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_account_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_loan_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_certificate_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_card_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_creditcheck_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_request_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_approval_id START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE seq_document_id START WITH 1 INCREMENT BY 1;

-- Drop tables if they exist
DROP TABLE Document CASCADE CONSTRAINTS;
DROP TABLE CreditCheck CASCADE CONSTRAINTS;
DROP TABLE Approval CASCADE CONSTRAINTS;
DROP TABLE Requests CASCADE CONSTRAINTS;
DROP TABLE Card CASCADE CONSTRAINTS;
DROP TABLE Certificate CASCADE CONSTRAINTS;
DROP TABLE Loan CASCADE CONSTRAINTS;
DROP TABLE Account CASCADE CONSTRAINTS;
DROP TABLE Customer CASCADE CONSTRAINTS;

-- Create Customer table
CREATE TABLE Customer (
    CustomerID NUMBER PRIMARY KEY,
    Name VARCHAR2(100),
    Address VARCHAR2(200),
    Phone VARCHAR2(20),
    Email VARCHAR2(100),
    DateOfBirth DATE
);

-- Create Account table
CREATE TABLE Account (
    AccountID NUMBER PRIMARY KEY,
    AccountType VARCHAR2(50),
    Balance NUMBER,
    DateOpened DATE DEFAULT SYSDATE,
    CustomerID NUMBER,
    CONSTRAINT fk_customer_account FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Create Loan table
CREATE TABLE Loan (
    LoanID NUMBER PRIMARY KEY,
    LoanType VARCHAR2(50),
    Amount NUMBER,
    InterestRate NUMBER,
    StartDate DATE DEFAULT SYSDATE,
    EndDate DATE,
    AccountID NUMBER,
    CONSTRAINT fk_account_loan FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);

-- Create Certificate table
CREATE TABLE Certificate (
    CertificateID NUMBER PRIMARY KEY,
    CertificateType VARCHAR2(50),
    Amount NUMBER,
    IssueDate DATE DEFAULT SYSDATE,
    MaturityDate DATE,
    AccountID NUMBER,
    CONSTRAINT fk_account_certificate FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);

-- Create Card table
CREATE TABLE Card (
    CardID NUMBER PRIMARY KEY,
    CardType VARCHAR2(50),
    CardNumber VARCHAR2(20),
    ExpiryDate DATE,
    Limit NUMBER,
    CustomerID NUMBER,
    AccountID NUMBER,
    CONSTRAINT fk_customer_card FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    CONSTRAINT fk_account_card FOREIGN KEY (AccountID) REFERENCES Account(AccountID)
);

-- Create CreditCheck table
CREATE TABLE CreditCheck (
    CreditCheckID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    CreditScore NUMBER,
    Status VARCHAR2(50),
    CheckDate DATE DEFAULT SYSDATE,
    CONSTRAINT fk_customer_creditcheck FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Create unified Requests table
CREATE TABLE Requests (
    RequestID NUMBER PRIMARY KEY,
    CustomerID NUMBER,
    RequestType VARCHAR2(50),
    RequestDate DATE DEFAULT SYSDATE,
    Amount NUMBER,
    AdditionalInfo VARCHAR2(1000),
    Status VARCHAR2(20) DEFAULT 'new',
    CONSTRAINT fk_requests_customer FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Create Approval table
CREATE TABLE Approval (
    ApprovalID NUMBER PRIMARY KEY,
    RequestID NUMBER,
    ApprovalStatus VARCHAR2(50),
    ApprovalDate DATE DEFAULT SYSDATE,
    ApprovedAmount NUMBER,
    CONSTRAINT fk_approval_requests FOREIGN KEY (RequestID) REFERENCES Requests(RequestID)
);

-- Create Document table
CREATE TABLE Document (
    DocumentID NUMBER PRIMARY KEY,
    DocumentType VARCHAR2(50),
    UploadDate DATE DEFAULT SYSDATE,
    FilePath VARCHAR2(200),
    RequestID NUMBER,
    CONSTRAINT fk_document_request FOREIGN KEY (RequestID) REFERENCES Requests(RequestID)
);

-- Create triggers to auto-generate IDs
CREATE OR REPLACE TRIGGER trg_customer_id
BEFORE INSERT ON Customer
FOR EACH ROW
BEGIN
  SELECT seq_customer_id.NEXTVAL INTO :NEW.CustomerID FROM dual;
END;
/
CREATE OR REPLACE TRIGGER trg_account_id
BEFORE INSERT ON Account
FOR EACH ROW
BEGIN
  SELECT seq_account_id.NEXTVAL INTO :NEW.AccountID FROM dual;
END;
/
CREATE OR REPLACE TRIGGER trg_loan_id
BEFORE INSERT ON Loan
FOR EACH ROW
BEGIN
  SELECT seq_loan_id.NEXTVAL INTO :NEW.LoanID FROM dual;
END;
/
CREATE OR REPLACE TRIGGER trg_certificate_id
BEFORE INSERT ON Certificate
FOR EACH ROW
BEGIN
  SELECT seq_certificate_id.NEXTVAL INTO :NEW.CertificateID FROM dual;
END;
/
CREATE OR REPLACE TRIGGER trg_card_id
BEFORE INSERT ON Card
FOR EACH ROW
BEGIN
  SELECT seq_card_id.NEXTVAL INTO :NEW.CardID FROM dual;
END;
/
CREATE OR REPLACE TRIGGER trg_creditcheck_id
BEFORE INSERT ON CreditCheck
FOR EACH ROW
BEGIN
  SELECT seq_creditcheck_id.NEXTVAL INTO :NEW.CreditCheckID FROM dual;
END;
/
CREATE OR REPLACE TRIGGER trg_request_id
BEFORE INSERT ON Requests
FOR EACH ROW
BEGIN
  SELECT seq_request_id.NEXTVAL INTO :NEW.RequestID FROM dual;
END;
/
CREATE OR REPLACE TRIGGER trg_approval_id
BEFORE INSERT ON Approval
FOR EACH ROW
BEGIN
  SELECT seq_approval_id.NEXTVAL INTO :NEW.ApprovalID FROM dual;
END;
/
CREATE OR REPLACE TRIGGER trg_document_id
BEFORE INSERT ON Document
FOR EACH ROW
BEGIN
  SELECT seq_document_id.NEXTVAL INTO :NEW.DocumentID FROM dual;
END;
/
-- Insert sample data into Customer table
INSERT INTO Customer (Name, Address, Phone, Email, DateOfBirth) VALUES ('John Doe', '123 Elm Street', '123-456-7890', 'john.doe@example.com', TO_DATE('1980-01-01', 'YYYY-MM-DD'));
INSERT INTO Customer (Name, Address, Phone, Email, DateOfBirth) VALUES('Jane Smith', '456 Oak Avenue', '987-654-3210', 'jane.smith@example.com', TO_DATE('1990-02-02', 'YYYY-MM-DD'));

-- Insert sample data into Account table
INSERT INTO Account (AccountType, Balance, DateOpened, CustomerID) VALUES('Savings', 5000.00, TO_DATE('2023-01-01', 'YYYY-MM-DD'), 1);
INSERT INTO Account (AccountType, Balance, DateOpened, CustomerID) VALUES('Checking', 1500.00, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 2);

-- Insert sample data into Loan table
INSERT INTO Loan (LoanType, Amount, InterestRate, StartDate, EndDate, AccountID) VALUES('Personal', 10000.00, 5.0, TO_DATE('2023-03-01', 'YYYY-MM-DD'), TO_DATE('2028-03-01', 'YYYY-MM-DD'), 1);
INSERT INTO Loan (LoanType, Amount, InterestRate, StartDate, EndDate, AccountID) VALUES('Mortgage', 250000.00, 3.5, TO_DATE('2023-04-01', 'YYYY-MM-DD'), TO_DATE('2043-04-01', 'YYYY-MM-DD'), 2);

-- Insert sample data into Certificate table
INSERT INTO Certificate (CertificateType, Amount, IssueDate, MaturityDate, AccountID) VALUES ('CD', 2000.00, TO_DATE('2023-05-01', 'YYYY-MM-DD'), TO_DATE('2024-05-01', 'YYYY-MM-DD'), 1);
INSERT INTO Certificate (CertificateType, Amount, IssueDate, MaturityDate, AccountID) VALUES ('CD', 3000.00, TO_DATE('2023-06-01', 'YYYY-MM-DD'), TO_DATE('2025-06-01', 'YYYY-MM-DD'), 2);

-- Insert sample data into Card table
INSERT INTO Card (CardType, CardNumber, ExpiryDate, Limit, CustomerID, AccountID) VALUES('Credit', '1234-5678-9012-3456', TO_DATE('2025-01-01', 'YYYY-MM-DD'), 5000.00, 1, 1);
INSERT INTO Card (CardType, CardNumber, ExpiryDate, Limit, CustomerID, AccountID) VALUES('Debit', '9876-5432-1098-7654', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 1000.00, 2, 2);

-- Insert sample data into CreditCheck table

INSERT INTO CreditCheck (CustomerID, CreditScore, Status, CheckDate) VALUES (1, 700, 'Approved', TO_DATE('2023-03-01', 'YYYY-MM-DD'));
INSERT INTO CreditCheck (CustomerID, CreditScore, Status, CheckDate) VALUES (2, 650, 'Approved', TO_DATE('2023-04-01', 'YYYY-MM-DD'));

-- Insert sample data into Requests table with Status 'new'
INSERT INTO Requests (CustomerID, RequestType, RequestDate, Amount, AdditionalInfo, Status) VALUES (1, 'Loan', TO_DATE('2023-07-01', 'YYYY-MM-DD'), 15000.00, 'Auto Loan Request', 'new');
INSERT INTO Requests (CustomerID, RequestType, RequestDate, Amount, AdditionalInfo, Status) VALUES(2, 'Loan', TO_DATE('2023-08-01', 'YYYY-MM-DD'), 20000.00, 'Personal Loan Request', 'new');
INSERT INTO Requests (CustomerID, RequestType, RequestDate, Amount, AdditionalInfo, Status) VALUES(1, 'Account', TO_DATE('2023-09-01', 'YYYY-MM-DD'), NULL, 'Savings Account Request', 'new');
INSERT INTO Requests (CustomerID, RequestType, RequestDate, Amount, AdditionalInfo, Status) VALUES(2, 'Account', TO_DATE('2023-10-01', 'YYYY-MM-DD'), NULL, 'Checking Account Request', 'new');
INSERT INTO Requests (CustomerID, RequestType, RequestDate, Amount, AdditionalInfo, Status) VALUES(1, 'Certificate', TO_DATE('2023-11-01', 'YYYY-MM-DD'), 2500.00, 'CD Request', 'new');
INSERT INTO Requests (CustomerID, RequestType, RequestDate, Amount, AdditionalInfo, Status) VALUES(2, 'Certificate', TO_DATE('2023-12-01', 'YYYY-MM-DD'), 3500.00, 'CD Request', 'new');
INSERT INTO Requests (CustomerID, RequestType, RequestDate, Amount, AdditionalInfo, Status) VALUES(1, 'Card', TO_DATE('2024-01-01', 'YYYY-MM-DD'), 5000.00, 'Credit Card Request', 'new');
INSERT INTO Requests (CustomerID, RequestType, RequestDate, Amount, AdditionalInfo, Status) VALUES(2, 'Card', TO_DATE('2024-02-01', 'YYYY-MM-DD'), 1000.00, 'Debit Card Request', 'new');

-- Insert sample data into Approval table
INSERT INTO Approval (RequestID, ApprovalStatus, ApprovalDate, ApprovedAmount) VALUES (1, 101, 201, 'All documents are verified.', 'Approved after final review.', 'Approved', TO_DATE('2023-07-10', 'YYYY-MM-DD'), 15000.00);
INSERT INTO Approval (RequestID, ApprovalStatus, ApprovalDate, ApprovedAmount) VALUES(2, 'Pending', NULL, NULL);
INSERT INTO Approval (RequestID, ApprovalStatus, ApprovalDate, ApprovedAmount) VALUES(3, 'Approved', TO_DATE('2023-09-05', 'YYYY-MM-DD'), NULL);
INSERT INTO Approval (RequestID, ApprovalStatus, ApprovalDate, ApprovedAmount) VALUES(4, 'Approved', TO_DATE('2023-10-05', 'YYYY-MM-DD'), NULL);
INSERT INTO Approval (RequestID, ApprovalStatus, ApprovalDate, ApprovedAmount) VALUES(5, 'Approved', TO_DATE('2023-11-05', 'YYYY-MM-DD'), 2500.00);
INSERT INTO Approval (RequestID, ApprovalStatus, ApprovalDate, ApprovedAmount) VALUES(6, 'Pending', NULL, NULL);

-- Insert sample data into Document table
INSERT INTO Document (DocumentType, UploadDate, FilePath, RequestID) VALUES ('ID Proof', TO_DATE('2023-07-01', 'YYYY-MM-DD'), '/documents/id_proof_1.pdf', 1);
INSERT INTO Document (DocumentType, UploadDate, FilePath, RequestID) VALUES('Income Proof', TO_DATE('2023-07-01', 'YYYY-MM-DD'), '/documents/income_proof_1.pdf', 1);
INSERT INTO Document (DocumentType, UploadDate, FilePath, RequestID) VALUES('ID Proof', TO_DATE('2023-08-01', 'YYYY-MM-DD'), '/documents/id_proof_2.pdf', 2);
INSERT INTO Document (DocumentType, UploadDate, FilePath, RequestID) VALUES('Income Proof', TO_DATE('2023-08-01', 'YYYY-MM-DD'), '/documents/income_proof_2.pdf', 2);
