class Dashboard
  attr_reader :current_user

  def initialize user
    @current_user = user
  end

  def new_text_shout
    TextShout.new
  end
  
  def new_photo_shout
    PhotoShout.new
  end

  def shouts
    @shouts = Shout.all
  end
end
