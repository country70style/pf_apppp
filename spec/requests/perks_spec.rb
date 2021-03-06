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

RSpec.describe "/perks", type: :request do
  # Perk. As you add validations to Perk, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Perk.create! valid_attributes
      get perks_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      perk = Perk.create! valid_attributes
      get perk_url(perk)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_perk_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      perk = Perk.create! valid_attributes
      get edit_perk_url(perk)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Perk" do
        expect {
          post perks_url, params: { perk: valid_attributes }
        }.to change(Perk, :count).by(1)
      end

      it "redirects to the created perk" do
        post perks_url, params: { perk: valid_attributes }
        expect(response).to redirect_to(perk_url(Perk.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Perk" do
        expect {
          post perks_url, params: { perk: invalid_attributes }
        }.to change(Perk, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post perks_url, params: { perk: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested perk" do
        perk = Perk.create! valid_attributes
        patch perk_url(perk), params: { perk: new_attributes }
        perk.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the perk" do
        perk = Perk.create! valid_attributes
        patch perk_url(perk), params: { perk: new_attributes }
        perk.reload
        expect(response).to redirect_to(perk_url(perk))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        perk = Perk.create! valid_attributes
        patch perk_url(perk), params: { perk: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested perk" do
      perk = Perk.create! valid_attributes
      expect {
        delete perk_url(perk)
      }.to change(Perk, :count).by(-1)
    end

    it "redirects to the perks list" do
      perk = Perk.create! valid_attributes
      delete perk_url(perk)
      expect(response).to redirect_to(perks_url)
    end
  end
end
