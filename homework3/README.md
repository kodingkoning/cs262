# homework3

A new Flutter application.


## 1

See screenshots for working Baby Names app with language and region information.

## 2

### a: Is the service RESTful?

Since we did a different HW 2 than the Android groups, we did not use a Web API last time.

Our Firestore database has a RESTful API. It has each of the idempotent calls (GET, PUT, DELETE) and has the POST command as a nullipotent command. It also has a directory structure, as with saw with JSON in class. Importantly, it is stateless. It sends information to the server about which user is requesting the command and all other instructions that the server needs to know for a particular command. 

### b: What endpoints implement actions that are idempotent? nullipotent?

The idempotent actions:
- GET: is done using Document.get().
- PUT: is done using Document.updateData().
- DELETE: is done using Document.delete().

The nullipotent actions:
- POST is done using Collection.add(). There are alternative ways of creating a new Document, but most of them will update the data instead of creating a new Document if a Document with its ID already exists. add() generates an ID automatically for the new Document within the Collection.

