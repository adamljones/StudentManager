require 'spec_helper'

describe "pattern_types/new" do
  before(:each) do
    assign(:pattern_type, stub_model(PatternType,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new pattern_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pattern_types_path, "post" do
      assert_select "input#pattern_type_name[name=?]", "pattern_type[name]"
    end
  end
end
