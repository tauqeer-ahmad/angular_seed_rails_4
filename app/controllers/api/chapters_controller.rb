class Api::ChaptersController < ApplicationController
  before_action :set_chapter, only: [:show, :update, :destroy]

  def index
    @chapters = Chapter.all

    render json: @chapters
  end

  def show
    render json: @chapter
  end

  def create
    @chapter = Chapter.new(chapter_params)

    if @chapter.save
      render json: @chapter, status: :created
    else
      render json: @chapter.errors, status: :unprocessable_entity
    end
  end

  def update
    if @chapter.update(chapter_params)
      render json: @chapter, status: :ok
    else
      render json: @chapter.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @chapter.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chapter
      @chapter = Chapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapter_params
       params
        .require(:chapter)
        .permit(:name, :number)
    end
end
