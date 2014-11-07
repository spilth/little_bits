[![Build Status](https://travis-ci.org/spilth/little_bits.svg?branch=master)](https://travis-ci.org/spilth/little_bits)

# LittleBits

A Ruby Gem for communicating with [littleBits](http://littlebits.cc) modules.

Currently supported are:

- [cloudBit](http://littlebits.cc/bits/cloudbit)
- [Arduino Module](http://littlebits.cc/bits/arduino)

## Requirements

- [Ruby](https://www.ruby-lang.org/en/)
- [RubyGems](https://rubygems.org/pages/download)
- [Bundler](http://bundler.io)
- [Arduino IDE](http://arduino.cc/en/Main/Software)

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

You'll need the **Access Token** and **Device ID** from the Settings page of the [littleBits CloudBit Control Panel](http://control.littlebitscloud.cc)

You can then start up `irb` or create a script with the following code:

    require 'little_bits'
    
    cloud_bit = LittleBits::CloudBit.new('your-access-token', 'your-device-id')
    
    # Set output to 100% for 3 seconds (3000 milliseconds)
    cloud_bit.output(100, 3000)

### Arduino Module

First, follow the [littleBits Arduino Module Getting Started Guide](http://discuss.littlebits.cc/t/getting-started/109) to set up your Arduino module.

You'll need to know the serial port that the Arduino is plugged into.

You'll also need to load the **StandardFirmata** sketch onto your Arduino Module:

- Start the Arduino IDE
- Plug in a USB cable from your computer to the Arduino Module
- Select the serial port your Arduino is on from **Tools** > **Serial Port**
- Switch to the **Arduino Leonardo** board by clicking on the **Tools** menu, then **Board** > **Arduino Leonardo**
- Select the **File** menu, then **Example** > **Firmata** > **Standard Firmata**
- Select the **File** menu, then **Upload**

You can then start up `irb` or create a Ruby script with the following code:

    require 'little_bits'
    
    arduino_module = LittleBits::ArduinoModule.new('/your/serial_port')
    
    # Turn on d1
    arduino_module.d1(true)
    
    # Set d5 to max output
    arduino_module.d5(255)
    
    # Set d9 to min output
    arduino_module.d9(0)

## Contributing

1. Fork it ( https://github.com/spilth/little_bits/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
