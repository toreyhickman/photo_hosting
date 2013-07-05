get '/' do
  # Look in app/views/index.erb
  erb :index
end

post '/upload' do
  @photo = Photo.create( { name: params[:name], file: params[:file] } )

  uploader = PhotoUploader.new
  uploader.store!(params[:file])

  redirect '/'
end