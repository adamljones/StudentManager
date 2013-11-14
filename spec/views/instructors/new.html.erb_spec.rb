require 'spec_helper'

describe "instructors/new" do
  before(:each) do
    assign(:instructor, stub_model(Instructor,
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new instructor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instructors_path, "post" do
      assert_select "input#instructor_firstname[name=?]", "instructor[firstname]"
      assert_select "input#instructor_lastname[name=?]", "instructor[lastname]"
      assert_select "input#instructor_email[name=?]", "instructor[email]"
    end
  end
end
