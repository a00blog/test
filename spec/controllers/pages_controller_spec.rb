require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'clients'" do
    it "returns http success" do
      get 'clients'
      response.should be_success
    end
  end

  describe "GET 'portf'" do
    it "returns http success" do
      get 'portf'
      response.should be_success
    end
  end

 describe "GET 'about'" do
     it "returns http success" do
           get 'about'
         response.should be_success
     end
       end

end
