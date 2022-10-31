# Reviews Scrapper

## Requirements

For development, you will only need Ruby and Rails installed on your environment.
And please use the appropriate [Editorconfig](http://editorconfig.org/) plugin for your Editor (not mandatory).

### Ruby

[Ruby and Rails](https://gorails.com/setup/macos/11-big-sur) are really easy to install.
You should be able to run the following command after the installation procedure
below.

    $ ruby --version
    ruby 2.7.2p137

    $ rails --version
    Rails 6.0.6
## Install

    $ bundle install


## Start & watch

    $ rails s

## Run test cases

    $ rspec

## Assumptions
- This web service gets url in params and will fetch all the reviews from that url on all pages.
- Response will be shown on view in html format.
