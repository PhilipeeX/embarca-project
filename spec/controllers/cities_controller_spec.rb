# spec/controllers/cities_controller_spec.rb

require 'rails_helper'

RSpec.describe CitiesController, type: :controller do
  describe 'GET #index' do
    it 'assigns @cities with all cities' do
      cities = create_list(:city, 3)

      get :index

      expect(assigns(:cities)).to match_array(cities)
    end

    it 'renders the index template' do
      get :index

      expect(response).to render_template :index
    end
  end
end
