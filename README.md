# H20

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'h20'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install h20

## Usage

hash = {name: "John", age: 25, educations: [{title: "BSC"}, {title: "MSC"}]}

user = H20::H2o.new(hash) 

user.name # John
user.age # 25

educations = user.eductions
education[0].title # BSC

user.to_hash # {name: "John", age: 25, educations: [{title: "BSC"}, {title: "MSC"}]}



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
