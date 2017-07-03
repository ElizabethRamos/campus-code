class TranslationRequestsController <ApplicationController

  def new
    @translation_request = TranslationRequest.new
  end

  def create
    @translation_request = TranslationRequest.new(translation_request_params)
    @translation_request.save

    redirect_to @translation_request
  end

  def show
  end

end


private
def translation_request_params
  params.require(:translation_request).permit(:text)
end
