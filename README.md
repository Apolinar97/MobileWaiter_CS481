# Mobile Waiter-CS481 Midterm project

## Introudction
Mobile Waiter expedites the food ordering process in restaurants. In addition, it also reduces the human error/ miscommunication in the ordering experience for both the customer and restaurant staff. 
Implemented for CS481 midterm. 



## Software Used
* Xcode: Framework used to build a native ios Application
* Firebase: Used as database server and user authentication
* Cocoapods: Dependency Manager
* Swift: Programming language used.

## Incomplete Features
###### Feature One
__Type__: User feature
__Description__: Ability for user to look at previous purchases they made.


## Documentation

###### Use Cases
Currently there is only two restaurants in the database, for testing purposes. This application is supposed to be used in conjuction with a web client, that would allow a restuarant owner register the restaurant. __Valid IDs are: 100 and 101.__ 

1.The user must first make an account, if they have not yet registered. 

2.The user's is then greeted by a view, in which they must input the restaurant's id.
    * Note that: there are only two restaurants in the database. (100,101).
    Defensive programming is used to validate user inputs for ids. However, the string input was an oversight. 
    
3. The user can then switch around tabs which are the following
   * Restaurant
   * Menu
   * My Account

4. In the restaurant tab, there are two buttons. To either vacate the table, or check-in into the restaurant.
As of now, these buttons simply change a label with the appropriate message respective to each button.
For future features, this button can perhaps signal the restaurant client application that the user is indeed checking in, or vacating. 

5. Under the Menu tab, the database is queried with the restaurant id to pull up all of the respective menu items into a table view. The user can press down on each table cell to get more information about an item. A stepper is used to keep track of the user's desired quanity of items.
* The user is then asked to confirm their order.
* A new view opens with a order summary
* The total amount for the price is then calculated, and demostrated to the user.
* Tipping is an option the user is presented with. 
* Once they "pay" for their order, the summary is then pushed into the database.

6. The My Account tab has limited functionality at this point in time. The intended use is for the user to get a summary of past orders. Can also serve as a receipt generator. 
* __Note__: This will be implemented if it is decided that this project will serve as the class final project.


###### API Documentation
In the works


###### Bugs
There is one major bug. The restaurant look up method does not check if the user input is valid. A string input will crash the program and cause a threading exeception. __Only input of type Int is allowed.__
