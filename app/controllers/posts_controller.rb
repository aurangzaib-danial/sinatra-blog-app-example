class PostsController < ApplicationController
 
  get '/posts' do
    @posts = Post.all

    erb :'posts/index.html'
  end

  get '/posts/new' do
    erb :'posts/new.html'
  end

  post '/posts' do
    Post.create(title: params[:title], content: params[:content])
    redirect '/posts'
  end

end