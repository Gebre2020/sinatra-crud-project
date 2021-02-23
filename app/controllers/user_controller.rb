class UserController < ApplicationController

    get '/users/signup' do
       # "this is the signup route "
       erb :'/users/signup'
    end

    post '/users/signup' do
        #params[:username]
        #params[:password]
        @user = User.create(username: params[:username], password: params[:password])
        #binding.pry
        redirect "/users/#{@user.id}"
    end

    get '/users/:id' do   #show page
        # "this is a show page"
        @user = User.find(params[:id])
        erb :'/users/show'
    end


end