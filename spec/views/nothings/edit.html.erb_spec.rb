require 'spec_helper'

describe "nothings/edit" do
  before(:each) do
    @nothing = assign(:nothing, stub_model(Nothing,
      :message => "MyString"
    ))
  end

  it "renders the edit nothing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nothings_path(@nothing), :method => "post" do
      assert_select "input#nothing_message", :name => "nothing[message]"
    end
  end
end
