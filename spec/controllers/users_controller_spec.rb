require 'rails_helper'

RSpec.describe UsersController, type: :controller do

    describe 'GET index' do
    
        it 'responds successfully' do
            get :index
            expect(response.status).to eq 200
        end
        it 'render json' do
            FactoryBot.create(:user)
            get :index
            json = JSON.parse(response.body)
            expect(json[0].keys).to include('id', 'name', 'email', 'created_at', 'updated_at')
        end
    end
end
