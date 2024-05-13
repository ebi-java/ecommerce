# Banking E-Commerce System
## Features
- Admin panel to add, update, and remove customers, products, and their categories
- Users and visitors can view the different products offered by the bank
- Existing customers can subscribe to products

## Installation Guide
### Database Setup
The project uses MySQL database to store and retreive data.
- Create a new database named 'ecommerce'
- All the tables are provided by sql scripts located [here](https://github.com/ebi-java/ecommerce/tree/master/DB/individual)
- Add the test data using the sql scripts located [here](https://github.com/ebi-java/ecommerce/blob/master/DB/insertion/ecom.sql)

### Project Setup
- With the database setup,
  - Open the project in your preferred IDE
  - Reload the maven project
- In spring boot's `application.properties file` located in `src\main\resources`,
  - Change the `spring.datasource.username` value to your MySQL username
  - Change the `spring.datasource.password` value to your MySQL password
- Run the project
  - Visit the url: http://localhost:8080 in your preferred web browser
  - To view the admin panel, visit http://localhost:8080/admin/home
  - The default admin username is `admin` and password is `admin`
