
Command line app which interacts with a public API and allows a user to query the data.

# Content of ReadMe

1.	What Is This Repo. The Task.
2.	How You Can Install It.
3.	How You Can Use It.
4.	Languages Used / Build.
5.	Testing.
6.	User Stories.
7.	My Approach.
8.	Missing Functionality
9.	Improvements.
10.	My Main Issue/ Struggle.
11.	 Why I prioritised what I did

## What Is This Repo. The Task.

This repo was to create a tech test for Driftrock.

The aim of the test was to produce a command line app which can interact with data held in a public API. This JSON API can be accessed at:  https://driftrock-dev-test-2.herokuapp.com.

The script (app.rb) is to be opened in the command line and given one argument. This argument should determine which of the following methods should be run:

-	Total Spend of a customer (given an email output the £ total).
-	Average Spend of a customer (given an email output the £ average).
-	Most Loyal customer (output the email of the most frequent customer).
-	Highest Value customer (output the email of the customer who has spent the most).
-	Most Sold (item which has sold the most).

The answer should be output to the Command Line.

##  How You Can Install It.

Navigate to your command line. Type in:

`````
$ git clone https://github.com/abitravers1989/driftrock.git
`````

Install the gems which the application relies on by typing (in the command line):

````
$ bundle install
````

# How You Can Use It.

In your command line navigate to your ‘driftrock’ directory. Then (still in your command line) type:

`````
$ ruby app.rb total_spend insert_email_address@user.com
or
$ ruby app.rb average_spend insert_email_address@user.com
or
$ ruby app.rb most_loyal insert_email_address@user.com
or
$ ruby app.rb highest_value_customer
or
$ ruby app.rb most_sold
`````


##  Languages Used / Build

I built this using Ruby. All additional modules have been added to the gemfile.


## Testing

 Current Test Coverage is:  98.64% -- 145/147 lines in 7 files

 To test yourself navigate to the command line and type:

  `````
  $ rspec
  `````
  For linting type (still in the command line):

  `````
  $ rubocop
  `````

## User Stories

````
As a Marketer: So I can understand who to focus my re-marketing campaigns on,
I would like to see the total spend of a customer when I provide their email address.
I can then decide how much resource I should expend on retaining them.

As a Marketer: So I can understand who to focus my re-marketing campaigns on,
I would like to see the average spend of a customer when I provide their email address.
I can then decide how much resource I should expend on retaining them.
````

````
As a Marketer: So I can understand who to focus my customer-champion and loyalty campaigns on,
I would like to see the email details of the customers who purchase the most frequently from us.
I can then decide how and what loyalty benefits to offer them.

As a Marketer: So I can understand who to focus my customer-champion and loyalty campaigns on,
I would like to see the email details of the customers who has spent the most with us.
I can then focus specific campaigns on them.
````

````
As a Marketer: So I can decide which of our items our customers want and/or which campaigns have been successful,
I would like to see the name of the item which has been sold the most / appears most frequently.
I can learn from what has gone well and build on it.
````

## My Approach

1.	Mapped out classes, potential methods and relationship between them.
2.	Mapped out information flow.
3.	Listed uncertainties.
4.	Started to code.
5.	Mapped out the relationships again as I progressed.


## Improvements


Accessing Data Class

Both the user and purchase data access method are doing the same thing. They could become one method with the API data set passed into them as an argument.

At the moment I have cheated with the results per page by adding a large number. I would loop through the array data given until an empty hash occurred. This would mean not having to supply the actual page number.

I would double the API data in the test.

Most Loyal Class

Edge case: if the most loyal customers ID number did not appear in the user data, this needs addressing.

Refactoring so the methods are much shorter.


Customer Spend Class:

Should be refactored into two separate classes. Either; total spend and average spend or a class for finding the ID and a class for calculating that customers spend(both total and average).
The methods which calculate the average spend need to be made less complex (separated out so they are shorter). I would first take out the part of the method which is responsible for incrementing (/counting) the total spend. Then I would take out the part which is responsible for counting the number of times the customer has bought something.

When the number output by either of the methods ends in 0 e.g. £22.20 then the last zero is cut off by the .round method. I need to improve this.

Average spend functionality: If the customer provided has made no purchases then there is an error in the output. The average is calculated by dividing the total spend by the number of times that customer has made a purchase. When it is zero for both (0/0), get a  "ZeroDivision" Error.

Total spend: If customer has made no purchases need error message.

Most Loyal customer class:

Current issue with slowness of finding the highest value customer. Loop take a long time. (Would this be quicker in Javascript?).


All classes:

Unsure if so much should be in the initialise method.

Edge cases need to be accounted for and error messages.

Process improvements:

I identified accessing an API as an unknown. This meant I worked around it implementing parts of the task I did understand. This ended up wasting time as once I researched it, interacting with the API, seemed to be a relatively straight forward task.

I spend a little too long planning upfront. Many of the classes, methods and relationships I planned ended up being re-planned and changed. I would have benefitted more from breaking it down into a very simple workable product, understanding this code then building functionality / refactoring as I went.

## My Main Issue/ Struggle.

The bulk of my time was spent working out how to double the API data.

This is because the API data was an array of hashes where the key in these hashes was a string. In the test when I doubled this data the keys were automatically converted to symbols. I spend a while making the tests work and changed the API data in the accessing data class.

## Why I prioritised what I did

I decided to prioritise testing correctly over completing the task’s functionality. This is because I thought it would be more beneficial to have some code which I knew worked as opposed to having all the functionality but being unsure about bugs.

If this was actual work and not a test I would make this prioritisation decision based on the customers’ needs.
