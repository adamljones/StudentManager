require 'spec_helper'

describe "sashes/index" do
  before(:each) do
    assign(:sashes, [
      stub_model(Sash,
        :colour => "Colour"
      ),
      stub_model(Sash,
        :colour => "Colour"
      )
    ])
  end

  it "renders a list of sashes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Colour".to_s, :count => 2
  end
end
