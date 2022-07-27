# Food_Ordering

#### A way to make ordering more efficient for kitchens

#### By William Pratt

## Technologies Used

* Ruby 2.6.5
* Rails 5.2.8
* pry
* Postgres
* psql
* devise
* HTML
* CSS

## This project is a way to cut down on the amount of hours management is working in a kitchen to try and have less paperwork, more cooking, and less overtime

## Setup/Installation Requirements

* Clone this repo
* Run `postgres` in your terminal to start your sql server
* In a new terminal, navigate to the root directory of this repo and run `bundle install` to install all required gems.
* Run `rake db:create` to create development and test databases.
* Run `rake db:migrate` to build necessary tables for the database.
* Run `rails s` in the terminal from the root directory to start the server
* Open your browser and navigate to http://localhost:3000/
* Sign up to become a registered user to navigate the site.
* You can now navigate the site
* To make a user an admin and have access to more of the website open the rails c, type @user = User.first (replace first with correct  naming convention based off user id number, ie id 2 is User.second) then type @user.update(:admin => true) to change the user to an admin

## Known Bugs

*none at the moment

## License 

MIT

## Copyright (c) 07-24-2022 William Pratt