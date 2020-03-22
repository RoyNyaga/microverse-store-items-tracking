# Store-item-tracking app: Microverse final capstone project for react redux.
## This application represents the back-end of react-redux front-end application which can be access by clicking on this [link](https://github.com/RoyNyaga/store-item-tracker-frontend).

###[live version](https://store-item-tracker-frontend.herokuapp.com)

### Installation.
- clone or download the repository from github.
- I used postgresql database in this project and if your local environment is configured the same then you should have no issues else go to the gem file and remove the 'gem pg' and replace it with sqlite3 before moving forward.
- Open your terminal to the repository and run bundle install to install to install all gems.
- run rake:db migrate to create and migrate your database.
- Start your server by running rails server and the api will be ready to serve request from its endpoint.

## Specifications
1. The user logs in the app, only by typing the username (a proper authenticated login is not a mandatory requirement, but it is in the nice-to-have list)
2. The user is presented with a list of things that can be measured: left bicep, waist, hips, etc.
3. The user selects a thing to measure and is presented with a page to introduce the measurement (and timestamp)
4. The user can access a list of things with measurements and check the progress of it within time

## Technologies
-Ruby
-Rails
-Rspec

### Author
- [Nyaga Andre Roy](https://github.com/RoyNyaga/)
- nyagaandreroy@gmail.com
-237 671 172 775
