require 'spec_helper'

describe "forms/edit" do
  before(:each) do
    @form = assign(:form, stub_model(Form,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit form form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", form_path(@form), "post" do
      assert_select "input#form_name[name=?]", "form[name]"
      assert_select "input#form_description[name=?]", "form[description]"
    end
  end
end
