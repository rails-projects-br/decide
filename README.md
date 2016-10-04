# DECIDE

Decide is an application to help groups and teams take decisions over issues.


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


## Running the application

### 1 With Docker (recommended)

To run the application with Docker your should have installed:

- Docker
- Docker-compose

Instructions on how to install Docker on your machine
https://www.docker.com/products/docker

Remember that Docker for Windows only works on Windows 10 Professional or Enterprise 64-bit edition. For other Windows versions, you should install Docker-toolbox
https://www.docker.com/products/docker-toolbox

For Mac and Windows users Docker-compose is already installed when Docker or Docker-toolbox is installed.

For Linux users, Docker-compose should be installed. Follow this instructions:
https://github.com/docker/compose/releases


### 1.1 Build the application container

This should only be needed to run once:
```
cd decide
docker-compose build
```

This will download and install all application dependencies into a Docker container. It might take a while, but this will only happen once.

### 1.2 Running the built Docker container

Everytime you need to start your application, use this command.
```
docker-compose up
```


### 1.3 Create the Database

The first time you run your application, you will need to create your database.

In another terminal run:
```
docker-compose run web rake db:create
```

### 1.4 Migrate the Database

The first time you run the application, and any time you create a model or a migration, you should run the migrations rake task.

```
docker-compose run web rake db:migrate
```

### 1.5 Access the application
Open http://localhost:3000 on your web browser.


### 2 On your machine directly

To run the application without Docker, you should have the following dependencies installed.


### 2.1 Dependencies

This application runs on

- Ruby 2.3.x
- Rails 5.0.1
- PostgreSQL


### 2.2 Install the gems

```
cd decide
bundle install
```


### 2.3 Create the Database

First configure your `config/database.yml` with your PotgreSQL user and credentials.

Make sure your PostgreSQL service is running. Then run:

```
rake db:create
rake db:migrate
```


### 2.4 Start the Rails server

```
rails s
```


### 2.5 Access the application

Open http://localhost:5000 on your web browser.
