require "spec_helper"

describe ParsingsController do
  describe "routing" do

    it "routes to #index" do
      get("/parsings").should route_to("parsings#index")
    end

    it "routes to #new" do
      get("/parsings/new").should route_to("parsings#new")
    end

    it "routes to #show" do
      get("/parsings/1").should route_to("parsings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/parsings/1/edit").should route_to("parsings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/parsings").should route_to("parsings#create")
    end

    it "routes to #update" do
      put("/parsings/1").should route_to("parsings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/parsings/1").should route_to("parsings#destroy", :id => "1")
    end

  end
end
