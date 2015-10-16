Project Tracker 
================




Getting Started
---------------

-set up a facebook app, set the url to http://localhost:3000, or whatever host you use
-set call back url in facebook apps advanced section
-get the id and secret from facebook add them into a file config/app_environment_variables.rb
ENV['OMNIAUTH_PROVIDER_KEY'] = 'your key'
ENV['OMNIAUTH_PROVIDER_SECRET'] = "your secret"
-add this file to .gitignore, environment.rb is set to check for its existence and add its variables to the environment



Documentation and Support
-------------------------

Issues
----

This application requires:

- Ruby 2.2.0
- Rails 4.2.1