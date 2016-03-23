require 'digest/md5'

module ShoutsHelper
  def gravatar user, size = 48
    digest = Digest::MD5.hexdigest(user.email)
    image_tag("http://gravatar.com/avatar/#{digest}?s=#{size}")
  end

  def shouterize text
    #arr = shout.body.split(" ")
    #arr.each_with_index do |word, index|
      #if word =~ /#\w+/
        #arr[index] = link_to(word, shout_search_path(shout.id, word))  
      #end
    #end
    #arr.join(" ")
    link_hashtags text
  end

  private

  def link_hashtags text
    text.gsub(/#(\w+)/) { |match| link_to(match, hashtag_path($1)) }
  end
end
