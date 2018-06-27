require 'sinatra'

class Count
  @count = 0
  def self.sum(num)
    @count += num.to_i
  end

  def self.print
    @count
  end
end

get '/' do
  @number = Count.print
  erb :index
end

post '/method' do
  Count.sum(params[:plus])
  redirect '/'
end