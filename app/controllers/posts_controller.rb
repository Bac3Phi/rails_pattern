class PostsController < ApplicationController
	 before_action :find_post, only: [:show, :update, :edit, :destroy]

	def index
		@posts = PostsQuery.call
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		service = CreatePost.call(@post)

		if service.result
			redirect_to @post
		else
			render 'new'
		end
	end

	def show
	end

	def update
		form = PostForm.new(@post, post_params)

		if form.save
			redirect_to @post
		else
			render 'edit'
		end
	end

	def edit
	end

	def destroy
		@post.destroy

		redirect_to posts_path

	end

	private

	def post_params
		params.require(:post).permit(:title, :content)
	end

	def find_post
		@post = Post.find(params[:id])
	end

end
