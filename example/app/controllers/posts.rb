class Posts < Application
  
  def index
    @posts = Post.paginate :page => params[:page], :per_page => 20
    render
  end
  
end
