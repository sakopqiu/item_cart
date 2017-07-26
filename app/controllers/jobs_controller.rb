class JobsController < ApplicationController
  def new
  end

  def create
    code = params[:code]
    Resque.enqueue(SnippetHighlighter, code)
    flash[:notice] = "processing"
    redirect_to new_job_path, notice: "added"
  end
end
