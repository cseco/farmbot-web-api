Farmbot Web API
===
RESTful JSON that runs the farm.

[![Build Status](https://travis-ci.org/farmbot/farmbot-web-api.png?branch=master)](https://travis-ci.org/farmbot/farmbot-web-api)

Usage
===
![How Farmbot will work](diagram.png)

You will need to CURL for now. Eventually, there will be a Farbot graphical frontend. API docs are on the way!

Installation
===
 1. Clone this repo
 2. In terminal, `cd` into this projects root directory
 3. Install MongoDB and run it via `mongod`
 3. `bundle install`
 4. `rails s`
 5. Visit `http://localhost:3000`. You should see the server running now.
 6. *PLEASE* submit an issue here if the installation does not work for you. We can't fix the things we don't know about.

Testing and Development
===
This project uses Rspec for testing. It also uses PhantomJS for integration testing. Make sure you have PhantomJS installed before you run the test suite via `rspec spec`.

Todo
===
 * One step installer / container.
 * API docs
 * Codebase docs

farmbot-web-api
===============
