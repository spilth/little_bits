require 'spec_helper'

module LittleBits
  describe NumberModule do
    describe '.number_to_pwm' do
      it 'converts numbers to clock values' do
        expect(NumberModule.number_to_pwm(0)).to eq 0
        expect(NumberModule.number_to_pwm(1)).to eq 3

        expect(NumberModule.number_to_pwm(49)).to eq 124
        expect(NumberModule.number_to_pwm(50)).to eq 127
        expect(NumberModule.number_to_pwm(51)).to eq 129

        expect(NumberModule.number_to_pwm(98)).to eq 247
        expect(NumberModule.number_to_pwm(99)).to eq 252
      end
    end
  end
end