# Assignment 9.1

* What are some common HTTP status codes?
  * Some common http status codes are 200(ok), 404 Not Found, 403 Forbidden, 500 Internal Server Error, 504 Gateway Timeout.
* What is the difference between a GET request and a POST request? When might each be used?
  * A post request has extra information that is sent to the server in the request body, while a Get request includes that information in the url. Any time you would want a user to be able to recreate a url, you would use GET. Whenever data needs to be secretly or more securely transmitted to the server, a POST request should be used. Large amounts of data should be POST. GET should only be used for requests that are idempotent, and thus don't change the status of the database (retrieval of information rather than creating, updating, or deleting it).
* Optional bonus question: What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?
  * A cooke is a piece of data from a website that is stored in a client's web browser. They are used to store information about a browsing session (user authentication, shopping cart, settings, etc...)
