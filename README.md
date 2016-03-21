[![Build Status](https://travis-ci.org/kevinlanzon/url-shortener-code-test.svg?branch=master)](https://travis-ci.org/kevinlanzon/url-shortener-code-test)

Url Shortener Code Test
========

Technologies used
----
- Ruby
- Sinatra
- RSpec
- Cucumber
- Travis CI
- HTML5
- CSS3

How to run
--------

You will need to download [Redis](http://redis.io/topics/quickstart)

In order to compile Redis please follow these simple steps:

```sh
$ wget http://download.redis.io/redis-stable.tar.gz
$ tar xvzf redis-stable.tar.gz
$ cd redis-stable
$ make
```
And then to run the Redis server, open a separate window in terminal and type:

```sh
$ redis-server
```

In another terminal window run:

```sh
$ bundle install
$ shotgun
```

Visit `localhost:9393` in the browser


How to run tests
---------

```sh
$ rspec
$ cucumber
```

File Structure
----------------
```
- app
  - helpers
    - redis.rb
    - token.rb
  - views
    - index.erb
  - server.rb
- features
  - step_definitions
    - web_steps.rb
  - homepage.feature
- public
  - css
    - normalize.css
    - style.css
- spec
  - server_spec.rb
  - spec_helper.rb
```

To do
-----

- [ ] Switch out Redis and use a hash for storing URLs
- [ ] Implement Ajax for displaying the shortened URLs
- [ ] Add error handling for inputing incorrect URLs

--------

Challenge
------


We'd like you to create a URL shortening service.
- It should have a route where you can send a POST request with a URL in the body, which
returns a short URL.
- When you send a GET request to a previously returned URL, it should redirect to the
POSTed URL.
- We'd also like a simple frontend that can create and display shortened URLs without
reloading the page.
- For simplicity, don't worry about persisting the URLs between restarts (ie, we don't
need it to talk to an external database).

Use whatever languages and frameworks you are comfortable with. Don't worry about getting
the whole thing working flawlessly, this is more to see how you structure a program. Please
don't spend more than a few hours on it.

## Submission

Please fork this repository, write some code and update this README with a guide of how to
run it.
