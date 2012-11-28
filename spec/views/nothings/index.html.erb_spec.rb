require 'spec_helper'

describe "nothings/index" do
  before(:each) do
    assign(:nothings, [
      stub_model(Nothing,
        :message => "Message"
      ),
      stub_model(Nothing,
        :message => "Message"
      )
    ])
  end

  it "renders a list of nothings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Message".to_s, :count => 2
  end
end
