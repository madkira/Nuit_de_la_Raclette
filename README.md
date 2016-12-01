# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.3.1

# Tutoriels :
* http://railsforzombies.org/
* http://railspremierspas.humancoders.com/
* https://www.codecademy.com

# Workspace  Installation :

### rbenv :
ruby version manager
```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
```
Optionaly : 
```
cd ~/.rbenv && src/configure && make -C src
```
then add to terminal profile (need to choose your shell profile): 
```
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.(bash_profile|bashrc|zshrc)
echo 'export RUBYOPT="-KU"' >> ~/.(bash_profile|bashrc|zshrc)
echo 'eval "$(rbenv init -)"' >> ~/.(bash_profile|bashrc|zshrc)

```
add to rbenv install version helper :

```
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

```

run init to allow autocompletion : 
```
~/.rbenv/bin/rbenv init
```

restart your terminal or source it

### ruby 2.3.1 :
due to rbenv and ruby-build :

```
rbenv install 2.3.1
```

to show all versions avaliable to install : 
```
rbenv install -l
```

### Packages pré-requis
```
sudo apt-get install curl git-core build-essential zlib1g-dev libssl-dev libreadline6-dev gem libyaml-dev libpq-dev libsqlite3-dev
```

### bundler :
gem manager for project : (no sudo required)
```
gem install bundler
```
this command may failed but will give you witch requirement missing like libsqlite3-dev and libpg-dev


# IDE and Text Editor Personally tested for ruby
* Sublime text (need to add multiple plugins)
* Rubymine 

# Set up project

###install all gem of the current project : 
due to bundler gem :
```
bundle install
```

### generate and add secret key base for puma :
copy for your local env :
```
cp config/_secrets.yml config/secrets.yml
```
execute twice to generate 2 keys : 
```
rake secret
```
and replace the "here one" and "here two" with the two generated keys inside the previously copied config/secret.yml

* To be operationnal need to make a first migration (cf to database section)

# Usefull command line 
### runtime :
use zeus and guard gem (Present in Gemfile and loaded with bundle install)
zeus is the runtime environment of this project
guard is a continous unitary test executor

to start zeus :
```
zeus start
```
to have the continous server :
```
zeus server
```
to have a terminal on the application (for database check, run script ...) :
```
zeus c
```
to lunch all test once :
```
zeus test
```
to have the continous test (execute only affected test while edit file) :
```
bundle exec guard
```

### database :
using the rake helper :

```
rake db:
```
* migrate
* rollback
* seed #add precreated element form the db/seeds.rb file
* drop
* setup
* reset # remove everithing need to migrate again and not create the base before
* create
* schema:load # seems to make : drop create migrate

all of this command must be prefixed to been applied on the test environnement with  :
``` 
RAILS_ENV=test
```
