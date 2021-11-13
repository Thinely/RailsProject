 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/caretakers", type: :request do
  
  # Caretaker. As you add validations to Caretaker, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Caretaker.create! valid_attributes
      get caretakers_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      caretaker = Caretaker.create! valid_attributes
      get caretaker_url(caretaker)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_caretaker_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      caretaker = Caretaker.create! valid_attributes
      get edit_caretaker_url(caretaker)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Caretaker" do
        expect {
          post caretakers_url, params: { caretaker: valid_attributes }
        }.to change(Caretaker, :count).by(1)
      end

      it "redirects to the created caretaker" do
        post caretakers_url, params: { caretaker: valid_attributes }
        expect(response).to redirect_to(caretaker_url(Caretaker.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Caretaker" do
        expect {
          post caretakers_url, params: { caretaker: invalid_attributes }
        }.to change(Caretaker, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post caretakers_url, params: { caretaker: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested caretaker" do
        caretaker = Caretaker.create! valid_attributes
        patch caretaker_url(caretaker), params: { caretaker: new_attributes }
        caretaker.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the caretaker" do
        caretaker = Caretaker.create! valid_attributes
        patch caretaker_url(caretaker), params: { caretaker: new_attributes }
        caretaker.reload
        expect(response).to redirect_to(caretaker_url(caretaker))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        caretaker = Caretaker.create! valid_attributes
        patch caretaker_url(caretaker), params: { caretaker: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested caretaker" do
      caretaker = Caretaker.create! valid_attributes
      expect {
        delete caretaker_url(caretaker)
      }.to change(Caretaker, :count).by(-1)
    end

    it "redirects to the caretakers list" do
      caretaker = Caretaker.create! valid_attributes
      delete caretaker_url(caretaker)
      expect(response).to redirect_to(caretakers_url)
    end
  end
end