require 'rails_helper'

RSpec.describe UserController, type: :controller do

	context 'get index' do
		it 'index' do
			get :index
			expect(response).to be_success
		end
	end
	
end
