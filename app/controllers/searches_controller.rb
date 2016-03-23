class SearchesController < ApplicationController
  def show
    @search = Search.new(term: params[:search][:term])
  end
end
