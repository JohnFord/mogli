require "spec_helper"
describe Mogli::Client do
  let :client do
    Mogli::Client.new
  end
  
  it "fetches a book by id" do
    client.should_receive(:get_and_map).with(100000,Mogli::Book).and_return(Mogli::Book.new)
    client.book(100000).class.should == Mogli::Book.new.class
  end
  
end
