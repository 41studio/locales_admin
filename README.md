# LocalesAdmin

[![Gem Version](https://badge.fury.io/rb/locales_admin.svg)](http://badge.fury.io/rb/locales_admin)

Locales Admin gem will provide front end editor for you or website administrator to manage locales files.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'locales_admin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install locales_admin

## Usage

Add locales_admin routes on `config/routes.rb`

```ruby
mount LocalesAdmin::Engine => "/locales_admin"
```

Create `locales_admin.rb` in `config/initializers` folder

```ruby
LocalesAdmin.setup do |config|
  config.username = "yourusername"
  config.password = "yourpassword"
end
```

If you didn't do that, then it will use default configuration like below

```ruby
LocalesAdmin.setup do |config|
  config.username = "iamadmin"
  config.password = "keepitsecret123"
end
```

## Development

## Contributing

1. Fork it ( https://github.com/aditiamahdar/locales_admin/fork )
2. Create your feature branch (`git checkout -b new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin new-feature`)
5. Create a new Pull Request

This project rocks and uses MIT-LICENSE.
