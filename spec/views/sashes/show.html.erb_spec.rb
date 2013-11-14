require 'spec_helper'

describe "sashes/show" do
  before(:each) do
    @sash = assign(:sash, stub_model(Sash,
      :colour => "Colour"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Colour/)
  end
end
