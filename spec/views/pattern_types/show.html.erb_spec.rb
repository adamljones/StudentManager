require 'spec_helper'

describe "pattern_types/show" do
  before(:each) do
    @pattern_type = assign(:pattern_type, stub_model(PatternType,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
