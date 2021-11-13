require "rails_helper"

RSpec.describe UserdashboardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/userdashboards").to route_to("userdashboards#index")
    end

    it "routes to #new" do
      expect(get: "/userdashboards/new").to route_to("userdashboards#new")
    end

    it "routes to #show" do
      expect(get: "/userdashboards/1").to route_to("userdashboards#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/userdashboards/1/edit").to route_to("userdashboards#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/userdashboards").to route_to("userdashboards#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/userdashboards/1").to route_to("userdashboards#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/userdashboards/1").to route_to("userdashboards#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/userdashboards/1").to route_to("userdashboards#destroy", id: "1")
    end
  end
end
