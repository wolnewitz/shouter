class PhotoShoutsController < ShoutsController
  before_action :build_content

    
  private

  def build_content
    @content = PhotoShout.new(photo_shout_parameters)
  end

  def photo_shout_parameters
    params.require(:photo_shout).permit(:image)
  end
end
