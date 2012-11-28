require 'spec_helper'

describe "nothings/show" do
  before(:each) do
    @nothing = assign(:nothing, stub_model(Nothing,
      :message => "Message"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Message/)
  end
end
