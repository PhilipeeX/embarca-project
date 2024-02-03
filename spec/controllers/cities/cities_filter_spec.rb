# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
require 'rails_helper'

RSpec.describe CitiesController, type: :controller do
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

  describe 'When applying filters' do
    it 'assigns @cities with all cities when no filters are applied' do
      cities = [curitiba, londrina, maringa, florianopolis, joinville, blumenau, porto_alegre, caxias_do_sul, pelotas]

      get :index

      expect(assigns(:cities)).to match_array(cities)
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

  context 'When applying filters by state' do
    it 'assigns @cities filtered by Parana state' do
      get :index, params: { state_id: parana.id }

      expect(assigns(:cities)).to eq([curitiba, londrina, maringa])
      expect(assigns(:cities)).to_not include([porto_alegre, caxias_do_sul, pelotas])
    end

    it 'assigns @cities filtered by SC state' do
      get :index, params: { state_id: sc.id }

      expect(assigns(:cities)).to eq([florianopolis, joinville, blumenau])
    end
  end

  context 'When applying filters by city' do
    it 'assigns @cities filtered by city name' do
      get :index, params: { city_name: 'Florianópolis' }

      expect(assigns(:cities)).to eq([florianopolis])
    end

    it 'assigns @cities filtered by city name' do
      get :index, params: { city_name: 'Curitiba' }

      expect(assigns(:cities)).to eq([curitiba])
    end
  end

  context 'When applying filters by state and city' do
    it 'assigns @cities filtered by both' do
      get :index, params: { state_id: rs.id, city_name: 'Caxias do Sul' }

      expect(assigns(:cities)).to eq([caxias_do_sul])
    end
    it 'assigns @cities filtered by both state and city name' do
      get :index, params: { state_id: sc.id, city_name: 'flori' }

      expect(assigns(:cities)).to eq([florianopolis])
    end
  end
end
# rubocop:enable Metrics/BlockLength
