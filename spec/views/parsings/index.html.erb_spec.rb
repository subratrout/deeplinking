require 'spec_helper'

describe "parsings/index" do
  before(:each) do
    assign(:parsings, [
      stub_model(Parsing,
        :link => "MyText"
      ),
      stub_model(Parsing,
        :link => "MyText"
      )
    ])
  end

  it "renders a list of parsings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
