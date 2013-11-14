require "spec_helper"

describe SashesController do
  describe "routing" do

    it "routes to #index" do
      get("/sashes").should route_to("sashes#index")
    end

    it "routes to #new" do
      get("/sashes/new").should route_to("sashes#new")
    end

    it "routes to #show" do
      get("/sashes/1").should route_to("sashes#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sashes/1/edit").should route_to("sashes#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sashes").should route_to("sashes#create")
    end

    it "routes to #update" do
      put("/sashes/1").should route_to("sashes#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sashes/1").should route_to("sashes#destroy", :id => "1")
    end

  end
end
