require 'spec_helper'

describe "nothings/new" do
  before(:each) do
    assign(:nothing, stub_model(Nothing,
      :message => "MyString"
    ).as_new_record)
  end

  it "renders new nothing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => nothings_path, :method => "post" do
      assert_select "input#nothing_message", :name => "nothing[message]"
    end
  end
end
