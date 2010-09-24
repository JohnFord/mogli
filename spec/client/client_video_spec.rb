require "spec_helper"
describe Mogli::Client do
  let :client do
    Mogli::Client.new
  end
  
  it "fetches a video by id" do
    client.should_receive(:get_and_map).with(100000,Mogli::Event).and_return(Mogli::Event.new)
    client.event(100000).class.should == Mogli::Event.new.class
  end
  
end
