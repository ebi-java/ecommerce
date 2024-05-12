
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
use ecommerce;

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;



LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Loans','Banking Loans are financial instruments where a lender provides funds to a borrower, who agrees to repay the borrowed amount along with interest and any applicable fees over a specified period.','Retail'),(2,'Loans','Banking loans for corporations are financial products that provide businesses with access to funds for various purposes, such as expansion, working capital, equipment purchases, or refinancing existing debt.','CORPORATE'),(3,'Accounts','Banking Accounts, refers to various types of financial accounts that individuals might have with a bank or financial institution.','Retail'),(4,'Accounts','Corporate Banking Accounts are essential financial tools that enable businesses to manage their funds, conduct transactions, and achieve their financial objectives.','CORPORATE'),(5,'Certificates','Banking Certificates, typically referring to \"Certificates of Deposit\" (CDs) in a financial context, are fixed-term deposits offered by banks and credit unions.','Retail'),(6,'Certificates','Banking Certificates for corporations, also known as corporate certificates of deposit (CDs), offer businesses a way to earn interest on their surplus funds while maintaining a degree of liquidity.','CORPORATE'),(7,'Cards','Banking Cards are financial tools providing convenience and security in personal finance management.','Retail'),(8,'Cards','Banking Cards for corporate use, banks typically offer a range of cards tailored to business needs. These cards often come with features like expense tracking, spending limits, and rewards geared toward business expenses.','CORPORATE');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;



LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Debit Card','Point of Sale (POS) GlossaryPoint of Sale (POS) Glossary\nA debit transaction is a point of sale purchase that is processed using a bank card linked to a checking account. Unlike a credit transaction, a debit transaction usually requires that the customer have the money available in their bank account to cover the transaction.\n\nDebit transactions are similar to checks in that they work against a checking account balance instead of credit. A debit card transaction may allow a customer to simultaneously make a cash withdrawal from their account and then receive the money from the merchant.\n\nA POS terminal may prompt the customer for a secret personal identification number (PIN) for debit transactions or withdrawals. The use of a PIN depends on the conditions of the card and merchant preferences. Debit cards can also usually be used at an automatic teller machine (ATM) to access a customer’s bank account.','https://www.shutterstock.com/image-illustration/debit-card-isolated-on-white-260nw-542784994.jpg',12,0.21,7),(2,'Saving Accounts','Description:\nSavings accounts are deposit accounts held by individuals at banks or credit unions.\nThey are designed to store funds securely while earning interest on the deposited money.\nSavings accounts are typically liquid, meaning the funds can be easily accessed when needed, though there may be restrictions on the number of withdrawals allowed per month.\nFeatures:\nInterest Earnings: Savings accounts accrue interest on the deposited funds, with the interest rate varying depending on the bank and prevailing market rates.\nAccessibility: Funds in savings accounts can be accessed through various channels, including ATMs, online banking, mobile apps, and in-person visits to bank branches.\nSafety: Savings accounts are insured by the Federal Deposit Insurance Corporation (FDIC) in the United States or similar agencies in other countries, providing protection for deposits up to a certain limit (e.g., $250,000 in the U.S.).\nNo Risk of Loss: Unlike investments in stocks or other securities, savings accounts are considered low-risk because the principal amount is typically not subject to market fluctuations.\nNo Expiry Date: Savings accounts do not have an expiration date, so the funds can remain in the account indefinitely, allowing individuals to save for short-term or long-term goals.\nBenefits:\nEmergency Fund: Savings accounts provide a safe place to store funds for unexpected expenses or emergencies, offering financial security and peace of mind.\nShort-Term Goals: Individuals use savings accounts to save for short-term goals such as vacations, home renovations, or purchasing big-ticket items.\nInterest Income: Earning interest on savings can help individuals grow their wealth over time, providing a source of passive income.\nEasy Access: Unlike some other types of investments, funds in savings accounts are readily accessible, making them suitable for funds needed in the near future.\nFees and Requirements:\nMinimum Balance: Some savings accounts may require a minimum balance to open the account or avoid monthly maintenance fees.\nMonthly Maintenance Fees: Some banks charge monthly fees if certain balance requirements are not met or if the account does not meet specific criteria.\nWithdrawal Limits: Federal regulations in the U.S. limit the number of certain types of withdrawals or transfers from savings accounts to six per month, though this limit may vary by country and financial institution.\nTypes of Savings Accounts:\nBasic Savings Account: Offers a simple account structure with competitive interest rates and easy access to funds.\nHigh-Yield Savings Account: Typically offers higher interest rates than basic savings accounts, often with higher minimum balance requirements.\nMoney Market Account: Combines features of savings and checking accounts, offering higher interest rates and check-writing privileges but may have higher minimum balance requirements.\nCertificates of Deposit (CDs): Time-based savings accounts with fixed terms and interest rates, typically offering higher rates than regular savings accounts but with penalties for early withdrawals.\nOnline Savings Accounts:\nOnline banks often offer savings accounts with competitive interest rates and minimal fees, as they have lower overhead costs compared to traditional brick-and-mortar banks.','https://www.nj.com/personal-finance/static/53a4e3dff0e918cc1de8f39c5b99adac/f61e6/types-of-savings-accounts.webp',2,0.21,3),(3,'Personal Loan','Description:\nPersonal loans are unsecured loans provided to individuals by banks, credit unions, or online lenders.\nThey are typically used for purposes such as debt consolidation, home improvements, medical expenses, vacations, or other major purchases.\nUnlike secured loans (e.g., auto loans or mortgages), personal loans do not require collateral, but approval is based on the borrowers creditworthiness and income.Features:Loan Amount: Personal loans can range from a few hundred dollars to tens of thousands of dollars, depending on the lender and the borrowers financial situation.\nInterest Rate: Personal loan interest rates can be fixed (remain the same throughout the loan term) or variable (may change based on market conditions).\nTerm: The repayment term for personal loans typically ranges from one to seven years, with monthly payments spread out over the term.\nCredit Check: Most lenders perform a credit check to assess the borrowers creditworthiness, though there are options available for individuals with less-than-perfect credit.Fees: Some personal loans may have origination fees, late payment fees, or prepayment penalties, so its essential to understand the fee structure before taking out a loan.Application Process:Individuals can apply for personal loans online, through banks, credit unions, or other financial institutions.\nThe application process typically involves submitting personal and financial information, such as income, employment history, and credit score.\nLenders may also require documentation such as pay stubs, bank statements, or tax returns to verify income and employment.\nBenefits:\nDebt Consolidation: Personal loans can be used to consolidate high-interest debt into a single, more manageable payment, potentially saving money on interest.\nFlexibility: Borrowers can use personal loans for a variety of purposes, providing flexibility to address different financial needs.\nFixed Payments: With fixed interest rates and fixed monthly payments, personal loans offer predictability and stability, making budgeting easier.\nQuick Access to Funds: Once approved, funds from personal loans are typically disbursed quickly, allowing borrowers to address their financial needs promptly.\nConsiderations:\nCredit Score: Borrowers with higher credit scores typically qualify for lower interest rates and better loan terms, so its essential to maintain good credit.\nAffordability: Before taking out a personal loan, borrowers should consider whether they can afford the monthly payments and if the loan is the best option for their financial situation.\nRepayment Schedule: Borrowers should understand the repayment schedule, including the total amount to be repaid and the duration of the loan term.\nInterest Rates: Its crucial to compare interest rates from multiple lenders to ensure the borrower gets the best possible rate and terms.','https://bsmedia.business-standard.com/_media/bs/img/article/2024-03/19/full/1710817465-1851.jpg?im=FeatureCrop,size=(826,465)',4,0.10,1),(4,'Credit Cards','Description:\nCorporate credit cards are issued to businesses and organizations for the purpose of making purchases and managing expenses.\nThey are typically linked to a corporate account rather than an individuals personal credit account.\nCorporate credit cards may be issued to specific employees or departments within the organization, each with its own spending limits and controls.\nFeatures:Customizable Spending Limits: Businesses can set spending limits on each corporate credit card based on the employees role, department, or other factors.\nExpense Tracking: Corporate credit card transactions are typically categorized, tracked, and reported, making it easier for businesses to monitor spending and manage expenses.\nEmployee Controls: Companies can implement controls such as transaction limits, merchant category restrictions, and real-time alerts to prevent unauthorized or excessive spending.\nIntegration with Accounting Software: Many corporate credit card programs offer integration with accounting software, allowing for seamless expense tracking, reporting, and reconciliation.\nRewards and Incentives: Some corporate credit cards offer rewards programs, cashback incentives, or other benefits for business-related spending.\nBenefits:\nConvenience: Corporate credit cards provide a convenient way for employees to make purchases and manage business expenses without using personal funds or going through a reimbursement process.\nCash Flow Management: By using corporate credit cards, businesses can manage cash flow more effectively by delaying payment until the end of the billing cycle.\nExpense Control: Companies can set spending limits, monitor transactions in real-time, and enforce spending policies to control costs and prevent misuse.\nStreamlined Reporting: Corporate credit card programs offer detailed transaction data and reporting tools, making it easier for businesses to track expenses, analyze spending patterns, and generate financial reports.\nFees and Requirements:\nAnnual Fees: Many corporate credit cards charge annual fees, though some may waive the fee for the first year or offer fee waivers based on spending volume.\nInterest Rates: Corporate credit cards may have variable interest rates based on market conditions and the creditworthiness of the business.\nAdditional Cardholder Fees: Some programs charge fees for each additional card issued to employees or departments within the organization.\nLate Payment Fees: Companies may incur late payment fees if they fail to pay the credit card balance by the due date.\nLimitations:\nCredit Limits: Corporate credit cards have credit limits, so businesses must manage spending within these limits to avoid declined transactions or over-limit fees.\nRisk of Misuse: Without proper controls and monitoring, corporate credit cards can be vulnerable to misuse, fraud, or unauthorized spending.\nInterest Charges: If businesses carry a balance on their corporate credit cards, they may incur interest charges, which can add to the cost of using credit.\nTypes of Corporate Credit Cards:\nCompany Credit Cards: Issued in the companys name and used by authorized employees for business expenses.\nPurchasing Cards (P-Cards): Designed specifically for purchasing goods and services, often with restricted merchant categories and spending controls.\nTravel Cards: Geared toward business travel expenses such as flights, hotels, and rental cars, often offering travel-related perks and benefits.','https://navi.com/blog/wp-content/uploads/2022/06/credit-card.jpg',5,0.10,8),(5,'Current account','Description:\nA current account, also known as a checking account or transaction account, is a type of bank account that businesses use for their daily banking needs.\nIt allows businesses to deposit and withdraw funds as needed, make payments to suppliers, employees, and other parties, and manage cash flow effectively.\nCurrent accounts may be held at banks, credit unions, or other financial institutions.\nFeatures:\nDeposits and Withdrawals: Businesses can deposit funds into their current account through various channels, including cash, checks, electronic transfers, and direct deposits. They can also withdraw funds as needed through checks, electronic transfers, or debit cards.\nNo Interest: Unlike savings accounts, current accounts generally do not earn interest on the deposited funds. They are primarily transactional accounts used for managing cash flow rather than saving.\nOverdraft Facility: Many current accounts offer overdraft facilities, allowing businesses to withdraw more funds than they have available in the account, up to a pre-approved limit. Overdrafts may incur interest charges or fees.\nOnline Banking: Current accounts typically come with online banking services, allowing businesses to access account information, view transaction history, and perform transactions remotely.\nBill Payments: Businesses can use their current accounts to make payments to suppliers, vendors, employees, and other parties through various methods such as checks, electronic transfers (ACH), or wire transfers.\nAccount Statements: Banks provide regular statements detailing account activity, including deposits, withdrawals, and fees, which businesses can use for record-keeping and reconciliation.\nBenefits:\nConvenience: Current accounts provide businesses with a convenient and efficient way to manage their day-to-day banking needs, including receiving payments, paying bills, and making transactions.\nCash Flow Management: By using a current account, businesses can effectively manage their cash flow by depositing revenue and paying expenses as they arise.\nAccess to Credit: Current accounts with overdraft facilities offer businesses access to short-term credit, allowing them to cover cash flow gaps or unexpected expenses.\nFinancial Record-Keeping: Current account statements serve as a record of financial transactions, which businesses can use for budgeting, accounting, and tax purposes.\nFees and Charges:\nMonthly Maintenance Fees: Some banks charge monthly maintenance fees for current accounts, though these fees may be waived if certain balance requirements are met or if the account is linked to other banking services.\nTransaction Fees: Businesses may incur fees for certain transactions, such as wire transfers, foreign currency transactions, or cash deposits and withdrawals beyond a certain limit.\nOverdraft Fees: If a business uses the overdraft facility, they may incur interest charges or fees for the amount overdrawn.\nTypes of Current Accounts:\nBusiness Current Account: Specifically designed for businesses, offering features tailored to their needs such as higher transaction limits, multiple user access, and business-specific services.\nSole Proprietorship Account: For individuals operating a business as a sole proprietor, providing a separate account for business finances.\nCorporate Current Account: Offered to larger corporations or entities, often with additional features such as international banking services, foreign currency accounts, and specialized cash management tools.','https://legaldocs.co.in/img/blog/What%20is%20current%20account-min.webp',5,0.00,4),(6,'Small Business Loan','Description:\nSmall business loans are loans specifically tailored to meet the financing needs of small and medium-sized businesses.\nThese loans can be used for a variety of purposes, including starting a new business, expanding operations, purchasing equipment, hiring employees, managing cash flow, or refinancing existing debt.\nSmall business loans may be offered by banks, credit unions, online lenders, or government-backed programs such as the Small Business Administration (SBA).\nFeatures:\nLoan Amount: Small business loans can range from a few thousand dollars to several million dollars, depending on the lender and the financial needs of the business.\nInterest Rate: Interest rates on small business loans can be fixed or variable and may vary based on factors such as the borrowers creditworthiness, the term of the loan, and prevailing market rates.\nRepayment Term: The repayment term for small business loans typically ranges from one to seven years, though longer terms may be available for certain types of loans.\nCollateral: Some small business loans may require collateral, such as business assets, inventory, or real estate, to secure the loan. However, many lenders offer unsecured loans for small businesses.\nApplication Process: Applying for a small business loan usually involves submitting a business plan, financial statements, tax returns, and other documentation to demonstrate the businesss creditworthiness and ability to repay the loan.\nBenefits:\nAccess to Capital: Small business loans provide access to capital that businesses can use to start, grow, or sustain their operations.\nFlexibility: These loans offer flexibility in terms of how the funds can be used, allowing businesses to address various financial needs and opportunities.\nAffordable Financing: With competitive interest rates and favorable terms, small business loans offer affordable financing options for businesses looking to borrow money.\nCredit Building: Timely repayment of small business loans can help businesses build credit, making it easier to qualify for future financing and improve financial stability.\nBusiness Growth: By providing funding for expansion, equipment purchases, or hiring, small business loans can help businesses grow and increase revenue.\nTypes of Small Business Loans:\nTerm Loans: Traditional small business loans with a fixed loan amount, interest rate, and repayment term.\nLines of Credit: Revolving credit lines that businesses can draw from as needed, with interest charged only on the amount borrowed.\nEquipment Financing: Loans specifically for purchasing equipment or machinery, with the equipment serving as collateral.\nSBA Loans: Government-backed loans offered by the Small Business Administration, providing favorable terms and flexible eligibility criteria for small businesses.\nInvoice Financing: Financing based on outstanding invoices, where businesses receive funding upfront against unpaid invoices.\nFees and Charges:\nOrigination Fees: Some lenders charge origination fees for processing and disbursing the loan.\nInterest Rates: Interest rates vary depending on the lender and the borrowers creditworthiness, with higher-risk borrowers typically facing higher rates.\nPrepayment Penalties: Some loans may have prepayment penalties for paying off the loan early.\nLate Payment Fees: Businesses may incur fees for late or missed payments, affecting their credit and overall cost of borrowing. ','https://www.merchantmaverick.com/wp-content/uploads/2018/10/bigstock-Small-Business-Loan-Form-Finan-168847004.jpg',4,0.21,2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;



LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
-- Inserting data for accounts category
INSERT INTO product (Name, Details, Image, Duration, Interest_rate, category_id) VALUES
                                                                                     ('Saving Account', 'A standard savings account with competitive interest rates.', 'saving_account_image.jpg', NULL, 0.05, 1),
                                                                                     ('Current Account', 'A checking account with no minimum balance requirement.', 'current_account_image.jpg', NULL, 0.02, 1);

-- Inserting data for certificates category
INSERT INTO product (Name, Details, Image, Duration, Interest_rate, category_id) VALUES
                                                                                     ('1-Year Certificate of Deposit', 'Earn a fixed interest rate over a 1-year term.', '1_year_certificate_image.jpg', 1, 0.08, 2),
                                                                                     ('3-Year Certificate of Deposit', 'Lock in your funds for 3 years at a higher interest rate.', '3_year_certificate_image.jpg', 3, 0.1, 2),
                                                                                     ('5-Year Certificate of Deposit', 'Maximize your savings with a long-term CD.', '5_year_certificate_image.jpg', 5, 0.12, 2);

-- Inserting data for loans category
INSERT INTO product (Name, Details, Image, Duration, Interest_rate, category_id) VALUES
                                                                                     ('Personal Loan', 'Flexible borrowing options for personal expenses.', 'personal_loan_image.jpg', 3, 0.07, 3),
                                                                                     ('Auto Loan', 'Finance your new or used vehicle purchase with competitive rates.', 'auto_loan_image.jpg', 5, 0.05, 3);

-- Inserting data for cards category
INSERT INTO product (Name, Details, Image, Duration, Interest_rate, category_id) VALUES
                                                                                     ('Credit Card', 'Enjoy rewards and benefits with our credit card options.', 'credit_card_image.jpg', NULL, 0.18, 4),
                                                                                     ('Debit Card', 'Convenient access to your funds for everyday purchases.', 'debit_card_image.jpg', NULL, 0.00, 4);
