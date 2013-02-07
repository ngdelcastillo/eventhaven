require "spec_helper"

describe SupplierTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/supplier_types").should route_to("supplier_types#index")
    end

    it "routes to #new" do
      get("/supplier_types/new").should route_to("supplier_types#new")
    end

    it "routes to #show" do
      get("/supplier_types/1").should route_to("supplier_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/supplier_types/1/edit").should route_to("supplier_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/supplier_types").should route_to("supplier_types#create")
    end

    it "routes to #update" do
      put("/supplier_types/1").should route_to("supplier_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/supplier_types/1").should route_to("supplier_types#destroy", :id => "1")
    end

  end
end
