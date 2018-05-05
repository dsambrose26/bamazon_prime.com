//Install this module everytime to check for .env file to protect secrets and it makes sure secrets are added to my environment and not my source code
//Never commit .env file to github. Create .gitignore that includes the .env file so it is not added to github
//require("dot-env");

var mysql = require("mysql");
var inquirer = require("inquirer");
var table = require("console.table");

var connection = mysql.createConnection({
	host: 'localhost',
	port: 3306,
	user: 'root',
	password: 'root',
	database: 'bamazon_db'
});

connection.connect(function(err) {
	if(err) throw err;
	display();
});

//Function is displaying items for sale: ids, names, and prices
function display() {
	connection.query("SELECT * FROM products", function(err, res) {
		if (err) throw err;
		console.table(res);

//Order
	inquirer
		.prompt([
			{
	 		name: "choice",
	       	type: "input",
	    	message: "Which Product ID?"
       		},
       		{
			name: "number",
	       	type: "input",
	        message: "How many of this Product?"
       		}
			])
		
//Answer for quantity in stock of chosen item
       	.then(function(answer) {
       		var chosenItem;
           		for (var i=0; i < res.length; i++) {
					   if(res[i].item_id === answer.choice) { 
						   chosenItem = res[i];
						}
       				}
       			if(chosenItem.stock_quantity < parseInt(answer.number)){
       			console.log("Item(s) is/are available")

//Update database
connection.query("UPDATE products SET ? WHERE ?",[
    {
       	stock_quantity: number
    },
    {
       	item_id: chosenItem
    }],
       	function(error) {
       		if (error) throw err;
       		console.log("Benefits purchased! Check your email and follow the instructions on completing this purchase.");
       		display();
       	}
    );	
	}
	
//Log if quanitity is not available        		
       		else {
       			console.log("Insufficient Quantity!");
       			display();
       	}		
    });
})};
