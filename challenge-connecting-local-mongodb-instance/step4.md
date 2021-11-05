
All right! Per the last step, you should be connect into the instance.
With that done you can explore the internal estructure.


Once connected, the mongo shell has **several buil-in commands** that you can use during the tasks.

## Listing database:
- Let's start by printing a list of all available databases:
 
`show databases`{{execute}}
**or**
`show dbs`{{execute}}


## Changing database:
- Once you have the list, you can switch the current database to any database on that list, let's move to database **module1**:

`use module1`{{execute}}


💡 - `use <some-database-name>` Can also be used to create a new **empty** database. 
Let's say you plan to create the database *module2*, then simply:

`use module2`{{execute}}

## Listing collection:
- After switing, you can print a list of all collections for the current database.

`show collections`{{execute}}

As we created a new database in the step above, it's empty.

**Please switch back to module1 and list the collections again**.

## Showing Users:
- To print a list of users for current database you can execute: 

`show users`{{execute}}

- Inside database **module1** we only have the user db_admin, which where its authenticates.

## Checking document structure:
- For most of the time before querying any document, we just wan't to understand what's structure. 
For that we can make use of database function [findOne()](https://docs.mongodb.com/realm/mongodb/actions/collection.findOne/#collection.findone--), to return a single document from a collection:

`db.reviews.findOne()`{{execute}}

💡 - Mongo Shell has builting autocomplete, in which we can use by pressing the key `TAB`.


