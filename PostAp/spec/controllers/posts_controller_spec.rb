require 'rails_helper'

RSpec.describe PostsController, type: :controller do

   describe "GET index" do
    it "assigns @posts" do
      post = Post.create
      get :index
      expect(assigns(:posts)).to eq([post])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end


  end

  

end
