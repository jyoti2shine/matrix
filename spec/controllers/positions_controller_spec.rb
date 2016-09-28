require 'rails_helper'

RSpec.describe PositionsController, type: :controller do

  describe "POST #create" do
    context "with valid attributes" do
      it "create new position" do
        post :create, position: attributes_for(:position)
        expect(Position.count).to eq(1)
      end
    end
  end
end
