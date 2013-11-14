require 'spec_helper'

describe "students/new" do
  before(:each) do
    assign(:student, stub_model(Student,
      :instructor_id => 1,
      :firstname => "MyString",
      :lastname => "MyString",
      :email => "MyString"
    ).as_new_record)
  end

  it "renders new student form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", students_path, "post" do
      assert_select "input#student_instructor_id[name=?]", "student[instructor_id]"
      assert_select "input#student_firstname[name=?]", "student[firstname]"
      assert_select "input#student_lastname[name=?]", "student[lastname]"
      assert_select "input#student_email[name=?]", "student[email]"
    end
  end
end
