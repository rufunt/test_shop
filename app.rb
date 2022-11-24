#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, {:adapter =>'sqlite3', :database=>'barbershop.db'}

class Client < ActiveRecord::Base
end

class Barber < ActiveRecord::Base
end

class Contact < ActiveRecord::Base
end



before do
	@barbers = Barber.all
  @clients = Client.all
end

get '/' do
	erb :index			
end

get '/visit' do
	
	erb :visit
end

post '/visit' do
	

	c = Client.new params[:client]
  c.save
	
	erb "All, ok #{@username} ваш парикмахер #{@barber} будете окрашены в #{@color}"
	
end