[![Build Status](https://travis-ci.org/youngppl/turninggreen_core.svg?branch=master)](https://travis-ci.org/youngppl/turninggreen_core)

# Turning Green Core

This repo contains the backend for various Turning Green stuff.

## Initial Setup

Dependencies
- PostgreSQL
- Node.js

Environment Variables
- POSTGRES_PASS= [psql server password when you set it up]
- GMAIL_DOMAIN=gmail.com
- GMAIL_USERNAME= [the turninggreen email address]
- GMAIL_PASSWORD= [the turninggreen email's password]

For first-time users, do the following

1. install PostgreSQL and Node.js
2. set up environment variables above
3. `bundle install`
4. `rails db:create`
5. `rails db:migrate`
6. `rake task:importjson`

## Deployment

1. Start PostgreSQL server(for Windows: it should automatically run, but if not: `net start [name of PostgreSQL service(ex: postgresql-x64-11)]`
2. Run `bundle update`
3. then `rails s`.

## Debugging
Use `binding.pry` to debug your rails app. `rails routes` will list all your endpoints!

Icon Credit
<div>Icons made by <a href="https://www.freepik.com/" title="Freepik">Freepik</a> from <a href="https://www.flaticon.com/" 			    title="Flaticon">www.flaticon.com</a> is licensed by <a href="http://creativecommons.org/licenses/by/3.0/" 			    title="Creative Commons BY 3.0" target="_blank">CC 3.0 BY</a></div>


TESTTINGG
