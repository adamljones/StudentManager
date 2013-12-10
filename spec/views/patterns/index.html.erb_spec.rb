require 'spec_helper'

describe "patterns/index" do
  before(:each) do
    assign(:patterns, [
      stub_model(Pattern,
        :name => "Name",
        :pattern_type_id => 1,
        :description => "Description"
      ),
      stub_model(Pattern,
        :name => "Name",
        :pattern_type_id => 1,
        :description => "Description"
      )
    ])
  end

  it "renders a list of patterns" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
