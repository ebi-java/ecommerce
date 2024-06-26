-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Details` text,
  `Image` varchar(200) DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `Interest_rate` decimal(4,2) DEFAULT NULL,
  `Category_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `product_category_idx` (`Category_id`),
  CONSTRAINT `product_category` FOREIGN KEY (`Category_id`) REFERENCES `category` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Debit Card','Point of Sale (POS) GlossaryPoint of Sale (POS) Glossary\nA debit transaction is a point of sale purchase that is processed using a bank card linked to a checking account. Unlike a credit transaction, a debit transaction usually requires that the customer have the money available in their bank account to cover the transaction.\n\nDebit transactions are similar to checks in that they work against a checking account balance instead of credit. A debit card transaction may allow a customer to simultaneously make a cash withdrawal from their account and then receive the money from the merchant.\n\nA POS terminal may prompt the customer for a secret personal identification number (PIN) for debit transactions or withdrawals. The use of a PIN depends on the conditions of the card and merchant preferences. Debit cards can also usually be used at an automatic teller machine (ATM) to access a customer’s bank account.','https://www.shutterstock.com/image-illustration/debit-card-isolated-on-white-260nw-542784994.jpg',12,0.21,7),(2,'Saving Accounts','Description:\nSavings accounts are deposit accounts held by individuals at banks or credit unions.\nThey are designed to store funds securely while earning interest on the deposited money.\nSavings accounts are typically liquid, meaning the funds can be easily accessed when needed, though there may be restrictions on the number of withdrawals allowed per month.\nFeatures:\nInterest Earnings: Savings accounts accrue interest on the deposited funds, with the interest rate varying depending on the bank and prevailing market rates.\nAccessibility: Funds in savings accounts can be accessed through various channels, including ATMs, online banking, mobile apps, and in-person visits to bank branches.\nSafety: Savings accounts are insured by the Federal Deposit Insurance Corporation (FDIC) in the United States or similar agencies in other countries, providing protection for deposits up to a certain limit (e.g., $250,000 in the U.S.).\nNo Risk of Loss: Unlike investments in stocks or other securities, savings accounts are considered low-risk because the principal amount is typically not subject to market fluctuations.\nNo Expiry Date: Savings accounts do not have an expiration date, so the funds can remain in the account indefinitely, allowing individuals to save for short-term or long-term goals.\nBenefits:\nEmergency Fund: Savings accounts provide a safe place to store funds for unexpected expenses or emergencies, offering financial security and peace of mind.\nShort-Term Goals: Individuals use savings accounts to save for short-term goals such as vacations, home renovations, or purchasing big-ticket items.\nInterest Income: Earning interest on savings can help individuals grow their wealth over time, providing a source of passive income.\nEasy Access: Unlike some other types of investments, funds in savings accounts are readily accessible, making them suitable for funds needed in the near future.\nFees and Requirements:\nMinimum Balance: Some savings accounts may require a minimum balance to open the account or avoid monthly maintenance fees.\nMonthly Maintenance Fees: Some banks charge monthly fees if certain balance requirements are not met or if the account does not meet specific criteria.\nWithdrawal Limits: Federal regulations in the U.S. limit the number of certain types of withdrawals or transfers from savings accounts to six per month, though this limit may vary by country and financial institution.\nTypes of Savings Accounts:\nBasic Savings Account: Offers a simple account structure with competitive interest rates and easy access to funds.\nHigh-Yield Savings Account: Typically offers higher interest rates than basic savings accounts, often with higher minimum balance requirements.\nMoney Market Account: Combines features of savings and checking accounts, offering higher interest rates and check-writing privileges but may have higher minimum balance requirements.\nCertificates of Deposit (CDs): Time-based savings accounts with fixed terms and interest rates, typically offering higher rates than regular savings accounts but with penalties for early withdrawals.\nOnline Savings Accounts:\nOnline banks often offer savings accounts with competitive interest rates and minimal fees, as they have lower overhead costs compared to traditional brick-and-mortar banks.','https://www.nj.com/personal-finance/static/53a4e3dff0e918cc1de8f39c5b99adac/f61e6/types-of-savings-accounts.webp',2,0.21,3),(5,'Current account','Description:\nA current account, also known as a checking account or transaction account, is a type of bank account that businesses use for their daily banking needs.\nIt allows businesses to deposit and withdraw funds as needed, make payments to suppliers, employees, and other parties, and manage cash flow effectively.\nCurrent accounts may be held at banks, credit unions, or other financial institutions.\nFeatures:\nDeposits and Withdrawals: Businesses can deposit funds into their current account through various channels, including cash, checks, electronic transfers, and direct deposits. They can also withdraw funds as needed through checks, electronic transfers, or debit cards.\nNo Interest: Unlike savings accounts, current accounts generally do not earn interest on the deposited funds. They are primarily transactional accounts used for managing cash flow rather than saving.\nOverdraft Facility: Many current accounts offer overdraft facilities, allowing businesses to withdraw more funds than they have available in the account, up to a pre-approved limit. Overdrafts may incur interest charges or fees.\nOnline Banking: Current accounts typically come with online banking services, allowing businesses to access account information, view transaction history, and perform transactions remotely.\nBill Payments: Businesses can use their current accounts to make payments to suppliers, vendors, employees, and other parties through various methods such as checks, electronic transfers (ACH), or wire transfers.\nAccount Statements: Banks provide regular statements detailing account activity, including deposits, withdrawals, and fees, which businesses can use for record-keeping and reconciliation.\nBenefits:\nConvenience: Current accounts provide businesses with a convenient and efficient way to manage their day-to-day banking needs, including receiving payments, paying bills, and making transactions.\nCash Flow Management: By using a current account, businesses can effectively manage their cash flow by depositing revenue and paying expenses as they arise.\nAccess to Credit: Current accounts with overdraft facilities offer businesses access to short-term credit, allowing them to cover cash flow gaps or unexpected expenses.\nFinancial Record-Keeping: Current account statements serve as a record of financial transactions, which businesses can use for budgeting, accounting, and tax purposes.\nFees and Charges:\nMonthly Maintenance Fees: Some banks charge monthly maintenance fees for current accounts, though these fees may be waived if certain balance requirements are met or if the account is linked to other banking services.\nTransaction Fees: Businesses may incur fees for certain transactions, such as wire transfers, foreign currency transactions, or cash deposits and withdrawals beyond a certain limit.\nOverdraft Fees: If a business uses the overdraft facility, they may incur interest charges or fees for the amount overdrawn.\nTypes of Current Accounts:\nBusiness Current Account: Specifically designed for businesses, offering features tailored to their needs such as higher transaction limits, multiple user access, and business-specific services.\nSole Proprietorship Account: For individuals operating a business as a sole proprietor, providing a separate account for business finances.\nCorporate Current Account: Offered to larger corporations or entities, often with additional features such as international banking services, foreign currency accounts, and specialized cash management tools.','https://legaldocs.co.in/img/blog/What%20is%20current%20account-min.webp',5,0.00,4),(6,'Small Business Loan','Description:\nSmall business loans are loans specifically tailored to meet the financing needs of small and medium-sized businesses.\nThese loans can be used for a variety of purposes, including starting a new business, expanding operations, purchasing equipment, hiring employees, managing cash flow, or refinancing existing debt.\nSmall business loans may be offered by banks, credit unions, online lenders, or government-backed programs such as the Small Business Administration (SBA).\nFeatures:\nLoan Amount: Small business loans can range from a few thousand dollars to several million dollars, depending on the lender and the financial needs of the business.\nInterest Rate: Interest rates on small business loans can be fixed or variable and may vary based on factors such as the borrowers creditworthiness, the term of the loan, and prevailing market rates.\nRepayment Term: The repayment term for small business loans typically ranges from one to seven years, though longer terms may be available for certain types of loans.\nCollateral: Some small business loans may require collateral, such as business assets, inventory, or real estate, to secure the loan. However, many lenders offer unsecured loans for small businesses.\nApplication Process: Applying for a small business loan usually involves submitting a business plan, financial statements, tax returns, and other documentation to demonstrate the businesss creditworthiness and ability to repay the loan.\nBenefits:\nAccess to Capital: Small business loans provide access to capital that businesses can use to start, grow, or sustain their operations.\nFlexibility: These loans offer flexibility in terms of how the funds can be used, allowing businesses to address various financial needs and opportunities.\nAffordable Financing: With competitive interest rates and favorable terms, small business loans offer affordable financing options for businesses looking to borrow money.\nCredit Building: Timely repayment of small business loans can help businesses build credit, making it easier to qualify for future financing and improve financial stability.\nBusiness Growth: By providing funding for expansion, equipment purchases, or hiring, small business loans can help businesses grow and increase revenue.\nTypes of Small Business Loans:\nTerm Loans: Traditional small business loans with a fixed loan amount, interest rate, and repayment term.\nLines of Credit: Revolving credit lines that businesses can draw from as needed, with interest charged only on the amount borrowed.\nEquipment Financing: Loans specifically for purchasing equipment or machinery, with the equipment serving as collateral.\nSBA Loans: Government-backed loans offered by the Small Business Administration, providing favorable terms and flexible eligibility criteria for small businesses.\nInvoice Financing: Financing based on outstanding invoices, where businesses receive funding upfront against unpaid invoices.\nFees and Charges:\nOrigination Fees: Some lenders charge origination fees for processing and disbursing the loan.\nInterest Rates: Interest rates vary depending on the lender and the borrowers creditworthiness, with higher-risk borrowers typically facing higher rates.\nPrepayment Penalties: Some loans may have prepayment penalties for paying off the loan early.\nLate Payment Fees: Businesses may incur fees for late or missed payments, affecting their credit and overall cost of borrowing. ','https://www.merchantmaverick.com/wp-content/uploads/2018/10/bigstock-Small-Business-Loan-Form-Finan-168847004.jpg',4,0.21,2),(8,'Current Account','A checking account with no minimum balance requirement.','current_account_image.jpg',NULL,0.00,3),(9,'1-Year Certificate of Deposit','Earn a fixed interest rate over a 1-year term.','1_year_certificate_image.jpg',1,0.08,5),(10,'3-Year Certificate of Deposit','Lock in your funds for 3 years at a higher interest rate.','3_year_certificate_image.jpg',3,0.10,5),(11,'5-Year Certificate of Deposit','Maximize your savings with a long-term CD.','5_year_certificate_image.jpg',5,0.12,5),(12,'3-Year Certificate of Deposit','Lock in your funds for 3 years at a higher interest rate.','3_year_certificate_image.jpg',3,0.10,6),(13,'5-Year Certificate of Deposit','Maximize your savings with a long-term CD.','5_year_certificate_image.jpg',5,0.12,6),(14,'Personal Loan','Flexible borrowing options for personal expenses.','personal_loan_image.jpg',3,0.07,1),(15,'Auto Loan','Finance your new or used vehicle purchase with competitive rates.','auto_loan_image.jpg',5,0.05,1),(16,'new certificate','New Certificate','New Certificate',10,15.00,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 10:15:33
