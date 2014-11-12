require 'arduino_firmata'

module LittleBits
  class ArduinoModule
    def initialize(serial_port)
      @arduino = ArduinoFirmata.connect(serial_port)

      Kernel.at_exit { @arduino.close }
    end

    def d1(value)
      arduino.digital_write(1, value)
    end

    def d5(value)
      if value.is_a?(Numeric)
        arduino.analog_write(5, value)
      else
        arduino.digital_write(5, value)
      end
    end

    def d9(value)
      if value.is_a?(Numeric)
        arduino.analog_write(9, value)
      else
        arduino.digital_write(9, value)
      end
    end

    private

    attr_reader :arduino

  end
end