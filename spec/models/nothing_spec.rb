
#here is a comment
describe Nothing do
  it "should be able to save a message" do
    m='some message'
    Nothing.create!(message: 'some message')
    Nothing.last.message.should == m 
  end
end
