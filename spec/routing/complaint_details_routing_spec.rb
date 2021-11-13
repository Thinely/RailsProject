require "rails_helper"

RSpec.describe ComplaintDetailsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/complaint_details").to route_to("complaint_details#index")
    end

    it "routes to #new" do
      expect(get: "/complaint_details/new").to route_to("complaint_details#new")
    end

    it "routes to #show" do
      expect(get: "/complaint_details/1").to route_to("complaint_details#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/complaint_details/1/edit").to route_to("complaint_details#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/complaint_details").to route_to("complaint_details#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/complaint_details/1").to route_to("complaint_details#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/complaint_details/1").to route_to("complaint_details#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/complaint_details/1").to route_to("complaint_details#destroy", id: "1")
    end
  end
end
