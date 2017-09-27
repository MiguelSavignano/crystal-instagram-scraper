require "./spec_helper"

describe CrystalInstagramScraper do

  it ".search" do
    CrystalInstagramScraper.search("the.cocktail")
    .should be_a(JSON::Any)
  end

  it ".get_user_media_nodes" do
    CrystalInstagramScraper.get_user_media_nodes("the.cocktail")
    .should be_a(JSON::Any)
  end


  it ".get_user" do
    CrystalInstagramScraper.get_user("the.cocktail")
    .should be_a(JSON::Any)
  end

  # it ".get_tag_media_nodes" do
  #   CrystalInstagramScraper.get_tag_media_nodes("the.cocktail")
  #   .should be_a(JSON::Any)
  # end

  # it ".get_media" do
  #   CrystalInstagramScraper.get_media("vKQeMNu7H1")
  #   .should be_a(JSON::Any)
  # end

  # it ".get_media_comments" do
  #   CrystalInstagramScraper.get_media_comments("6zVfmqAMkD")
  #   .should be_a(JSON::Any)
  # end
end
