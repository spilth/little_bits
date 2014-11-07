require 'spec_helper'

module LittleBits
  describe ArduinoModule do
    let(:arduino_firmata) { double(:arduino_firmata) }

    before(:each) do
      allow(ArduinoFirmata).to receive(:connect) { arduino_firmata }
    end

    describe 'd1' do
      context 'passing it true' do
        it 'turns the d1 output on' do
          allow(arduino_firmata).to receive(:digital_write).with(1, true)

          arduino_module = LittleBits::ArduinoModule.new('serial_port')

          arduino_module.d1(true)
        end
      end

      context 'passing it false' do
        it 'turns the d1 output off' do
          allow(arduino_firmata).to receive(:digital_write).with(1, false)

          arduino_module = LittleBits::ArduinoModule.new('serial_port')

          arduino_module.d1(false)
        end
      end
    end

    describe 'd5' do
      context 'passing it true' do
        it 'turns the d5 output on' do
          allow(arduino_firmata).to receive(:digital_write).with(5, true)

          arduino_module = LittleBits::ArduinoModule.new('serial_port')

          arduino_module.d5(true)
        end
      end

      context 'passing it false' do
        it 'turns the d5 output off' do
          allow(arduino_firmata).to receive(:digital_write).with(5, false)

          arduino_module = LittleBits::ArduinoModule.new('serial_port')

          arduino_module.d5(false)
        end
      end

      context 'passing it a number' do
        it 'sends the number to the arduino' do
          allow(arduino_firmata).to receive(:analog_write).with(5, 128)

          arduino_module = LittleBits::ArduinoModule.new('serial_port')

          arduino_module.d5(128)
        end
      end
    end

    describe 'd9' do
      context 'passing it true' do
        it 'turns the d9 output on' do
          allow(arduino_firmata).to receive(:digital_write).with(9, true)

          arduino_module = LittleBits::ArduinoModule.new('serial_port')

          arduino_module.d9(true)
        end
      end

      context 'passing it false' do
        it 'turns the d9 output off' do
          allow(arduino_firmata).to receive(:digital_write).with(9, false)

          arduino_module = LittleBits::ArduinoModule.new('serial_port')

          arduino_module.d9(false)
        end
      end

      context 'passing it a number' do
        it 'sends the number to the arduino' do
          allow(arduino_firmata).to receive(:analog_write).with(9, 128)

          arduino_module = LittleBits::ArduinoModule.new('serial_port')

          arduino_module.d9(128)
        end
      end
    end
  end
end