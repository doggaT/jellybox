require 'rails_helper'

RSpec.describe AboutController, type: :controller do
  describe 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end

    it 'returns a success response' do
      get :index
      expect(response).to be_successful
    end
  end
end
