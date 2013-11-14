require 'spec_helper'

describe "techniques/show" do
  before(:each) do
    @technique = assign(:technique, stub_model(Technique,
      :sash_id => "",
      :name => "",
      :scenario => "Scenario"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Scenario/)
  end
end
