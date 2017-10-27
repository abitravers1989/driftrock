#The Task At hand



#How You Can Use It

#Testing

#My jounrney

I started off Planning ...

Set my unkowns then tried to work around them.

This actually ended up wasting some time as accessing the API was simple and if i had just began with researching that I would not have to have done all the work changing the classes and re-designing again.

I redesigned the classes and methods at least twice at the start.. and even know the information they pass through to each other and how they call each other has altered from my diagrames.

I then started off with my classes too seperated out. This seperation gave me anxiety so I put both the customer spends, avergae and total into one class.
This seemed to make sense at the time as they both use the same find ID and get data methods. But when going on to the other functions I realised I could seperate out even these methods.

I started with a method for calculating the total customer spend. I tried to keep the amount of stuff each method was doing as low as possible as I was going. This actially lead me to using quite simple and long-winded way of finding it out (looping through arrays and hashes to count them.)

Moving onto average spend I improved this a bit and reduced the number of loops by adding counter and spend variables which were just incremented as i looped through the hashes / arrays. This still needs refactoring I was thinking of taking the spend out but stopped before I did this because it would mean making more global variables (or passing spend through to another method.. thought i would move on).

Doubling the data in testing is something I am less comfortable with so had marked as an unknown.. however i thought since getting the API data was simpler than I thought I would also give testing with doubles a go.


This ended up giving me a massive bug in testing because of the API data; for the api data the keys in the hash's were strings but in the test mock double they are converted to symbols.. This class is also when i noticed my error in getting the data as the most frequent user ID in the purchase data was not coming up in the user data..

so had to go back and change accessing data class


spent a while working out how within this class to convert the key which was a string into a symbol for all the hashes in this huge data set.

once this was complete i then went and changed the other classes

Customer spend class :

- should not have ever called the accessing data class within this / as in made a method to extract the data from it within this. Should have always passed the new insance of the accessing data class through to it as an argument as I have now refactored to.


#Improvments


accessing data:

both user and purchase data can be same method just passing the word purchases or users through to it as an argument!


Edge case:

When calculating the most_loyal customer... If most loyal customers ID for some reason cannot be found in user data which contains email .. default to the next most common ID.



#Issue I struggled with

ONE

When calculating the most_loyal customer the user data seems to contain many 'nil' values which indicates empty arrays at the end. This is when using API data. I suspect this issue is to do with

Had a lot of issues testing the Customer Loyalty class.
I thought this was because the data in the API had the keys as strings and did not automatically convert them to symbols. Whereas when this data was substituted in the test it automatically converted this 'double' / mock user and purchase data's values into symbols.
However I don't think this is the issue. The error I am getting for the test is:

````
expected: "KZHR-1H35-2IH8-JXYN"
            got: nil
expected: "schimmel_quincy@ernser.io"
            got: nil
````

But when I test the class through the command line.. so navigating to the lib folder then running

````
ruby customerLoyalty.rb

````

Then calling an instance of the class with the same mock data set:

````
customer = CustomerLoyalty.new
purchase_data =
  [{'user_id' => 'S27G-8UMJ-LDSL-UOPN', "item" => "Synergistic Aluminum Shoes",'spend' => "27.78"},
    {'user_id' => "S27G-8UMJ-LDSL-UOPN","item"=>"Gorgeous Paper Hat",'spend' => "54.5"},
    {'user_id' => "KZHR-1H35-2IH8-JXYN","item"=>"Aerodynamic Copper Bench",'spend'=>"3.21"},
  ]

#data.user_url double
 user_data =
   [{'id'=>"KZHR-1H35-2IH8-JXYN","first_name"=>"Quincy","last_name"=>"Schimmel","phone"=>"186.301.6921 x948",'email'=>"schimmel_quincy@ernser.io"},
  {'id'=>"S27G-8UMJ-LDSL-UOPN","first_name"=>"Henry","last_name"=>"Terry","phone"=>"636-387-6074 x690",'email'=>"terry_henry@doyle.io"}
  ]
customer.most_loyal_customer(purchase_data, user_data)

````

I do not get the same errors.

When I call it in the App class in the app.rb file in the exact same way or through passing the API data into it like so:

```
customer = CustomerLoyalty.new
purchase_data = (AccessingData.new.purchase_url["data"])
user_data = (AccessingData.new.user_url["data"])
customer.most_loyal_customer(purchase_data, user_data)

```
IT works the same as the customer Loyalty class .. so it does not find the user .. which makes me think the most loyal customer id may not be an email in the user data base! But I know that the user data base is at the end as it returns nil

... actually it may be the purchase data that returns nil


.. this also shows that the issue is with the values in the hash being strings in API data and symbols in mock data



ERROR WAS TO DO WITH API DATA NOT ALL GOT




when i change the number of results per page so i get more data it allows me to find the customer loyalty email .. however it is coming up with a different answer for the app.rb and the CustomerLoyalty. This suggests two things;

1. the data is still not complete and every time it is 'get' from the url it is un-ordered so a different set of data comes out..Therefore there is an issue with limit on the number of results per page and this needs to be altered.

and

2. I really need to fix the tests so they take the mock API data so I can see if it is actually an issue with my code or the data itself.



TWO

Testing doubles and getting API data were both relatively new and 'unkowns' to me so tried walk arounds first




IMPROVEMENTS

Spent too long planning and diagraming at the start. Re-draw and re-planned all of these diagrams a number of times.


Code is very messy and difficult to follow. Currently way too much going on, hard to see where to follow / the logic flow.

<!--
When I change it to include the data mocks I still get an error:



````
wrong number of arguments (given 1, expected 0)
````


 -->



#User Stories

````
As a Marketer so I can understand who to focus my re-marketing campaigns on,
I would like to see the total spend of a customer when I provide their email address.
So I can decide how much I should spend on retaining them.

As a Marketer so I can understand who to focus my re-marketing campaigns on,
I would like to see the average spend of a customer when I provide their email address.
So I can decide how much I should spend on retaining them.

````

````
As a Marketer so I can understand who to focus my customer-champion and loyalty campaigns on,
I would like to see the email(??) of the customer who purchases the most times from us.
So I can decide how to what loyalty benefits to offer them.

As a Marketer so I can understand who to focus my customer-champion and loyalty campaigns on,
I would like to see the email(??) of the customer who has spent the most with us.
So I can focus specific campaigns on them.

````

````
As a Marketer so I can decide which of our item our customers want or has had successful past campaigns,
I would like to see the name of the item which has been sold the most / appears most frequently.
So I can learn from what has gone well and do more of it.

````




#My Process

1st.   Wrote out a high level idea of the programme and user stories. This allowed me to think through what some of the methods and classes would need to include.
2nd.   Listed out what I was unsure of or less in doing. Decided to come back to these after doing some of the parts I could.
3rd    Created a relational diagram which allowed me to see which potential functions were related to each other.

4th    Mapped out the potential classes, their methods and which information needed to be passed between them. Labeled this in order of execution.
