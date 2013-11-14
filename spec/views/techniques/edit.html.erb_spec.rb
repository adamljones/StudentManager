require 'spec_helper'

describe "techniques/edit" do
  before(:each) do
    @technique = assign(:technique, stub_model(Technique,
      :sash_id => "",
      :name => "",
      :scenario => "MyString"
    ))
  end

  it "renders the edit technique form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", technique_path(@technique), "post" do
      assert_select "input#technique_sash_id[name=?]", "technique[sash_id]"
      assert_select "input#technique_name[name=?]", "technique[name]"
      assert_select "input#technique_scenario[name=?]", "technique[scenario]"
    end
  end
end
