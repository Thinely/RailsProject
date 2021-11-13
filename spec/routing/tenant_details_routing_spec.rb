require "rails_helper"

RSpec.describe TenantDetailsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/tenant_details").to route_to("tenant_details#index")
    end

    it "routes to #new" do
      expect(get: "/tenant_details/new").to route_to("tenant_details#new")
    end

    it "routes to #show" do
      expect(get: "/tenant_details/1").to route_to("tenant_details#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/tenant_details/1/edit").to route_to("tenant_details#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/tenant_details").to route_to("tenant_details#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/tenant_details/1").to route_to("tenant_details#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/tenant_details/1").to route_to("tenant_details#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/tenant_details/1").to route_to("tenant_details#destroy", id: "1")
    end
  end
end
