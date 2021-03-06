require 'rails_helper'

RSpec.describe FavoritesController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Favorite. As you add validations to Favorite, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FavoritesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET #index" do
    it "assigns all favorites as @favorites" do
      favorite = Favorite.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(assigns(:favorites)).to eq([favorite])
    end
  end

  describe "GET #show" do
    it "assigns the requested favorite as @favorite" do
      favorite = Favorite.create! valid_attributes
      get :show, params: {id: favorite.to_param}, session: valid_session
      expect(assigns(:favorite)).to eq(favorite)
    end
  end

  describe "GET #edit" do
    it "assigns the requested favorite as @favorite" do
      favorite = Favorite.create! valid_attributes
      get :edit, params: {id: favorite.to_param}, session: valid_session
      expect(assigns(:favorite)).to eq(favorite)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Favorite" do
        expect {
          post :create, params: {favorite: valid_attributes}, session: valid_session
        }.to change(Favorite, :count).by(1)
      end

      it "assigns a newly created favorite as @favorite" do
        post :create, params: {favorite: valid_attributes}, session: valid_session
        expect(assigns(:favorite)).to be_a(Favorite)
        expect(assigns(:favorite)).to be_persisted
      end

      it "redirects to the created favorite" do
        post :create, params: {favorite: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Favorite.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved favorite as @favorite" do
        post :create, params: {favorite: invalid_attributes}, session: valid_session
        expect(assigns(:favorite)).to be_a_new(Favorite)
      end

      it "re-renders the 'new' template" do
        post :create, params: {favorite: invalid_attributes}, session: valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested favorite" do
        favorite = Favorite.create! valid_attributes
        put :update, params: {id: favorite.to_param, favorite: new_attributes}, session: valid_session
        favorite.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested favorite as @favorite" do
        favorite = Favorite.create! valid_attributes
        put :update, params: {id: favorite.to_param, favorite: valid_attributes}, session: valid_session
        expect(assigns(:favorite)).to eq(favorite)
      end

      it "redirects to the favorite" do
        favorite = Favorite.create! valid_attributes
        put :update, params: {id: favorite.to_param, favorite: valid_attributes}, session: valid_session
        expect(response).to redirect_to(favorite)
      end
    end

    context "with invalid params" do
      it "assigns the favorite as @favorite" do
        favorite = Favorite.create! valid_attributes
        put :update, params: {id: favorite.to_param, favorite: invalid_attributes}, session: valid_session
        expect(assigns(:favorite)).to eq(favorite)
      end

      it "re-renders the 'edit' template" do
        favorite = Favorite.create! valid_attributes
        put :update, params: {id: favorite.to_param, favorite: invalid_attributes}, session: valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested favorite" do
      favorite = Favorite.create! valid_attributes
      expect {
        delete :destroy, params: {id: favorite.to_param}, session: valid_session
      }.to change(Favorite, :count).by(-1)
    end

    it "redirects to the favorites list" do
      favorite = Favorite.create! valid_attributes
      delete :destroy, params: {id: favorite.to_param}, session: valid_session
      expect(response).to redirect_to(favorites_url)
    end
  end

end
