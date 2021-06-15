#!/usr/bin/env ruby
########################################################################
# Filename    : Blink.rb
# Description : Basic usage of GPIO. Let led blink.
# author      : www.freenove.com
# modification: 2021/06/14
########################################################################
require 'wiringpi'

# Physical Pin 11 / BCM 17 / wPi 0
led_pin = 0    # define led_pin

puts "Program is starting ... \n"

io = WiringPi::GPIO.new do |gpio|
    gpio.pin_mode(led_pin, WiringPi::OUTPUT)    # set the led_pin to OUTPUT mode
end

begin
  puts "using pin #{led_pin}"
  while (true) do
    io.digital_write(led_pin, WiringPi::HIGH)   # make ledPin output HIGH level to turn on led
    puts 'led turned on >>>'                    # print information on terminal
    io.delay(1000)                              # Wait for 1 second (1000 milliseconds)
    io.digital_write(led_pin, WiringPi::LOW)    # make ledPin output LOW level to turn off led
    puts 'led turned off <<<'
    io.delay(1000)                              # Wait for 1 second (1000 milliseconds)
  end  
end
