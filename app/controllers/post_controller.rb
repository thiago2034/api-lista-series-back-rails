class PostController < ApplicationController
  def index
    @post = Post.all.order(:title)
    render json: @post
  end

  def create
    post = Post.new(post_params)
    if post.save
      render json: @post, status: :created
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  def post_params
    params.require(:post).permit(
        :title, :body
    )
    end
end
