# Binary

Simple Ruby gem to convert numbers into binaries & binaries into numbers

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'binary'
```

Then run:

    $ bundle

Or from the terminal:

    $ gem install binary

## Usage

```ruby
require 'binary'
```

Number to binary:

```ruby
Binary.binary 2018

Or

2018.to_b
```
`Output: "11111100010"`.

Array of numbers to binaries.
```ruby
Binary.binary([[7,9,11])

Or

[7,9,11].to_b
```
`Output: ["111", "1001", "1011"]`.

Binary to number:
```ruby
Binary.number "11111100010"

Or

"11111100010".to_num
```
`Output: 2018`.

Array of binaries to numbers:
```ruby
Binary.number(["111", "1001", "1011"])

Or

["111", "1001", "1011"].to_num

```
`Output: [7,9,11]`.

Other methods available:

```ruby
# count the number of bits in a number's binary
Binary.bits_count 1000
# number of bits in 1000.to_b ("1111101000")
```
`Output: 10`.

```ruby
# count the "1"s in a number's binary
Binary.ones_count 1000
# number of ones in 1000.to_b ("1111101000")
```
`Output: 6`.

```ruby
# count the "0"s in a number's binary
Binary.zeros_count 1000
# number of zeros in 1000.to_b ("1111101000")
```
`Output: 4`.

```ruby
# list of binaries of prime numbers from 2 to 25
Binary.prime 25
```
`Output: ["10", "11", "101", "111", "1011", "1101", "10001", "10011", "10111"]`.

```ruby
# Binary representation of a random number between 1 and 100
Binary.random 100
```
`Output: "111"`.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
