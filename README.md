# Ruby on Rails Image Hosting Site With RESTful Solar System API

**[Solar System API - View Documentation](https://solarsystemwiki.herokuapp.com/)**

## CLONING THE REPO

To get started with the app, clone the repo and then install the needed gems:

```
$ git clone https://github.com/fang-w-shen/SolarSystemAPI.git
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
The following end-points are available when the API server is running:
Developers can access records from the following resources:
 * version 1
```
endpoint URL /solarsystemapi/

```
 * version 2
```
endpoint URL /solarsystemapi/?api_key=${api_key}

```


## Contributors

[Fang W. Shen](https://github.com/fang-w-shen)