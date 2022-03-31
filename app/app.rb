require 'sinatra'
require 'sinatra-activerecord'
require 'byebug'
require './converter'

class ClinickrApp < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  set :bind, '0.0.0.0'



  # configure :development do
  #   set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'clinickr', pool: 2, username: 'postgres', password: 'postgres'}
  # end
  
  # configure :production do
  #   set :database, {adapter: 'postgresql',  encoding: 'unicode', database: 'clinickr', pool: 2, username: 'postgres', password: 'postgres'}
  # end

  get '/' do  
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