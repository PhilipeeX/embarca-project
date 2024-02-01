require 'rails_helper'

RSpec.describe StatesController, type: :controller do
  describe 'GET #index' do
    it 'assigns @states with all states' do
      parana = create(:state, name: 'Paraná')
      santa_catarina = create(:state, name: 'Santa Catarina')
      rio_grande_do_sul = create(:state, name: 'Rio Grande do Sul')

      get :index

      expect(assigns(:states)).to match_array([parana, santa_catarina, rio_grande_do_sul])
    end
  end
end
