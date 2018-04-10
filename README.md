# Binary

Simple Ruby gem to convert integers into binaries and binaries into integers

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'binary'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install binary

## Usage
Simply require the gem in your code:

```ruby
require 'binary'
```

Then to get the binary representation of a number, you just need to call `Binary.binary` and pass the number to it, something like follows:

```ruby
Binary.binary 2018

Or

2018.to_b
```
`Output: "11111100010"`.

Also you can pass an array of integers to the method to get an array of their binary values.
```ruby
Binary.binary([[7,9,11])

Or

[7,9,11].to_b
```
`Output: ["111", "1001", "1011"]`.

You can also convert binaries into integers by calling method `number` as follows:
```ruby
Binary.number "11111100010"

Or

"11111100010".to_num
```
`Output: 2018`.

```ruby
Binary.number(["111", "1001", "1011"])

Or

["111", "1001", "1011"].to_num

```
`Output: [7,9,11]`.

Other methods available:

```ruby
# number of bits in a number's binary
Binary.bits 1000
```
`Output: 10`.

```ruby
# number of ones in a number's binary
Binary.ones 1000
```
`Output: 6`.

```ruby
# number of zeros in a number's binary
Binary.zeros 1000
```
`Output: 4`.

```ruby
# get array of binaries of all prime numbers between 2 and the given number
Binary.prime 25
```
`Output: ["10", "11", "101", "111", "1011", "1101", "10001", "10011", "10111"]`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/almishkawi/binary.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
