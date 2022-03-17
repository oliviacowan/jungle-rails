# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of learning Rails by example.

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.


## Dependencies
Development: 
* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

Testing:
* capybara
* poltergeist
* database_cleaner


## Email Confirmation

* To view a preview of the confirmation email browse to http://0.0.0.0:3000/rails/mailers/order_mailer/order_confirmation




!["Add to cart and place order"](https://raw.githubusercontent.com/oliviacowan/jungle-rails/063f6dd92b317409390d836caf3e8f8d0ea31cd2/gif/2.gif)