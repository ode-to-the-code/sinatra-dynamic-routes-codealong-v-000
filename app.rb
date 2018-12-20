require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:cats" do
    @user_name = params[:cats]
    "Hello #{@user_name}!"
    puts params[:cats]
  end

  # Code your final two routes here:
  
  get '/goodbye/:name' do 
     @name = params[:name]
    "Goodbye, #{@name}."
  end 
  
  get '/multiply/:num1/:num2' do
    params[:num1].to_i * params[:num2].to_i
  end 
  
end