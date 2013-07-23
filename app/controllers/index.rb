get '/' do
  @events = Event.all
  erb :index
end

get '/events/:id/show' do |id|
  @event = Event.find(id)
  erb :event_show
end

get '/events/new' do
 erb :event_new
end

post '/events/create' do
  p params
  params[:input][:date] = params[:input][:date].to_date
  @event = Event.create(params[:input])
  if @event.errors.empty?
    erb :event_show
  else @event.errors
    content_type :json
    { date: @event.errors}.to_json
    # @errors = @event.errors
    # erb :event_new
  end
end


  
