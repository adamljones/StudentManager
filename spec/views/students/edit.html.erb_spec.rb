require 'spec_helper'

describe "students/edit" do
  before(:each) do
    @student = assign(:student, stub_model(Student,
      :instructor_id => 1,
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", student_path(@student), "post" do
      assert_select "input#student_instructor_id[name=?]", "student[instructor_id]"
      assert_select "input#student_firstname[name=?]", "student[firstname]"
      assert_select "input#student_lastname[name=?]", "student[lastname]"
      assert_select "input#student_email[name=?]", "student[email]"
    end
  end
end
