[![Build Status](https://api.travis-ci.com/youngppl/turninggreen_core.svg?branch=master)](https://travis-ci.com/youngppl/turninggreen_core)

# rootup Core

This repo contains the backend for rootup.

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

## Deployment

1. Start PostgreSQL server(for Windows: it should automatically run, but if not: `net start [name of PostgreSQL service(ex: postgresql-x64-11)]`
2. Run `bundle update`
3. then `rails s`.
