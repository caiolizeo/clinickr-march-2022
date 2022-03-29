class ClinickrApp < Sinatra::Base

  Opcoes = {
    'HAM' => 'Hambúrger',
    'PIZ' => 'Pizza',
    'SUS' => 'Sushi',
    'LAM' => 'Lámen',
  }

  get '/' do
    @title = 'Votação'    
    erb :index
  end


  post '/cast' do
    puts params
    @titulo = 'Obrigada por votar!'
    @voto  = params['voto']
    erb :cast
  end

end