require 'spec_helper'

RSpec.describe ClinickrApp do
  
  def app 
    ClinickrApp
  end


  describe 'Usuário visita a página inicial' do
    it 'com sucesso' do

      get '/'

      expect(last_response.status).to eq 200

    end
  end
end