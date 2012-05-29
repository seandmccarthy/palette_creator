require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "PaletteCreator" do
  it "generates a palette from defaults" do
    PaletteCreator.create.should == [[128, 243, 31], [165, 222, 11], [199, 193, 1], [227, 158, 3], [246, 120, 15], [254, 83, 38], [251, 50, 68], [237, 24, 104], [213, 7, 142], [182, 1, 179], [145, 6, 211], [107, 22, 236], [71, 47, 250], [40, 80, 254], [17, 117, 247], [3, 155, 229], [1, 190, 202], [10, 220, 168], [29, 242, 131], [58, 253, 93], [92, 253, 58], [130, 242, 30], [167, 221, 10], [201, 191, 1], [228, 156, 3], [247, 118, 16], [254, 81, 39], [251, 48, 70], [236, 22, 106], [212, 6, 144], [180, 1, 181], [143, 6, 213]]
  end

  it "converts rgb to hex string" do
    PaletteCreator.rgb_as_hex([255, 255, 255]).should == 'FFFFFF'
  end

  it "raises exception for unsupported formats" do
    lambda { PaletteCreator(:format => :foo) }.should raise_error
  end

end
