var mysql = require('mysql');
var inquirer = require('inquirer');

// mySQL connection
var connection = mysql.createConnection({
	host: "localhost",
	port: "3306",
	user: "root",
	password: "",
	database: "bamazon_db"
});

connection.query("SELECT * FROM products", function (err, res) {
					if (err) throw err;
					console.log("Item    Product \t\tDepartment \tPrice\t Stock");
					console.log("------------------------------------------------------------------");
						for (var i = 0; i < res.length; i++) {
						console.log(res[i].ItemID + " \t" + res[i].ProductName + "\t" + res[i].DepartmentName + "\t" + res[i].Price + " \t " + res[i].StockQuantity); 
						}
						console.log("------------------------------------------------------------------");
					
				inquirer.prompt([{
					name: "product",
					type: "input",
					message: "What is the ID of the product that works best for you? [Changed your mind? Press Y]"
					}, 
				{
				
			}]).then(function (ansProd) {
				if (ansProd.product.toUpperCase() == "Y") { connection.end(); return; }
					else {
						inquirer.prompt([{
							name: "qty",
							type: "input",
							message: "You will claim your write-off later, so how many of this product did you have in mind?"

			}]).then(function (ansQty) {
				console.log(ansProd.product);
					
connection.query('SELECT * FROM products WHERE ?', [{ ProductName: ansProd.product }], function (err, res) {
					if (err) throw err;
					if (res[0].StockQuantity > ansQty.qty) {
		
				var cost = res[0].Price * ansQty.qty
				console.log("-----------------------------------");
				console.log("Your order is validated! \nThe total cost is $" + cost.toFixed(2) + "\nThank you for ordering")
		
				var newQty = res[0].StockQuantity - ansQty.qty

connection.query("UPDATE products SET ? WHERE ?", [{
					StockQuantity: newQty
					}, 
				{
					ProductName: ansProd.product
					}], 
	
					function (err, res) { 
					});
				} 
				else {
					console.log("-----------------------------------");
					console.log("Sorry, we do not have enough in stock. \nWe only have " + res[0].StockQuantity + " units of " + ansProd.product + ". \nPlease retry your order. \nThank you!")
					}			
				})
			})
		}
	})
});