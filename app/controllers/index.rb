get '/*' do
  # Look in app/views/index.erb
  # @anagram = params[:anagram]
  @anagram = params[:splat].first
  erb :index
end

post '/anagram' do
  # redirect to "/?anagram=#{params[:user_input]}"
  redirect to "/#{params[:user_input]}"
end
