class HomeController < ApplicationController


  def index
    
    @posts = Post.all
    @member = Member.all
  end
end
