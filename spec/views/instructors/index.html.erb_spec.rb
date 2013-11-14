require 'spec_helper'

describe "instructors/index" do
  before(:each) do
    assign(:instructors, [
      stub_model(Instructor,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :email => "Email"
      ),
      stub_model(Instructor,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :email => "Email"
      )
    ])
  end

  it "renders a list of instructors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
