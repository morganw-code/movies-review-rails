class MoviesController < ApplicationController
    def index
        @movies = Movie.all()
    end

    def show
        @movie = Movie.find(params[:id])
    end

    def new
    end

    def create
        Movie.create(title: params[:title], run_time: params[:run_time], adult_rated: params[:adult_rated])
        redirect_to movies_path
    end

    def edit
        @movie = Movie.find(params[:id])
    end

    def update
        Movie.update(params[:id], title: params[:title], run_time: params[:run_time], adult_rated: params[:adult_rated])
        redirect_to movies_path
    end
end