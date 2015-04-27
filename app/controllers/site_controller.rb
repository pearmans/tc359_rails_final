class SiteController < ApplicationController
  helper_method :sort_column, :sort_direction

  def home
    @posts = Post.order(sort_column + " " + sort_direction)
  end

  def about
  end

  private

  def sort_column
    Post.column_names.include?(params[:sort]) ? params[:sort] : "created_at"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
