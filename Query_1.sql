SELECT distinct(transactions.currency) from sales.transactions;

SELECT COUNT(*) from transactions where transactions.currency = "INR\r";  #Probably bad records
SELECT COUNT(*) from transactions where transactions.currency = "INR";  #Probably good records
#Filtering out the records which has USD's
SELECT * from transactions where transactions.currency = "USD\r" or transactions.currency = "USD";
SELECT * from transactions where transactions.currency = "USD";