require 'sinatra'
require 'byebug'
require './app/converter'



class ClinickrApp < Sinatra::Base
  set :bind, '0.0.0.0'


  get '/' do
    @title = 'Vamos votar'    
    erb :index
  end


  post '/table' do
    begin
      @data = Converter.to_array(params['csv'])
      @titulo = 'Seus dados estão aqui!'
      erb :table
    rescue
      @error = 'Arquivo inválido'
      erb :index
    end
  end

  run! 
end