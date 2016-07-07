PcfDemoBlog::App.controllers :posts do

  get :index do
    @posts = Post.order('created_at DESC').all
    render 'posts/index'
  end

  get :show, :with => :id do
    @post = Post.find(:id => params[:id])
    render 'posts/show'
  end

end
