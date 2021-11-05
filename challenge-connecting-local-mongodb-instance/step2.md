
Ok, one of the possible questions you might be thinking at this point is: 
"**What I can do with that components?**"

MongoDB provides diverse implementation for data replication and availability, and that were the components necessary to achieve these features. 

Below we have a list of possible implementations:

---
[Standalone](https://docs.mongodb.com/manual/reference/glossary/#std-term-standalone) - *It is the Basic installation, a single node [mongod](https://docs.mongodb.com/manual/reference/program/mongod/#mongodb-binary-bin.mongod).*

---
[Replica Set](https://docs.mongodb.com/manual/replication/#replication) - *Standard replication, **multiple copies of data on different database servers**, provides a level of fault tolerance against the loss of a single database server.*

![MongoReplicaSet](./assets/replica-set-read-write-operations-primary.bakedsvg.svg)

**Primary** *and* **Secondary**,* are [mongod](https://docs.mongodb.com/manual/reference/program/mongod/#mongodb-binary-bin.mongod) processes running on different sites. We then use the mongo shell(*[mongo](https://docs.mongodb.com/upcoming/reference/program/mongo/#mongodb-binary-bin.mongo)*) to interact with.*

💡 - The minimum recommended configuration for a replica set is a three member - one [primary](https://docs.mongodb.com/manual/core/replica-set-members/#std-label-replica-set-primary-member) and two [secondary](https://docs.mongodb.com/manual/core/replica-set-members/#secondaries) members.

---
[Sharded Cluster](https://docs.mongodb.com/manual/sharding/) - *It's the Clustering feature from MongoDB; **Allows distributing data across multiple machines(scale-out)**, for very large data sets and high throughput operations.*
![MongoShard](./assets/sharded-cluster-production-architecture.bakedsvg.svg)

 
*Instead of connecting to [mongod](https://docs.mongodb.com/manual/reference/program/mongod/#mongodb-binary-bin.mongod), the application must connect on Router(*[mongos](https://docs.mongodb.com/manual/reference/program/mongos/)*)*.

*For administrative tasks you can use the mongo shell to either connect on [mongos](https://docs.mongodb.com/manual/reference/program/mongos/) or [mongod](https://docs.mongodb.com/manual/reference/program/mongod/#mongodb-binary-bin.mongod).*




## Reference Material:

1.1. Database Fundamentals.

1.2. Database Components.


