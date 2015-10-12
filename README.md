# Appointment Mailer (development stage)

### Technical

* Automatically updates database daily to delete passed appointments
* Appointment validates date and time with custom method to ensure selected timeframe will be in the future

### Uses Figaro gem
* ```figaro heroku:set -e production``` to set ```ENV``` variables when deploying to heroku (```ENV['gmail_username']``` and ```ENV['gmail_password']```) via application.yml
* Set ENV variables using ```$ figaro heroku:set -e production```

### MISC

* Time zone is set ```config.time_zone = 'Pacific Time (US & Canada)'``` in ```application.rb```
