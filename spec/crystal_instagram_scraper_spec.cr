require "./spec_helper"

describe CrystalInstagramScraper do
  it ".get_user_media_nodes" do
    username = "the.cocktail"
    response = CrystalInstagramScraper.get_user_media_nodes(username)
    response.should be_a(JSON::Any)
  end
end
