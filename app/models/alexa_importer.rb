class AlexaImporter
  def run(quantity)
    session.top_sites.global(quantity).each do |website|

      Website.create!(url: website.url,
                      screenshot: create_screenshot_url(website.url),
                      rank: website.rank,
                      reach: website.reach,
                      page_views_per_user: website.page_views_per_user,
                      page_views_per_million: website.page_views_per_million)
    end
  end

  private

  def session
    Ralexa.session(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
  end

  def create_screenshot_url(website_url)
    "http://api.screenshotlayer.com/api/capture?access_key=aa42a4b62cd1f338f8355c513cddfe5d&url=http://#{website_url}&viewport=200x200&fullpage=1"
  end
end
