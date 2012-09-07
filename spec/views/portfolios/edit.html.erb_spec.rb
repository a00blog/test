require 'spec_helper'

describe "portfolios/edit" do
  before(:each) do
    @portfolio = assign(:portfolio, stub_model(Portfolio,
      :title => "MyString",
      :title_o => "MyString",
      :image_url => "MyString",
      :image_url_pr => "MyString"
    ))
  end

  it "renders the edit portfolio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => portfolios_path(@portfolio), :method => "post" do
      assert_select "input#portfolio_title", :name => "portfolio[title]"
      assert_select "input#portfolio_title_o", :name => "portfolio[title_o]"
      assert_select "input#portfolio_image_url", :name => "portfolio[image_url]"
      assert_select "input#portfolio_image_url_pr", :name => "portfolio[image_url_pr]"
    end
  end
end
