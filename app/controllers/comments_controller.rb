class CommentsController < ApplicationController
  before_action :set_comment, only: %i[ show edit update destroy ]

  # GET /comments or /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1 or /comments/1.json
  def show
  end

  # GET /comments/new
  def new
    @task = Task.find(params[:task_id])
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
  end

  # POST /comments or /comments.json
  def create
    @comment = Comment.new
    @task = Task.find(params[:task_id])
    @comment.task_id = @task.id 
    @comment.content = params[:content]
    @comment.user_id = current_user.id

    respond_to do |format|
      if @comment.save
        format.html { redirect_to task_url(@task), notice: "Comment was successfully created." }
        format.json { render :show, status: :created, location: @task }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comments/1 or /comments/1.json
  def update
    if @comment.update("content": params[:comment][:content])
      head :no_content
    else
      head :unprocessable_entity
    end
  end

  # DELETE /comments/1 or /comments/1.json
  def destroy
    if @comment.destroy
      head :no_content
    else
      head :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.fetch(:comment, {}).permit(:content, :task_id)
    end
end
