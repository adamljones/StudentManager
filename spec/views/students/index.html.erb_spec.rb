require 'spec_helper'

describe "students/index" do
  before(:each) do
    assign(:students, [
      stub_model(Student,
        :instructor_id => 1,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :email => "Email"
      ),
      stub_model(Student,
        :instructor_id => 1,
        :firstname => "Firstname",
        :lastname => "Lastname",
        :email => "Email"
      )
    ])
  end

  it "renders a list of students" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
