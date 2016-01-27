require 'spec_helper'

describe "parsings/new" do
  before(:each) do
    assign(:parsing, stub_model(Parsing,
      :link => "MyText"
    ).as_new_record)
  end

  it "renders new parsing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parsings_path, "post" do
      assert_select "textarea#parsing_link[name=?]", "parsing[link]"
    end
  end
end
