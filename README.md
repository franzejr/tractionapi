#Traction API
[![Code Climate](https://codeclimate.com/github/franzejr/tractionapi/badges/gpa.svg)](https://codeclimate.com/github/franzejr/tractionapi)

https://tractionapi.herokuapp.com/website

This is a Scrapper Job API. It grabs the Alexa top 100 sites and add to
the database.

#How to setup

### Environment

Make sure you are using:

- Ruby 2.3.0
- Rails 4.2.5

### Import Alexa Top 100 websites

```
bundle exec rake importer:run
```

### Create AWS Keys

1. Go to: http://aws.amazon.com/
2. Sign Up & create a new account (they'll give you the option for 1 year trial or similar)
3. Go to your AWS account overview
4. Account menu in the upper-right (has your name on it)
5. sub-menu: Security Credentials

### Create your ENV Variables

1. Add the following KEYS in your environment:

These variables are used because of [Ralexa](https://github.com/flippa/ralexa)

```
AWS_ACCESS_KEY_ID=<KEY>
AWS_SECRET_ACCESS_KEY=<KEY>
```
