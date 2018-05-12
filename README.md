[![Build Status](https://travis-ci.org/hebron-george/ruby-lspci.svg?branch=master)](https://travis-ci.org/hebron-george/ruby-lspci)
[![Gem Version](https://badge.fury.io/rb/lspci.svg)](https://badge.fury.io/rb/lspci)


# Getting Started

Add this line to your application's Gemfile:

```ruby
gem 'lspci'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lspci


## Usage

```ruby
[1] pry(main)> require 'lspci'
=> true
[2] pry(main)> Lspci.pci_devices
=> [{"slot"=>"00:00.0", "class"=>"Host bridge", "vendor"=>"Intel Corporation", "device"=>"Intel Kaby Lake Host Bridge", "svendor"=>"ASUSTeK Computer Inc.", "sdevice"=>"Device 872f", "rev"=>"05"},
 {"slot"=>"00:01.0", "class"=>"PCI bridge", "vendor"=>"Intel Corporation", "device"=>"Sky Lake PCIe Controller (x16)", "rev"=>"05"},
 {"slot"=>"00:01.1", "class"=>"PCI bridge", "vendor"=>"Intel Corporation", "device"=>"Sky Lake PCIe Controller (x8)", "rev"=>"05"},
 {"slot"=>"00:14.0", "class"=>"USB controller", "vendor"=>"Intel Corporation", "device"=>"200 Series PCH USB 3.0 xHCI Controller", "svendor"=>"ASUSTeK Computer Inc.", "sdevice"=>"Device 872f", "progif"=>"30"},
 {"slot"=>"00:16.0", "class"=>"Communication controller", "vendor"=>"Intel Corporation", "device"=>"200 Series PCH CSME HECI #1", "svendor"=>"ASUSTeK Computer Inc.", "sdevice"=>"Device 872f"},
 {"slot"=>"00:17.0", "class"=>"SATA controller", "vendor"=>"Intel Corporation", "device"=>"200 Series PCH SATA controller [AHCI mode]", "svendor"=>"ASUSTeK Computer Inc.", "sdevice"=>"Device 872f", "progif"=>"01"},
 {"slot"=>"00:1b.0", "class"=>"PCI bridge", "vendor"=>"Intel Corporation", "device"=>"200 Series PCH PCI Express Root Port #17", "rev"=>"f0"},
 {"slot"=>"00:1c.0", "class"=>"PCI bridge", "vendor"=>"Intel Corporation", "device"=>"200 Series PCH PCI Express Root Port #1", "rev"=>"f0"},
 {"slot"=>"00:1c.4", "class"=>"PCI bridge", "vendor"=>"Intel Corporation", "device"=>"200 Series PCH PCI Express Root Port #5", "rev"=>"f0"},
 {"slot"=>"00:1d.0", "class"=>"PCI bridge", "vendor"=>"Intel Corporation", "device"=>"200 Series PCH PCI Express Root Port #9", "rev"=>"f0"},
 {"slot"=>"00:1f.0", "class"=>"ISA bridge", "vendor"=>"Intel Corporation", "device"=>"200 Series PCH LPC Controller (Z270)", "svendor"=>"ASUSTeK Computer Inc.", "sdevice"=>"Device 872f"},
 {"slot"=>"00:1f.2", "class"=>"Memory controller", "vendor"=>"Intel Corporation", "device"=>"200 Series PCH PMC", "svendor"=>"ASUSTeK Computer Inc.", "sdevice"=>"Device 872f"},
 {"slot"=>"00:1f.3", "class"=>"Audio device", "vendor"=>"Intel Corporation", "device"=>"200 Series PCH HD Audio", "svendor"=>"ASUSTeK Computer Inc.", "sdevice"=>"Device 8724"},
 {"slot"=>"00:1f.4", "class"=>"SMBus", "vendor"=>"Intel Corporation", "device"=>"200 Series PCH SMBus Controller", "svendor"=>"ASUSTeK Computer Inc.", "sdevice"=>"Device 872f"},
 {"slot"=>"00:1f.6", "class"=>"Ethernet controller", "vendor"=>"Intel Corporation", "device"=>"Ethernet Connection (5) I219-V", "svendor"=>"ASUSTeK Computer Inc.", "sdevice"=>"Ethernet Connection (5) I219-V"},
 {"slot"=>"02:00.0", "class"=>"VGA compatible controller", "vendor"=>"NVIDIA Corporation", "device"=>"GP107 [GeForce GTX 1050]", "svendor"=>"eVga.com. Corp.", "sdevice"=>"Device 6150", "rev"=>"a1"},
 {"slot"=>"02:00.1", "class"=>"Audio device", "vendor"=>"NVIDIA Corporation", "device"=>"GP107GL High Definition Audio Controller", "svendor"=>"eVga.com. Corp.", "sdevice"=>"Device 6150", "rev"=>"a1"},
 {"slot"=>"05:00.0", "class"=>"USB controller", "vendor"=>"ASMedia Technology Inc.", "device"=>"Device 2142", "svendor"=>"ASUSTeK Computer Inc.", "sdevice"=>"Device 8732", "progif"=>"30"}]
[3] pry(main)> Lspci.pci_devices.first[:device] # note, these are HashWithIndifferentAccess
=> "Intel Kaby Lake Host Bridge"
[4] pry(main)> Lspci.pci_devices.count
=> 18

```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hebron-george/ruby-lspci. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Lspci project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hebron-george/ruby-lspci/blob/master/CODE_OF_CONDUCT.md).
