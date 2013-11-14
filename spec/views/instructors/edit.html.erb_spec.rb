require 'spec_helper'

describe "instructors/edit" do
  before(:each) do
    @instructor = assign(:instructor, stub_model(Instructor,
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit instructor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", instructor_path(@instructor), "post" do
      assert_select "input#instructor_firstname[name=?]", "instructor[firstname]"
      assert_select "input#instructor_lastname[name=?]", "instructor[lastname]"
      assert_select "input#instructor_email[name=?]", "instructor[email]"
    end
  end
end
