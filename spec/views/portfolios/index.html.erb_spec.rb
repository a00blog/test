require 'spec_helper'

describe "portfolios/index" do
  before(:each) do
    assign(:portfolios, [
      stub_model(Portfolio,
        :title => "Title",
        :title_o => "Title O",
        :image_url => "Image Url",
        :image_url_pr => "Image Url Pr"
      ),
      stub_model(Portfolio,
        :title => "Title",
        :title_o => "Title O",
        :image_url => "Image Url",
        :image_url_pr => "Image Url Pr"
      )
    ])
  end

  it "renders a list of portfolios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Title O".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url".to_s, :count => 2
    assert_select "tr>td", :text => "Image Url Pr".to_s, :count => 2
  end
end
