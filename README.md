[![Build Status](https://travis-ci.org/spilth/little_bits.svg?branch=master)](https://travis-ci.org/spilth/little_bits)

# LittleBits

A Ruby Gem for communicating with [littleBits](http://littlebits.cc) modules.

Currently supported are:

- [cloudBit](http://littlebits.cc/bits/cloudbit)
- [Arduino Module](http://littlebits.cc/bits/arduino)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'little_bits'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install little_bits

## Usage

### cloudBit

You'll need the Access Token and Device ID from the Settings page of the [littleBits CloudBit Control Panel](http://control.littlebitscloud.cc)

    require 'little_bits'
    cloud_bit = LittleBits::CloudBit.new('your-access-token', 'your-device-id')
    cloud_bit.output(100, 3000)

### Arduino Module

You'll need to know the serial port that the Arduino is plugged into.

    require 'little_bits'
    arduino_module = LittleBits::ArduinoModule.new('serial_port')
    arduino_module.d1(true)
    arduino_module.d5(255)
    arduino_module.d9(0)

## Contributing

1. Fork it ( https://github.com/[my-github-username]/little_bits/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
