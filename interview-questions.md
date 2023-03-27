# ASSESSMENT 5: Interview Practice Questions

Answer the following questions.

First, without external resources. Challenge yourself to answer from memory.

Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own, there is always something more to learn. Write your researched answer in your OWN WORDS.

1. What does calling super do in a Ruby class?

Your answer: Calling super in ruber allows you to call on parameters from a parent class to a child class using Class Inherritance

Researched answer: The arguments of a parent class will be passed down to the child class for use in their super() allowing the code to be used in the subclass without having to re-write it out for each sub-class that is created. For example if the Parent class used 
class Snacks
def initialize (name)
@name=name
the sub class would use Class Chips < Snacks 
def initialize(name,flavor)
super(name)
@flavor= flavor

2. What is a gem?

Your answer: A gym is a Ruby frame work or Ruby specific Package manager that allows ruby apps to function

Researched answer: A Ruby Gem containts a packaged Ruby application or library, they can be created and shared, they are considered libraries because they have working code within them that can allow your program to run without having to manually input the code themselves. the more common Gems are 1.Bundler which tracks and installs exact gems and versions needed for your program. 2. RSpec which is a testing framework for code. 3. Devise For user authentications and account access for websites. 4. JSON Provides an API for parsing JSON from text. 5. Nokogiri this Provides HTML, XML, SAX, and Reader parsers with XPath and CSS selector support. 6. RAILS!! which is a framework for creating web application with Ruby.

3. What is a relational database? Are there other kinds of databases?

Your answer: A relational database allows you to pull information using action commands that relate to the information stored within the database and yes there is more than one kind of database

Researched answer: Relational databases allows storage and the acess to information that relates to one another, There are three types of relations, One-to-one| many-to-many| one-to-many|
These databases are great for displaying information in tables. There is alos Object Oriented databases, Hiearachal databases, and Network databases.
Object Oriented databases - is a combination of relational database concepts and object-oriented principles, best when working with Object-oriented languages
Hiearachal databases - is most suitable for use cases, There is generally a root “parent” directory of data stored as records links to other subdirectory branches. A parent record can have many child records, each can only have one parent record. Data within records are held in the form of fields, and each field can only hold one value.
Network databases - numerous member records or files can be connected to multiple owner files and vice versa. Unlike the Hiearchal database the network database model permits each record to have multiple parent and multiple child records.


4. What are primary keys? Why are they important? Primary keys are the main 

Your answer: A primary key is alike a header in a table. For example if there is a table chart about types of pizza and the top of each column was a "primary Key" something that Identitifes each row below.

Researched answer: The columns within a relational database that acts as the parent to the data under it, It is used as the identifier for the data within the table. they are important because they are used when creating, reading, updating, or deleting data in a database table. You can narrow down more specific points in the table using the Primary Keys.

5. What are the HTTP verbs? What is each verb's corresponding CRUD action?

Your answer: Actions being requested for internet connection

Researched answer: The HTTP Verbs are request methods to perform actions on an internet protocol server. 
CONNECT and TRACE belong with "CREATE":
GET, HEAD, and OPTIONS verbs belong with the "READ":
POST, PUT, and Patch belon with "Update":
DELETE belongs to "DELETE":


## Looking Ahead: Terms for Next Week

Research and define the following terms to the best of your ability.

1. RESTful routes: A set of standards to create reusable routes, designed for HTTP Methods and Crud actions. A cheat sheet for the best pathway to use.

2. Model validations: A set of processes to confirm that a model achieves it's intended purpose. Like a quality assurance checker to make sure that the overall goal is achieved.

3. Params: Params is an important keyword in C#. It is used as a parameter which can take the variable number of arguments.
It is useful when programmer don’t have any prior knowledge about the number of parameters to be used.
Only one Params keyword is allowed and no additional Params will be allowed in function declaration after a params keyword.
The length of params will be zero if no arguments will be passed.

4. ERB: ERB (Embedded RuBy) is a feature of Ruby that enables you to conveniently generate any kind of text, in any quantity, from templates.
ERB templates combine plain text with Ruby code for variable substitution and flow control, making them easy to write and maintain.

5. API: Application Programming Interface. Interface can be thought of as a contract of service between two applications. This contract defines how the two communicate with each other using requests and responses.
