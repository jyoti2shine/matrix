require 'rails_helper'

RSpec.describe TrainingsController do
  describe "GET index" do
    it "successfully renders the index template" do
      expect(controller).to receive(:index)
      get :index
      expect(response).to render_template(:index)
    end
  end
end
