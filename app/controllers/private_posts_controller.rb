class PrivatePostsController < ApplicationController
  before_action :set_private_post, only: [:show, :edit, :update, :destroy]

  # GET /private_posts
  # GET /private_posts.json
  def index
    @private_posts = PrivatePost.all
  end

  # GET /private_posts/1
  # GET /private_posts/1.json
  def show
  end

  # GET /private_posts/new
  def new
    @private_post = PrivatePost.new
  end

  # GET /private_posts/1/edit
  def edit
  end

  # POST /private_posts
  # POST /private_posts.json
  def create
    @private_post = PrivatePost.new(private_post_params)

    respond_to do |format|
      if @private_post.save
        format.html { redirect_to @private_post, notice: 'Private post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @private_post }
      else
        format.html { render action: 'new' }
        format.json { render json: @private_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /private_posts/1
  # PATCH/PUT /private_posts/1.json
  def update
    respond_to do |format|
      if @private_post.update(private_post_params)
        format.html { redirect_to @private_post, notice: 'Private post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @private_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /private_posts/1
  # DELETE /private_posts/1.json
  def destroy
    @private_post.destroy
    respond_to do |format|
      format.html { redirect_to private_posts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_private_post
      @private_post = PrivatePost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def private_post_params
      params.require(:private_post).permit(:title, :body)
    end
end
