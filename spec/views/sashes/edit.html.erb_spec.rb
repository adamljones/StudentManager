require 'spec_helper'

describe "sashes/edit" do
  before(:each) do
    @sash = assign(:sash, stub_model(Sash,
      :colour => "MyString"
    ))
  end

  it "renders the edit sash form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sash_path(@sash), "post" do
      assert_select "input#sash_colour[name=?]", "sash[colour]"
    end
  end
end
