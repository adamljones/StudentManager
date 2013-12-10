require 'spec_helper'

describe "pattern_types/index" do
  before(:each) do
    assign(:pattern_types, [
      stub_model(PatternType,
        :name => "Name"
      ),
      stub_model(PatternType,
        :name => "Name"
      )
    ])
  end

  it "renders a list of pattern_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
