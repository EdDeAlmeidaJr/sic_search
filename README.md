# SIC

SIC = Standard Industrial Classification

Every industry in the USA has a SIC code and sometimes you need to know what this code means. This is what this Ruby gem does.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sic'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sic


## Usage

In order to use this gem, do

```ruby
    require 'sic'
```

in your code, and use the method `#search('string_with_the_code')`. The result will be an object in the format

    {
      :code => "string_with_the_code",
      :description => "Description for the code given, if it exists"
    }

For example, in you run

```ruby
    SIC.search('5084')
```

your output will be

    {
      :code => "5084",
      :description => "Industrial Machinery and Equipment"
    }

**Important:** If you get `:description => nil`, this only means the code you provided does not exist.


## Command line

This gem also provides a command line executable you may use. Only type

    $ naics 5084

and you'll get an output like:

    Code:        5084
    Description: Industrial Machinery and Equipment


**Important:** If you get no text in `Description:`, this only means the code you provided does not exist.


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Things to do for future releases

- Search SIC codes for given keywords.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/EdDeAlmeidaJr/sic_search.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

