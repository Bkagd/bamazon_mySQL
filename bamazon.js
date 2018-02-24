// dependencies
var mysql = require("mysql");
var inquirer = require("inquirer");
var Table = require("cli-table");
var prompt = inquirer.createPromptModule();

// connection variable
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon"
});

//creating connection and running our displayDB function
connection.connect(function(err) {
    if (err) throw err;
    console.log("connected as id " + connection.threadId);
    console.log("here is what we currently have in stock:");
    displayDB();
    inquirer.prompt([
        {
            type: "input",
            name: "buyPrompt",
            message: "What would you like to buy?"
        }

    ]).then(function(user) {
        console.log ("==================");
        console.log("");
    });

// connects to our DB and logs in the CLI.  uses "cli-table" for pretty table 
function displayDB() {
    connection.query("SELECT * FROM products", function(err, res) {
        if (err) throw err;

        var table = new Table({
            head: ["item_id", "product_name", "department_name", "price", "stock_quantity"],
            colWidths: [5, 35, 25, 10, 10]
        });

        for (var i = 0; i < res.length; i++) {
            table.push([res[i].item_id, res[i].product_name, res[i].department_name, res[i].price, res[i].stock_quantity]);
        }

        console.log(table.toString());
       // connection.end();
    })
}});