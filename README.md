# DECIDE

Decide is an application to help groups and teams take decisions over issues.

## Running the application

To run the application, you should have the following dependencies installed.

### Dependencies

This application runs on

- Ruby 2.3.x
- Rails 5.0.1
- PostgreSQL

### Download the application code

First clone the repository

###### SSH

```
git clone git@github.com:rails-projects-br/decide.git
```

###### HTTP

```
git clone https://github.com/rails-projects-br/decide.git
```

### Install the gems

```
cd decide
bundle install
```

### Create the Database

Make sure your PostgreSQL service is running. Then run:

```
rake db:create
rake db:migrate
```

### Start the Rails server

```
rails s
```

### Access the application

Open http://localhost:5000 on your web browser.

## ENJOY!
