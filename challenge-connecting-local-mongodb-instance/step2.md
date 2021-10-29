
Ok, one of the possible questions you might be thinking at this point is: 
"**What I can do with that components?**"

As seen over learning session; MongoDB provides the following capability for data replication and availability:

---
[Standalone](https://docs.mongodb.com/manual/reference/glossary/#std-term-standalone) - *Basic installation, single node.*

---
[Replica Set](https://docs.mongodb.com/manual/replication/#replication) - *Standard replication, multiple copies of data on different database servers, provides a level of fault tolerance against the loss of a single database server.*

![MongoReplicaSet](./assets/replica-set-read-write-operations-primary.bakedsvg.svg)

**Primary** *and* **Secondary**,* are [mongod](https://docs.mongodb.com/manual/reference/program/mongod/#mongodb-binary-bin.mongod) processes running on diferent sites.*

---
[Sharded Cluster](https://docs.mongodb.com/manual/sharding/) - *It's the Clustering feature from MongoDB; Allows distributing data across multiple machines(scale-out), for very large data sets and high throughput operations.*
![MongoShard](./assets/sharded-cluster-production-architecture.bakedsvg.svg)

*Instead of connecting to [mongod](https://docs.mongodb.com/manual/reference/program/mongod/#mongodb-binary-bin.mongod), the application must connect on [mongos](https://docs.mongodb.com/manual/reference/program/mongos/).

For administrative tasks you can use the mongo shell to either connect on [mongos](https://docs.mongodb.com/manual/reference/program/mongos/) or [mongod](https://docs.mongodb.com/manual/reference/program/mongod/#mongodb-binary-bin.mongod).*




## References

1.1. Database Fundamentals.

1.2. Database Components.


