require "spec_helper"

describe PatternTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/pattern_types").should route_to("pattern_types#index")
    end

    it "routes to #new" do
      get("/pattern_types/new").should route_to("pattern_types#new")
    end

    it "routes to #show" do
      get("/pattern_types/1").should route_to("pattern_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pattern_types/1/edit").should route_to("pattern_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pattern_types").should route_to("pattern_types#create")
    end

    it "routes to #update" do
      put("/pattern_types/1").should route_to("pattern_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pattern_types/1").should route_to("pattern_types#destroy", :id => "1")
    end

  end
end
