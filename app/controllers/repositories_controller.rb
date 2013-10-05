class RepositoriesController < ApplicationController
  def new
    @repository = Repository.new
  end

  def create
    @repository = Repository.new(repo_params)
    if @repository.save
      redirect_to new_repository_path, notice: "Repository recorded"
    else
      render :new
    end
  end

  def index
    @repositories = Repository.all
  end

  protected
  def repo_params
    params.require(:repository).permit(:title, :description, :url)
  end

end
