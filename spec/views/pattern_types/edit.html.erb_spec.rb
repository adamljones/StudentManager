require 'spec_helper'

describe "pattern_types/edit" do
  before(:each) do
    @pattern_type = assign(:pattern_type, stub_model(PatternType,
      :name => "MyString"
    ))
  end

  it "renders the edit pattern_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pattern_type_path(@pattern_type), "post" do
      assert_select "input#pattern_type_name[name=?]", "pattern_type[name]"
    end
  end
end
