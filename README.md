# Ignore google index

Ignore google index with HTTP header

## Installation

Add this line to your application's Gemfile:

    gem 'ignore_google_index'

## Usage

Add to config/application.rb

```ruby
  config.middleware.use IgnoreGoogleIndex::Rack
```

Set for your environment

```ruby
 ENV['IGNORE_GOOGLE_INDEX']=1
```

## Why Use Ignore Google Index ?

  https://support.google.com/webmasters/answer/6062608?hl=en

## Inspired from
  https://robots.thoughtbot.com/block-web-crawlers-with-rails

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

ignore_google_index is copyright 2017 Ruslan Korolev, inc. It is free software and may be redistributed under the terms specified in the LICENSE.txt.
