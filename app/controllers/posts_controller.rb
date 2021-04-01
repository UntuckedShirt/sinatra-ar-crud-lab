class PostsController < ApplicationController


    #index
    get "/articles" do
        @articles = Article.all
        #@jabs = current_user.posts
        erb :"articlesindex"   
    end

    #new
    get "/articles/new" do
        erb :"articles/new"
end

    #create
    post "/articles" do
        
end

    #show
    get "/articles/:id" do
        @articles = Article.find_by_id(params[:id])
        erb :"/articles/show"
end

    #edit
    get "/articles/:id/edit" do
        @articles = Article.find_by_id(params[:id])
        erb :"articles/edit"
end

    #update
    patch "/articles/:id" do
end

    #delete
delete "/articles/:id" do
end
end