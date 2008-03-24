class Posts < Application
  
  def index
    @posts = Post.paginate :page => params[:page]
    render
  end
  
end
