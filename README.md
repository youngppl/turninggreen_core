[![Build Status](https://travis-ci.org/mesch-hmc/turninggreen_core.svg?branch=master)](https://travis-ci.org/mesch-hmc/turninggreen_core)

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
