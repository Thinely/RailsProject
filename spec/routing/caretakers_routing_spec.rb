require "rails_helper"

RSpec.describe CaretakersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/caretakers").to route_to("caretakers#index")
    end

    it "routes to #new" do
      expect(get: "/caretakers/new").to route_to("caretakers#new")
    end

    it "routes to #show" do
      expect(get: "/caretakers/1").to route_to("caretakers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/caretakers/1/edit").to route_to("caretakers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/caretakers").to route_to("caretakers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/caretakers/1").to route_to("caretakers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/caretakers/1").to route_to("caretakers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/caretakers/1").to route_to("caretakers#destroy", id: "1")
    end
  end
end
