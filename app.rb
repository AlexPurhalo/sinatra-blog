require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require 'sinatra/flash'
require 'sinatra/redirect_with_flash'

enable :sessions

# model
class Post < ActiveRecord::Base
  # validation
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end

# GET all posts
get "/" do
  @posts = Post.order("created_at DESC")
  @title = "Welcome."
  erb :"posts/index"
end

helpers do
  def title
    if @title
      "#{@title}"
    else
      "Welcome."
    end
  end
end

# new post page
get "/posts/create" do
  @title = "Create post"
  @post = Post.new
  erb :"posts/create"
end

# POST new post
post "/posts" do
  @post = Post.new(params[:post])
  if @post.save
    redirect "posts/#{@post.id}", :notice => 'Congrats! Love the new post. (This message will disappear in 4 seconds.)'
  else
    redirect "posts/create", :error => 'Something went wrong. Try again. (This message will disappear in 4 seconds.)'
  end
end

# GET single post
get "/posts/:id" do
  @post = Post.find(params[:id])
  @title = @post.title
  erb :"posts/view"
end

# edit post page
get "/posts/:id/edit" do
  @post = Post.find(params[:id])
  @title = "Edit Form"
  erb :"posts/edit"
end

# PUT single post data
put "/posts/:id" do
  @post = Post.find(params[:id])
  @post.update(params[:post])
  redirect "/posts/#{@post.id}"
end