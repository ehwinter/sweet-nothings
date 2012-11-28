require "spec_helper"

describe NothingsController do
  describe "routing" do

    it "routes to #index" do
      get("/nothings").should route_to("nothings#index")
    end

    it "routes to #new" do
      get("/nothings/new").should route_to("nothings#new")
    end

    it "routes to #show" do
      get("/nothings/1").should route_to("nothings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/nothings/1/edit").should route_to("nothings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/nothings").should route_to("nothings#create")
    end

    it "routes to #update" do
      put("/nothings/1").should route_to("nothings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/nothings/1").should route_to("nothings#destroy", :id => "1")
    end

  end
end
