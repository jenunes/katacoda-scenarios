
All right! Per the last step, you should be connect into the instance.
With that done we can explore the internal estructure.


Once connected, the mongo shell has several buil-in commands that we can use during our tasks.

## Listing database:
`show databases`{{execute}}
**or**
`show dbs`{{execute}}


## Changing database:
`use module1`{{execute}}
- `U+1F4A1` - `use <some-database-name>` can also be used to create a new **empty** database. 

Let's say we plan to create the database *module2*, we can then simply:

`use module2`{{execute}}

## Listing collection:
`show collections`{{execute}}
- As we created a new database in the step above, it's empty.

 **Please move back to module1 and list the collections again**.

## Showing Users:
`show users`{{execute}}
- Inside module1 we only have the user db_admin, which where its authenticates.

## Checking document structure:
For most of the time before querying any document, we just wan't to understand what's structure. 

For that we can make use of database function [findOne()](https://docs.mongodb.com/realm/mongodb/actions/collection.findOne/#collection.findone--), to return a single document from a collection:

`db.reviews.findOne()`{{execute}}
- `U+1F4A1` - Mongo Shell has builting autocomplete, in which we can use by pressing the key `TAB`.

