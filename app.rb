require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/multiply/:n1/:n2" do
    "Boom #{(params[:n1]).to_i*(params[:n2]).to_i}!"
  end

  # Code your final two routes here:

end
