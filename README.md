# README

This README would normally document whatever steps are necessary to get the
application up and running.

This project is dockerized so you will need to install the following dependencies

* System dependencies
  docker-compose 1.25.5
  Docker 19.03.8

* Ruby version
  Ruby 2.4.10

* Configuration
After installing docker and docker-compose, you will need to run the following command:
```
  docker-compose build
```
to build the project image


* Database creation
After having built the image, you must create the database, run migrations and run tasks to populate data, run the following command to raise a container where the application will be:
```
  docker-compose run web bash
```
after that run the following commands in the promp of the console:
```
 root@4c0b40177a72:/tpaga_test# bundle exec rails db:create
 root@4c0b40177a72:/tpaga_test# bundle exec rails db:migrate
 root@4c0b40177a72:/tpaga_test# bundle exec rails db:seed
 root@4c0b40177a72:/tpaga_test# exit
```

Now you should start the rails server to run the application with the command:
```
  docker-compose up
```

As a final step, you must create a user in the path http://localhost:3000/users/register, to access the option to purchase items.

