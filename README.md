## Content

1.	What Is This Repo. The Task.
2.	How You Can Install It.
3.	How You Can Use It.
4.	Languages Used / Build.
5.	Testing.
6.	User Stories.
7.	My Approach.
8.	Improvements.
9.	My Main Issue/ Struggle.
10.	Why I Made The Decision to Prioritise What I Did.



# What Is This Repo. The Task.

This repo was created a tech test for Driftrock.

The aim of the test was to produce a command line app which can interact with data held in a public API. This JSON API can be accessed at:  https://driftrock-dev-test-2.herokuapp.com.

The script (app.rb) is to be opened in the command line and given one argument. This argument should determine which of the following methods should be ran:

-	Total Spend of a customer (given an email output the £ total).
-	Average Spend of a customer (given an email output the £ average).
-	Most Loyal customer (output the email of the most frequent customer).
-	Highest Value customer (output the email of the customer who has spent the most).
-	Most Sold (item which has sold the most).

The answer should be output to Command Line.

#  How You Can Install It.

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
$ cd lib
$ ruby app.rb
`````

You will notice the following missing functionality:

An argument cannot be given to the app.rb. You cannot supply the method you want the programme to run while in the command line and you cannot provide it with the email of the customer you want to run the total and average spend methods on.

The Highest Value Customer and Most Sold Item methods and functionality do not exist.

I will go into this in more detail in the improvements section.

##  Languages Used / Build

I built this using Ruby. All additional modules have been added to the gemfile.


# Testing

Current Test Coverage is:  98.64% -- 145/147 lines in 7 files

To test yourself navigate to the command line and type:

`````
$ rspec
`````
For linting type (yes still in the command line):

`````
$ rubocop
`````

## User Stories

````
As a Marketer: so I can understand who to focus my re-marketing campaigns on,
I would like to see the total spend of a customer when I provide their email address.
So I can decide how much resource I should expend on retaining them.

As a Marketer: so I can understand who to focus my re-marketing campaigns on,
I would like to see the average spend of a customer when I provide their email address.
So I can decide how much resource I should expend on retaining them.
````

````
As a Marketer: so I can understand who to focus my customer-champion and loyalty campaigns on,
I would like to see the email details of the customer who purchases the most frequently from us.
So I can decide how and what loyalty benefits to offer them.

As a Marketer: so I can understand who to focus my customer-champion and loyalty campaigns on,
I would like to see the email details of the customer who has spent the most with us.
So I can focus specific campaigns on them.
````

````
As a Marketer: so I can decide which of our item our customers want or where we have been successful in past campaigns,
I would like to see the name of the item which has been sold the most / appears most frequently.
So I can learn from what has gone well and build on it.
````


#Improvements & Missing Functionality
