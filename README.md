## Node.js & MySQL - #### (the README is the project, scroll down)

![screen shot 2018-05-10 at 7 27 15 pm](https://user-images.githubusercontent.com/34081511/39899166-63d39cd8-5488-11e8-8442-cf5ab29cc2de.png)


## Overview

1. Creating an Amazon-like storefront with MySQL

2. Take in orders from customers and deplete stock from the store's inventory 

	Bonus: 
	* Track product sales 
	* Summarize the highest-grossing departments

4. Save and require the MySQL and Inquirer npm packages 

## Submission Guide

1. Deploy to GitHub

2. CLI App, so no Heroku

3. Include screenshots of working app with no bugs in a `README.md` file

## Instructions

### Challenge: Customer View

1. Create a MySQL Database: `bamazon`

2. Create a Table inside of that database: `products`

3. Create the following columns in the products table:

   * item_id (unique id for each product)

   * product_name (name of product)

   * department_name

   * price (cost to customer)

   * stock_quantity (how much of the product is available in stores)

4. Populate database around 10 different products (i.e. Insert "mock" data rows into this database and table)

5. Create Node app: `bamazonCustomer.js`

6. Make app prompt users with two messages:

   * The first should ask them the ID of the product they would like to buy
   
   * The second message should ask how many units of the product they would like to buy
   
 7. After customer pays: 

   * Make app check selected product inventory
   
   * If no inventory, log phrase and prevent the order 
   
   * If inventory _is_ available, then fulfill order; this means,  update SQL database and reflect remaining quantity
   
   * After updates, display total cost of purchase

- - -

* If this activity took you between 8-10 hours, then you've put enough time into this assignment. Feel free to stop here -- unless you want to take on the next challenge.

- - -

More functionality could be added at a later date to share the scope of this project to potential employers and peers.

##### [Download my Resume](https://dsambrose26.github.io/derek_ambroseResume/ "pdfResume")    
##### [derekambrose@outlook.com](mailto:derekambrose@outlook.com)

