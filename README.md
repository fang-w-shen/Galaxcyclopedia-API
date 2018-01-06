# Galaxcyclopedia-API
Galaxcyclopedia-API is a full Ruby on Rails Application with a user interface for API Documentation and File Sharing and RESTful API JSON Data for Planetary Data Querying.

## Preview

[![PREVIEW](https://github.com/fang-w-shen/Galaxcyclopedia-API/blob/master/app/assets/images/preview.png)](https://galaxcyclopedia.herokuapp.com/)

**[View Site & Documentation!](https://galaxcyclopedia.herokuapp.com/)**

## Overview
Galaxcyclopedia API's resources and data queries are represented in JSON format.
Versioning requests can be modified through the header.
Resource requests are limited based on IP address with a maximum threshold of 60 requests per minute.




## Versioning & Access

There are currently two versions of the API. If a request is made without a specific accept header or with a header that is unrecognized, the response will default to the latest version, Galaxcyclopedia 2.0. To request specific versions, add an accept header to your request.


Example
```
$.ajax({
    "url": 'https://galaxcyclopedia.herokuapp.com/solarsystem?api_key={api_key}',
    "headers": {
        "accept": 'version.2.0.json'
    }
}).done((response) => {
    console.log(response);
});
```
 * version 1
```
resources "/solarsystem"

```
 * version 2
```
resources "/solarsystem"
resources "/mercury"
resources "/venus"
resources "/earth"
resources "/mars"
resources "/jupiter"
resources "/saturn"
resources "/uranus"
resources "/neptune"

```

## Responses
```
200  OK	                 Request was successful.
201  Created	         Resource was created successfully.
204  No Content	         Request successful but no content to display.
400  Bad Request	 Request could not be understood.
401  Unauthorized	 Authentication failed / Permission Denied.
403  Forbidden	         Access Denied.
404  Not Found	         Resource was not found.
422  Unprocessable	 Request invalid or missing parameters.
429  Too Many Requests	 Request Rate Limit Reached.
498  Invalid Token	 Request was made with Invalid Token.
```

## Technologies Used

Ruby on Rails

Amazon Web Services

SendGrid E-Mail Delivery Service

SASS

Bootstrap

REST API Architecture

Documentation

Versioning

Rate Throttling

SQLite

PGSQL

DB Browser

Heroku

## Cloning Source Code

To get started with the app, clone the repo, change directories into the newly created Galaxcyclopedia-API folder, and then install the needed gems:

```
$ git clone https://github.com/fang-w-shen/Galaxcyclopedia-API.git
$ cd Galaxcyclopedia-API
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```
Then, seed your database (optional):

```
$ rails db:seed
```
Finally, navigate to localhost:3000 and Fire Away!

```
$ rails server
```


## Copyright and License
Copyright 2018 under [Fang-W-Shen](https://github.com/fang-w-shen).
