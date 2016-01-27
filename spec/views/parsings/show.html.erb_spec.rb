require 'spec_helper'

describe "parsings/show" do
  before(:each) do
    @parsing = assign(:parsing, stub_model(Parsing,
      :link => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
  end
end
