class TextShoutsController < ShoutsController
  before_action :build_content

  private

  def build_content
    @content = TextShout.new(text_shout_parameters)
  end

  def text_shout_parameters
    params.require(:text_shout).permit(:body)
  end
end
