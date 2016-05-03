require "mechanize"

class WebCrawler
  def initialize(file_name)
    # Set the @file instance variable
    @file = file_name
  end

  private

  def save_site_crawl(site_url)
    begin
      if check(site_url)
        # open the file in append mode
        File.open(@file, "a") do |data|
          # append the crawled information
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
    links_found = 0
    agent = Mechanize.new

    agent.agent.http.varify_mode = OpenSSL::SSL::VERIFY_NONE

    fetched_urls = fetch_database_urls

    fetched_urls.each do |url_to_crawl|

      page = agent.get(url_to_crawl)

      links = page.links

      links.each do |link|
        scraped_url = link.attributes['href']
        next if scraped_url == "#"

        case scraped_url[0..4]
        when "https" then
        when "http:" then
        when "ftp:" then
        else
        end
      end

    end
  end

end

crawl = WebCrawler.new("./urls.txt")

crawl.crawl



