require 'google_spreadsheet'
require 'nokogiri'
require 'ruby-debug'

class Downloader
  def download
    ws = spreadsheet.worksheets[0]

    rows = ws.rows[1,16]

    rows.each do |row|
      CampaignResult.create!(
        :gender => row[0],
        :likes_l_and_o => row[1],
        :image => row[2],
        :copy => row[3],
        :population => row[4],
        :actual_bid => from_dollars(row[6]),
        :utm_content => row[11],
        :spend => from_dollars(row[12]),
        :impressions => row[13],
        :population_reached => row[14],
        :clicks => row[15].to_i,
        :click_rate => row[16],
        :conversions => row[17].to_i,
        :conversion_rate => row[18],
        :value_per_conversion => from_dollars(row[19]),
        :effective_cpm => from_dollars(row[20]),
        :effective_cpc => from_dollars(row[21]),
        :effective_cpa => from_dollars(row[22]),
        :value_created => from_dollars(row[23]),
        :profit => from_dollars(row[24]),
        :profit_margin => row[25]
      )
    end
  end

  def update_from_facebook
    ws  = spreadsheet.worksheets[1]
    doc = Nokogiri::HTML(open("tmp/facebook.html")) 
    trs = doc.css(".adreports_data table.UIDataTable tr")
    trs[3, 16].each do |tr|
      campaign    = tr.children[1].content
      impressions = tr.children[2].content
      clicks      = tr.children[5].content
      spend       = tr.children[11].content
      
      update_campaign_in_spreadsheet(ws, campaign, impressions, clicks, spend)
    end
    ws.save
  end

  def update_campaign_in_spreadsheet(ws, campaign, impressions, clicks, spend)
    puts "Updating #{campaign}"
    2.upto(17) do |row_num|
      if ws[row_num, 1] == campaign
        ws[row_num, 14] = spend
        ws[row_num, 15] = impressions
        ws[row_num, 17] = clicks
        break
      end
    end
  end

  def spreadsheet
    @spreadsheet ||= google_session.spreadsheet_by_key('ttg_zs8GbEWo6cjbUlmXY2Q')
  end

  def google_session
    @google_session ||= GoogleSpreadsheet.saved_session
  end

  private
  def self.from_dollars(val)
    val.sub('$', '').to_f
  end
end
