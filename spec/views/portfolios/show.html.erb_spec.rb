require 'spec_helper'

describe "portfolios/show" do
  before(:each) do
    @portfolio = assign(:portfolio, stub_model(Portfolio,
      :title => "Title",
      :title_o => "Title O",
      :image_url => "Image Url",
      :image_url_pr => "Image Url Pr"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/Title O/)
    rendered.should match(/Image Url/)
    rendered.should match(/Image Url Pr/)
  end
end
