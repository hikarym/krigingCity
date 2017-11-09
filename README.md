# Kriging City

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:



## System dependencies
- Ruby version 2.4
- PostgreSQL

### Dependencies installation and setup

#### PostgreSQL

##### Installation

```bash
# Install PostgreSQL server and client
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib postgresql-client pgadmin3

# Start the server
sudo service postgresql start

# Connect to PostgreSQL
sudo -u postgres psql postgres

# Inside the PostgreSQL shell, create the application user
postgres=# CREATE USER kriging_city_user WITH PASSWORD 'kriging_city_pass' CREATEDB;
postgres=# ALTER USER kriging_city_user WITH SUPERUSER;

# Make sure the database templates use UTF-8
postgres=# UPDATE pg_database SET datistemplate = FALSE WHERE datname = 'template1';
postgres=# DROP DATABASE template1;
postgres=# CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UNICODE';
postgres=# UPDATE pg_database SET datistemplate = TRUE WHERE datname = 'template1';
postgres=# \c template1
postgres=# VACUUM FREEZE;

# Quit
postgres=# \q
```
### Project setup

Now that you have all dependencies installed, you can get the project up and
running with the following steps:

- Clone the project from GitLab
  ```bash
  # You can also clone using the SSH URL.
  git clone https://github.com/hikarym/krigingCity.git KrigingCity
  cd KrigingCity
  ```

- Install Rails and all other gems
  ```bash
  # This step is only necessary if you don't have Bundler installed.
  gem install bundler
  # This step is always necessary.
  bundle install
  ```
- Setup the database
  ```bash
  alias be="bundle exec"
  be rake db:create && be rake db:migrate && be rake db:seed
  ```
- Start the server
  ```bash
  # Port 3010 is the port convention for this application
  # platform. Changing the port may cause other applications to fail.
  bundle exec rails server -p 3010 -b 0.0.0.0
  ```

- Open http://localhost:3010 in your browser. You should see the welcome page.



* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
