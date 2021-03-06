require 'spec_helper'

describe "forms/new" do
  before(:each) do
    assign(:form, stub_model(Form,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new form form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", forms_path, "post" do
      assert_select "input#form_name[name=?]", "form[name]"
      assert_select "input#form_description[name=?]", "form[description]"
    end
  end
end
