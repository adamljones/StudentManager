require 'spec_helper'

describe "techniques/index" do
  before(:each) do
    assign(:techniques, [
      stub_model(Technique,
        :sash_id => "",
        :name => "",
        :scenario => "Scenario"
      ),
      stub_model(Technique,
        :sash_id => "",
        :name => "",
        :scenario => "Scenario"
      )
    ])
  end

  it "renders a list of techniques" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Scenario".to_s, :count => 2
  end
end
