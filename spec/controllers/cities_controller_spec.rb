# frozen_string_literal: true

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

  describe 'When applying filters' do
    let!(:parana) { create(:state, name: 'Paraná') }
    let!(:sc) { create(:state, name: 'Santa Catarina') }
    let!(:rs) { create(:state, name: 'Rio Grande do Sul') }

    let!(:curitiba) { create(:city, name: 'Curitiba', state: parana) }
    let!(:londrina) { create(:city, name: 'Londrina', state: parana) }
    let!(:maringa) { create(:city, name: 'Maringá', state: parana) }

    let!(:florianopolis) { create(:city, name: 'Florianópolis', state: sc) }
    let!(:joinville) { create(:city, name: 'Joinville', state: sc) }
    let!(:blumenau) { create(:city, name: 'Blumenau', state: sc) }

    let!(:porto_alegre) { create(:city, name: 'Porto Alegre', state: rs) }
    let!(:caxias_do_sul) { create(:city, name: 'Caxias do Sul', state: rs) }
    let!(:pelotas) { create(:city, name: 'Pelotas', state: rs) }

    it 'assigns @cities with all cities when no filters are applied' do
      cities = [curitiba, londrina, maringa, florianopolis, joinville, blumenau, porto_alegre, caxias_do_sul, pelotas]

      get :index

      expect(assigns(:cities)).to match_array(cities)
    end

    it 'assigns @cities filtered by Parana state' do
      get :index, params: { state_id: parana.id }

      expect(assigns(:cities)).to eq([curitiba, londrina, maringa])
      expect(assigns(:cities)).to_not include([porto_alegre, caxias_do_sul, pelotas])
    end

    it 'assigns @cities filtered by SC state' do
      get :index, params: { state_id: sc.id }

      expect(assigns(:cities)).to eq([florianopolis, joinville, blumenau])
    end

    it 'assigns @cities filtered by city name' do
      get :index, params: { city_name: 'Florianópolis' }

      expect(assigns(:cities)).to eq([florianopolis])
    end

    it 'assigns @cities filtered by both state and city name' do
      get :index, params: { state_id: rs.id, city_name: 'Caxias do Sul' }

      expect(assigns(:cities)).to eq([caxias_do_sul])
      expect(assigns(:cities)).to_not include([porto_alegre])
    end

    it 'assigns @cities filtered by uppercase' do
      get :index, params: { state_id: rs.id, city_name: 'CAXIAS DO SUL' }

      expect(assigns(:cities)).to eq([caxias_do_sul])
      expect(assigns(:cities)).to_not include([porto_alegre])
    end

    it 'assigns @cities filtered by downcase' do
      get :index, params: { state_id: rs.id, city_name: 'porto alegre' }

      expect(assigns(:cities)).to eq([porto_alegre])
    end
  end
end
