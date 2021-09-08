class PostsController < ApplicationController
    def index
        if current_usermodel != nil 
            if current_usermodel.role == "Normal"
            @posts = Post.where(approval: true)
            else
            @posts = Post.all
            end

        end
    end

    def action
        @post_id = params[:post_id]
        if @post_id != "0"
        @post=Post.find(@post_id)
        
        @post.approval=true
        if @post.save
            redirect_to @post
        end

        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create

        if current_usermodel != nil
            @post = Post.new(post_params)
            if current_usermodel.role == "Normal"

            @post.approval = false

            else

            @post.approval = true

            end
            if @post.save
                redirect_to @post
            else
                render:new
            end
        else
            render:new
        end

    end

    private
    def post_params
        params.require(:post).permit(:title,:descripition,:image)
    end
end
