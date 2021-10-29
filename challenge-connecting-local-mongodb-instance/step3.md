
With the foundation done. Let's connect the MongoDB instance!

## Mongo Shell:

You can run the following command:

`mongo`{{execute}}

*Easy, right?!*

To exit, simply:

`exit`{{execute}}

Before moving on. This instance **does not have access control enabled**, that's why you can freely connect without user and password.

For security stand-point, it is not a configuration advised for productive environments.


## Building your connection string:

But we know that on real world, that's not the case.
To do so, there are two methods to build your [connection string](https://docs.mongodb.com/upcoming/reference/connection-string/#connection-string-uri-format)

**1** - Using [URI format](https://docs.mongodb.com/upcoming/reference/connection-string/#connection-string-uri-format):

*For a Standalone*

`mongodb://mongodb0.example.com:27017`

Here **mongodb0.example.com** is the host, and **27017** the port.

**Tip:** The default for [mongod](https://docs.mongodb.com/manual/reference/program/mongod/#mongodb-binary-bin.mongod) is [27017](https://docs.mongodb.com/manual/reference/default-mongodb-port/#default-mongodb-port).

**2** - Passing options over the command:

`mongo --host=mongodb0.example.com --port=27017`

