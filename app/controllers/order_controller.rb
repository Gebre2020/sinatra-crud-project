class OrderController < ApplicationController

    #create

    get '/orders/new' do
        #"render order form"
        erb :'/orders/new'
    end

    post '/orders' do  
       # "process our form"
       @order = Order.create(
           address: params[:address], 
           item: params[:item], 
           item_price: params[:item_price], 
           total: params[:total]
           )
           #binding.pry
           redirect "/orders/#{@order.id}"
    end

    #read

    get '/orders/:id' do
        @order = Order.find(params[:id])
        erb :'/orders/show'
    end

    get '/orders' do
        @orders = Order.all  #returns an array
        erb :'/orders/index'
    end

    #update

    #delete


end