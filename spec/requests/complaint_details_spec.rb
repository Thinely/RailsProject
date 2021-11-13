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

RSpec.describe "/complaint_details", type: :request do
  
  # ComplaintDetail. As you add validations to ComplaintDetail, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      ComplaintDetail.create! valid_attributes
      get complaint_details_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      complaint_detail = ComplaintDetail.create! valid_attributes
      get complaint_detail_url(complaint_detail)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_complaint_detail_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      complaint_detail = ComplaintDetail.create! valid_attributes
      get edit_complaint_detail_url(complaint_detail)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new ComplaintDetail" do
        expect {
          post complaint_details_url, params: { complaint_detail: valid_attributes }
        }.to change(ComplaintDetail, :count).by(1)
      end

      it "redirects to the created complaint_detail" do
        post complaint_details_url, params: { complaint_detail: valid_attributes }
        expect(response).to redirect_to(complaint_detail_url(ComplaintDetail.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new ComplaintDetail" do
        expect {
          post complaint_details_url, params: { complaint_detail: invalid_attributes }
        }.to change(ComplaintDetail, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post complaint_details_url, params: { complaint_detail: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested complaint_detail" do
        complaint_detail = ComplaintDetail.create! valid_attributes
        patch complaint_detail_url(complaint_detail), params: { complaint_detail: new_attributes }
        complaint_detail.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the complaint_detail" do
        complaint_detail = ComplaintDetail.create! valid_attributes
        patch complaint_detail_url(complaint_detail), params: { complaint_detail: new_attributes }
        complaint_detail.reload
        expect(response).to redirect_to(complaint_detail_url(complaint_detail))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        complaint_detail = ComplaintDetail.create! valid_attributes
        patch complaint_detail_url(complaint_detail), params: { complaint_detail: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested complaint_detail" do
      complaint_detail = ComplaintDetail.create! valid_attributes
      expect {
        delete complaint_detail_url(complaint_detail)
      }.to change(ComplaintDetail, :count).by(-1)
    end

    it "redirects to the complaint_details list" do
      complaint_detail = ComplaintDetail.create! valid_attributes
      delete complaint_detail_url(complaint_detail)
      expect(response).to redirect_to(complaint_details_url)
    end
  end
end