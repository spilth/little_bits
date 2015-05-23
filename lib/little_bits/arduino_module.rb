require 'arduino_firmata'

module LittleBits
  class ArduinoModule
    def initialize(serial_port)
      @arduino = ArduinoFirmata.connect(serial_port)
      @arduino.pin_mode 0, ArduinoFirmata::INPUT

      Kernel.at_exit { @arduino.close }
    end

    ## output pins
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

    ## input pins
    def d0
      arduino.digital_read 0
    end

    def a0
      arduino.analog_read 0
    end

    def a1
      arduino.analog_read 1
    end

    private

    attr_reader :arduino

  end
end
