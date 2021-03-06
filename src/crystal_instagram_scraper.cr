require "json"
require "http/client"

module CrystalInstagramScraper

  BASE_URL = "https://www.instagram.com"

  def self.search(query) : JSON::Any
    url = "#{BASE_URL}/web/search/topsearch/"
    params = "?query=#{ query }"

    JSON.parse open("#{url}#{params}")
  end

  def self.get_user_media_nodes(username, max_id = nil) : JSON::Any
    url = "#{BASE_URL}/#{ username }/media/"
    params = ""
    params = "?max_id=#{ max_id }" if max_id

    JSON.parse open("#{url}#{params}")
  end

  def self.get_user(username, max_id = nil) : JSON::Any
    url = "#{BASE_URL}/#{ username }/?__a=1"
    params = ""
    params = "&max_id=#{ max_id }" if max_id

    JSON.parse(open("#{url}#{params}"))["user"]
  end

  # def self.get_tag_media_nodes(tag, max_id = nil)
  #   url = "#{BASE_URL}/explore/tags/#{ tag }/?__a=1"
  #   params = ""
  #   params = "&max_id=#{ max_id }" if max_id
  #   JSON.parse(open("#{url}#{params}"))["tag"]["media"]["nodes"]
  # end

  # def self.get_media(code) : JSON::Any
  #   url = "#{BASE_URL}/p/#{ code }/?__a=1"
  #   params = ""
  #   JSON.parse(open("#{url}#{params}"))["media"]
  # end

  # def self.get_media_comments(shortcode, count = 40, before = nil) : JSON::Any
  #   params = before.nil? ? "comments.last(#{ count })" : "comments.before( #{ before } , #{count})"
  #   url = "#{BASE_URL}/query/?q=ig_shortcode(#{ shortcode }){#{ params }\
  #     {count,nodes{id,created_at,text,user{id,profile_pic_url,username,\
  #     follows{count},followed_by{count},biography,full_name,media{count},\
  #     is_private,external_url,is_verified}},page_info}}"

  #   JSON.parse(open(url))["comments"]
  # end

  private def self.open(url : String) : String
    response = HTTP::Client.get(url)
    response.body
  end

end