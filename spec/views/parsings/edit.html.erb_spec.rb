require 'spec_helper'

describe "parsings/edit" do
  before(:each) do
    @parsing = assign(:parsing, stub_model(Parsing,
      :link => "MyText"
    ))
  end

  it "renders the edit parsing form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", parsing_path(@parsing), "post" do
      assert_select "textarea#parsing_link[name=?]", "parsing[link]"
    end
  end
end
