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

  def check(url)
    data = File.read(@file)
    urls = data.split
    if urls.include? url
      return false
    else
      return true
    end
  end

  def fetch_database_urls
    active_urls = File.read(@file)
    urls = active_urls.split
    return urls
  end

  public

  def crawl
  end

end
