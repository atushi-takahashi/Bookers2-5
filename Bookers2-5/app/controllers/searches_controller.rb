class SearchesController < ApplicationController
  
  def search
    @range = params[:range]
    @search = params[:serach]
    @word = params[:word]
    
    if @range =='1'
      @user = User.search(@word,@search)
      @users = User.all
    else
      @book = Book.search(@word,@search)
      @books = Book.all
    end
  end
  
end