# README

# CATAGRAM-Lyon

Heroku version 1.0 Production:

🔥🔥 https://catagramlyon.herokuapp.com 🔥🔥

The amazing team behind this industry-changing project: Lionel Forest, Noel Gagnaire, Cédric Robert, Anne-Tahina Metz & Baptiste Veyrard.

Coded in a week with Ruby 2.5.1 - Rails 5.2.1

To use locally : $ git clone, $ bundle install, $ rails db:create, $ rails db:migrate, $ rails db:seed then run localhost:3000 on your browser

To test admin features (like uploading dick pics instead of cat pics 🙀), use user : catagram@yopmail.com, password : azerty

Features

User : sign in, log in, log out, edit info, delete account, access past orders. There is also an admin class.

Cart : add items to cart

Checkout : payement by Stripe, Order creation

Mailer : send email when signing up and when you paid an order. Plus sends an email to the administrator for each orders.

Only registered user have access to the cart, and only your info is accessible to you.