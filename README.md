# Ruby on Rails Tutorial demo application

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```
## Using the API
The following end points are available when the API server is running:
Developers can access, add, edit, and delete records from the following resources:
 * Customers
 * Products
 * Payment Types
 * Products
 * Orders
 * Computers and
 * Training Programs
 * All customers without orders can be displayed
 * Orders queried also return an array of products in the order


## Contributors

[Fang W. Shen](https://github.com/fang-w-shen)