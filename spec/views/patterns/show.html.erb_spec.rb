require 'spec_helper'

describe "patterns/show" do
  before(:each) do
    @pattern = assign(:pattern, stub_model(Pattern,
      :name => "Name",
      :pattern_type_id => 1,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/Description/)
  end
end
