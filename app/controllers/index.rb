PcfDemoBlog::App.controllers :index do
  get :index, :map => '/' do
    redirect(:posts, 301, notice: 'This page has moved. Please update your bookmarks!!')
  end
end
