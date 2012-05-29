require 'ostruct'

# Author::    Sean McCarthy
# Copyright:: Copyright (c) 2012 Sean McCarthy
# License::   GPL3
#
# Based on http://krazydad.com/tutorials/makecolors.php
module PaletteCreator

  # Create a colour palette
  #
  # _options_ can have the following keys: 
  # * *count*: number of colours to generate
  # * *frequency*: frequency of the sine wave
  # * *phases*: 
  def self.create(options={})
    opts = OpenStruct.new(options)
    count     = opts.count || 32
    frequency = opts.frequency || 0.3
    phases    = opts.phases || [0, 2, 4]
    amplitude = 127 # ~ 255/2
    center    = 128 # ~ 255/2

    palette = []
    count.times do |i|
      red   = Math.sin(frequency*i + phases[0]) * amplitude + center;
      green = Math.sin(frequency*i + phases[1]) * amplitude + center;
      blue  = Math.sin(frequency*i + phases[2]) * amplitude + center;
      palette << [red.to_i, green.to_i, blue.to_i]
    end
    palette
  end

  def self.rgb_as_hex(rgb_array)
    rgb_array.map{|val| "%02x" % val}.join('').upcase
  end

end
