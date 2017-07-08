class TranslationsController < ApplicationController
  before_action :find_translation, only: [:show, :edit, :update, :destroy]
  

  def index
     @translations = Translation.all
  end

   def new
    @translation = Translation.new
  end

  def create

    @translation = Translation.new(translation_params)

    @translation.save
    redirect_to @translation
  end

  def edit
  end

  def show
  end

  def update

    if @translation.update(translation_params)
      redirect_to @translation
    else
      render 'edit'
    end
  end

  def destroy
     @translation.destroy

     redirect_to translations_path
   end

  private
    def translation_params
      params.require(:translation).permit(:portuguese, :english)
    end

    def find_translation
      @translation = Translation.find(params[:id])
    end
end
