require "rails_helper"

RSpec.describe HouseDetailsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/house_details").to route_to("house_details#index")
    end

    it "routes to #new" do
      expect(get: "/house_details/new").to route_to("house_details#new")
    end

    it "routes to #show" do
      expect(get: "/house_details/1").to route_to("house_details#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/house_details/1/edit").to route_to("house_details#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/house_details").to route_to("house_details#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/house_details/1").to route_to("house_details#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/house_details/1").to route_to("house_details#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/house_details/1").to route_to("house_details#destroy", id: "1")
    end
  end
end
