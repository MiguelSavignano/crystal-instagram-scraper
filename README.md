# Crystal instagram scraper

А simple module for requests to Instagram without an API key.

Note: this lib it's inspired in a ruby gem
[ruby-instagram-scraper](https://rubygems.org/gems/ruby-instagram-scraper)

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  crystal_instagram_scraper:
    github: MiguelSavignano/crystal-instagram-scraper
```

## Usage

```crystal
require "crystal_instagram_scraper"
```

## Methods

```crystal
# Get user media nodes:
CrystalInstagramScraper.get_user_media_nodes("gopro")

# Pass an "id" of node to offset:
CrystalInstagramScraper.get_user_media_nodes("gopro", "1259825963188747360" )

# Get user info
CrystalInstagramScraper.get_user("gopro")
```
## Contributing

1. Fork it ( https://github.com/MiguelSavignano/crystal-instagram-scraper/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [[MiguelSavignano]](https://github.com/MiguelSavignano) Miguel Savignano - creator, maintainer
