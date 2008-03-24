class Posts < Application
  
  def index
    @posts = Post.paginate
    render
  end
  
end
