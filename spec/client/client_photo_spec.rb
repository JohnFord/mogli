require "spec_helper"
describe Mogli::Client do
  let :client do
    Mogli::Client.new
  end
  
  it "fetches a photo by id" do
    client.should_receive(:get_and_map).with(100000,Mogli::Photo).and_return(Mogli::Photo.new)
    client.photo(100000).class.should == Mogli::Photo.new.class
  end
  
end
