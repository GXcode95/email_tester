# Versions
- rails 7.0.3
- ruby 3.0.3

# Usage
After cloning the repository, install dependencies with
```
bundle install
```

Edit the `config/environment/development.rb` file to copy your credentials from Pacomail.

Launch rails server :
```
rails server
```

# Dig into important files
- `app/mailers/my_mailer.rb` for sending the email
- The html/text templates of the mails are in the folder `app/views/my_mailer`
 
 
