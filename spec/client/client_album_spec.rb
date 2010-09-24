require "spec_helper"
describe Mogli::Client do
  let :client do
    Mogli::Client.new
  end
  
  it "fetches an album by id" do
    client.should_receive(:get_and_map).with(100000,Mogli::Album).and_return(Mogli::Album.new)
    client.album(100000).class.should == Mogli::Album.new.class
  end
  
end
