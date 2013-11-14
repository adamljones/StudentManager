require "spec_helper"

describe TechniquesController do
  describe "routing" do

    it "routes to #index" do
      get("/techniques").should route_to("techniques#index")
    end

    it "routes to #new" do
      get("/techniques/new").should route_to("techniques#new")
    end

    it "routes to #show" do
      get("/techniques/1").should route_to("techniques#show", :id => "1")
    end

    it "routes to #edit" do
      get("/techniques/1/edit").should route_to("techniques#edit", :id => "1")
    end

    it "routes to #create" do
      post("/techniques").should route_to("techniques#create")
    end

    it "routes to #update" do
      put("/techniques/1").should route_to("techniques#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/techniques/1").should route_to("techniques#destroy", :id => "1")
    end

  end
end
