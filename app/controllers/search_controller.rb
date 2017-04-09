class SearchController < ApplicationController

  before_action :check_query

  def search
    result = Search::books_and_articles(params[:filter], params[:q])
    render json: result
  end

  private 
    def check_query
      render json: { error: "?q= Can`t be blank"} if params[:q].blank?
    end
end
