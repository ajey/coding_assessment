## Important Information
- Icicle Coding Assessment

### Getting started with Coding assessment
#### These are the software packages we use
- Ruby 2.5.1
- Rails 6.0.3.4
- Sqlite3 1.4.2
- Rspec for testing framework

### Installing
#### Installing on Ubuntu Linux
- I recommend this: https://gorails.com/setup/ubuntu/16.04
  + Make sure you select the ubuntu version you are using
  + Which sections to follow:
    * Installing Ruby (I recommend rvm)
    * Configuring Git, you probably already have this :)
    * Skip installing Rails for now, we'll come back to this
    * Setting up PostgreSQL
- git clone the repo
- Now, skip to POST-INSTALL section

#### Installing on a Mac
*These instructions are using Homebrew for certain things*
*If you prefer not to use Homebrew, adjust accordingly*
###### Homebrew
- If you do not have homebrew, Install homebrew - http://brew.sh/
- If you already have homebrew, or don't know
  + run `brew update` and `brew doctor` to make sure your system is still ready to brew.
  + To upgrade your existing packages, run `brew upgrade`.

###### Postgres
- We use version 9.4, I have not tried other versions
- If you do not have postgres, use homebrew to install `brew install postgres`
  + Once this command is finished, it gives you a couple commands to run. Follow the instructions and run them:

      ```
      # To have launchd start postgresql at login:
      ln -sfv /usr/local/opt/postgresql/*plist ~/Library/LaunchAgents

  + By default the postgresql user is your current OS X username with no password. For example, my OS X user is named ajey so I can login to postgresql with that username.

###### Ruby
*We use RVM*
- If you don't have RVM installed, install it: https://rvm.io/rvm/install
  + Try first without any gpg operations to see if it will work
  + **NOTE: Only install RVM, which is the first option after the gpg instructions**
- Make sure to follow any instructions the installer may give at the end
- Once installed, and before you install other versions of ruby in the future
  + Run `rvm get stable --autolibs=enable --auto-dotfiles`
- Install our version of ruby: `rvm install 2.5.1`
  + Not necessary, but if you *want* 2.5.1 to be the default: `rvm use 2.5.1 --default`
  + run `ruby -v` to make sure the running ruby matches

### POST-INSTALL
###### Gemset and Rails
- You'll need a gemset for our project.
  + `rvm use 2.5.1`
  + `rvm gemset create icicle_assessment`
- Install bundler in the global gemset:
  + make sure you're using 2.5.1 - `rvm list`
  + run `rvm gemset use global`
  + run `gem install bundler`

###### API Setup
- Clone our API repo to the location of your choice
- `cd` into the API project directory
- Check that the ruby and gemset was selected
  + `rvm list` should show that 2.5.1 is active
  + `rvm gemset list` should show that the tiphive-api gemset is active
    * If not, `rvm gemset use tiphive-api`
- run `bundle install` to install our gems, and follow any instructions that appear

###### Database setup

#### NOTE: IMPORTANT
- You must run the following in order only on initial start
  - `bundle install`
  - `bundle exec rails db:create`
  - `bundle exec rails db:migrate`
  - `bundle exec rails db:seed`


##### Description
- The API uses the following
  + active_model_serializers
    * https://github.com/rails-api/active_model_serializers
  + JSONAPI format

#### Conventions
##### Model
- The order of things
  + includes
  + associations
  + validations
  + callbacks
  + scopes
  + searchable block if any
  + instance methods
  + class methods

#### Things to look into
- somethings for near future considerations
