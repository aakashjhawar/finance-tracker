# README

This is a web app which can track stock prices using the [Rails](http://rubyonrails.org) framework.

Heroku: https://investry.herokuapp.com/

### Key Features 
1. Authentication System, users can sign up, edit their profile, log in/out
2. Users can track stocks, up to 10 per user. The profile page will display all the current stock prices.
3. Users can search for stock symbols using a search bar.
4. Users can choose to add a stock from results of search to their protfolio.
5. Users can look for friends or other users of the app, by name or email (first name, last name, email).
6. Users can view protfolio of stocks their friends are tracking for investing idea.
7. Mobile friendly, responsive styling.

### Requirements
* Rails 5.2.2
* PostgreSQL

### Running Locally

Make sure you have [Ruby](https://www.ruby-lang.org), [Bundler](http://bundler.io) installed.

```sh
git clone https://github.com/aakashjhawar/finance-tracker.git # or clone your own fork
cd finance-tracker
bundle install
rails db:create
rails db:create
rails s
```
Your app should now be running on [localhost:3000](http://localhost:3000/).

## Deploying to Heroku

```
heroku create
git push heroku master
heroku run rake db:migrate
heroku open
```


Alternatively, you can deploy your own copy of the app using the web-based flow:

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## Documentation

For more information about using Ruby on Heroku, see these Dev Center articles:

- [Ruby on Heroku](https://devcenter.heroku.com/categories/ruby)
- [Getting Started with Ruby on Heroku](https://devcenter.heroku.com/articles/getting-started-with-ruby)
- [Heroku Ruby Support](https://devcenter.heroku.com/articles/ruby-support)