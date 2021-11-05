
With the foundation done and having the understanding of the components from the previous steps, we can now use it to connect the MongoDB instance!

## Mongo Shell:

First, let's try connecting using the mongo shell(*[mongo](https://docs.mongodb.com/upcoming/reference/program/mongo/#mongodb-binary-bin.mongo)*) without the user and password.

You can run the following command:

`mongo`{{execute}}

*Easy, right?!*

To exit and close the connection with the instance, we can :

`exit`{{execute}}

Before moving on. This instance **does not have access control enabled**, that's why you can freely connect without user and password.

For security stand-point, it is not a configuration advised for productive environments.


## Building your connection string:

But we know that on real world the database must have access controle enabled.
To connect in that circuntances, we must use a valid user and passowrd, and for that there are two methods to build your [connection string](https://docs.mongodb.com/upcoming/reference/connection-string/#connection-string-uri-format).

**1** - Using [URI format](https://docs.mongodb.com/upcoming/reference/connection-string/#connection-string-uri-format).

*For a Standalone, with access control enabled*:

`mongo mongodb://dba_adm:sekr3t@mongodb0.example.com:27017/?authSource=admin`

Where:
- dba_adm              - *Is the user*.
- sekr3t               - *Is the password*.
- mongodb0.example.com - *Is the Host*.
- 27017                - *Is the Port*.
- [authSource](https://docs.mongodb.com/upcoming/reference/connection-string/#mongodb-urioption-urioption.authSource)           - *Is the database with the user's credential*


💡 - The default for [mongod](https://docs.mongodb.com/manual/reference/program/mongod/#mongodb-binary-bin.mongod) is [27017](https://docs.mongodb.com/manual/reference/default-mongodb-port/#default-mongodb-port).

**2** - Passing options over the command.

`mongo --host=mongodb0.example.com --port=27017 --username=dba_adm --password=sekr3t --authenticationDatabase=admin`


# Testing connection:

Althogh access control is not enabled,we can connect with the following user which has been created before:
- username   - read_user
- password   - gswmongo
- [authSource](https://docs.mongodb.com/upcoming/reference/connection-string/#mongodb-urioption-urioption.authSource) - module1

 
We can then:
`mongo mongodb://db_admin:'gswmongo'@localhost:27017/?authSource=module1`{{execute}}
**or**
`mongo --host=localhost --port=27017 --username=db_admin --password='gswmongo' --authenticationDatabase=module1`{{execute}}
