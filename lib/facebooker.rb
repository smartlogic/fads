require 'mechanize'

class Facebooker
  def download
    agent = Mechanize.new
    page = agent.get("http://www.facebook.com/advertising/")
    form = page.forms[0]
    form.email = email
    form.pass  = password
    agent.submit(form, form.buttons.first)

    page = agent.get("https://www.facebook.com/ads/manage")
    act = page.uri.query.slice(/act\=(\d+)/, 1)
    page = agent.get("https://www.facebook.com/ads/manage/view_report.php?report_type=perf&summarize_by=campaign&format=html&act=#{act}&ref=admanager&agg_time=custom&time_start=0&time_end=0&filter=nofilter")

    File.open("tmp/facebook.html", 'w') { |file| file.write(page.body) }
  end

  def save_to_db
    doc = Nokogiri::HTML(open("tmp/facebook.html"))
    trs = doc.css(".adreports_data table.UIDataTable tr")
    trs[3, 16].each do |tr|
      campaign    = tr.children[1].content
      impressions = tr.children[2].content
      clicks      = tr.children[5].content
      spend       = tr.children[11].content

      CampaignResult.create!(
        :spend => spend,
        :impressions => impressions,
        :clicks => clicks,
        :spend => spend
      )
    end
  end

  private
  def config
    @config ||= YAML.load(open('tmp/fb.yml'))
  end

  def password
    config['password']
  end

  def email
    config['email']
  end
end

