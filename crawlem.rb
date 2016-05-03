require "mechanize"

class WebCrawler
  def initialize(file_name)
    @file = file_name
  end

  private

  def save_site_crawl(site_url)
    begin
      if check(site_url)
        File.open(@file, "a") do |data|
          data.puts site_url
        end
      end
    rescue StandardError => error_message
      puts "ERROR #{error_message}" 
    end
  end

  def check
  end

  def fetch_database_urls
  end

  public

  def crawl
  end

end
