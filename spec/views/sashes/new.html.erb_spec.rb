require 'spec_helper'

describe "sashes/new" do
  before(:each) do
    assign(:sash, stub_model(Sash,
      :colour => "MyString"
    ).as_new_record)
  end

  it "renders new sash form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", sashes_path, "post" do
      assert_select "input#sash_colour[name=?]", "sash[colour]"
    end
  end
end
