# Ruby Setup

Note: This does not work because the WiringPi library only supports BCM2708 or
BCM2709 hardware, not BCM2711.

## Installing Ruby-Dev Tools

To install the Wiring Pi gem, we need to install some Ruby-Dev libraries
as a pre-requisite. This command will do that for the version of Ruby
that is currently installed on your Raspberry Pi.

```shell
sudo apt-get install ruby`ruby -e 'puts RUBY_VERSION[/\d+\.\d+/]'`-dev
```

## Wiring Pi Gem

Ruby uses libraries called "gems". You must install the [WiringPi gem] to run
the code Ruby examples.

```shell
sudo gem install wiringpi
```

[WiringPi gem]: https://rubygems.org/gems/wiringpi

## Running Ruby Scripts

For WiringPi to operate, it must be run as root. Make sure to run the code
examples using `sudo ruby`.

For example:

```shell
sudo ruby Blink.rb
```
