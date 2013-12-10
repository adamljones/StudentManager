require 'spec_helper'

describe "patterns/new" do
  before(:each) do
    assign(:pattern, stub_model(Pattern,
      :name => "MyString",
      :pattern_type_id => 1,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new pattern form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", patterns_path, "post" do
      assert_select "input#pattern_name[name=?]", "pattern[name]"
      assert_select "input#pattern_pattern_type_id[name=?]", "pattern[pattern_type_id]"
      assert_select "input#pattern_description[name=?]", "pattern[description]"
    end
  end
end
