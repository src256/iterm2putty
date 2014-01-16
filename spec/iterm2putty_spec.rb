require 'spec_helper'

describe Iterm2putty do
  it 'should have a version number' do
    Iterm2putty::VERSION.should_not be_nil
  end

#  it 'should do something useful' do
#    false.should be_true
#  end

  it 'should convert LuciusLight colors' do
    filename = File.expand_path('../fixtures/LuciusLight.itermcolors', __FILE__)
    putty = Iterm2putty::PuttyColor.create_with_plist(filename)
    putty.colour_0.should == "68,68,68"
    putty.colour_1.should == "68,68,68"
    putty.colour_2.should == "238,238,238"
    putty.colour_3.should == "238,238,238"
    putty.colour_4.should == "238,238,238"
    putty.colour_5.should == "95,135,175"
    putty.colour_6.should == "68,68,68"
    putty.colour_7.should == "68,68,68"
    putty.colour_8.should == "175,0,0"
    putty.colour_9.should == "175,0,0"
    putty.colour_10.should == "0,135,0"
    putty.colour_11.should == "0,135,0"
    putty.colour_12.should == "175,95,0"
    putty.colour_13.should == "175,95,0"
    putty.colour_14.should == "0,95,175"
    putty.colour_15.should == "0,95,175"
    putty.colour_16.should == "135,0,135"
    putty.colour_17.should == "135,0,135"
    putty.colour_18.should == "0,135,135"
    putty.colour_19.should == "0,135,135"
    putty.colour_20.should == "238,238,238"
    putty.colour_21.should == "238,238,238"
  end

  it 'should convert to a windows reg file' do
    filename = File.expand_path('../fixtures/LuciusLight.itermcolors', __FILE__)
    putty = Iterm2putty::PuttyColor.create_with_plist(filename)

    expected_filename = File.expand_path('../fixtures/LuciusLight.reg', __FILE__)
    expected = File.read(expected_filename)
    putty.to_reg('LuciusLight').should == expected
  end
end
