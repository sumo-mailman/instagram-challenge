# Instagram App 

Goal was to build an instagram app. My focus was to get the user authenticating testing done

# Quickstart

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```

# To Do 
1. Find a way to customise error messages in Devise. Example - when logging in with an email that's not in the user database, no message is show but just doesn't allow you to click through.
2. How to write a test for seeing if an image is on the website or not? 
3. How do I get rid of all the other RSPEC tests that are not relevant 
4. Low coverage, need to increase testing on the Post controls which were created by rails generate 