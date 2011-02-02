require 'google_spreadsheet'

class Downloader
  def self.download
    session = GoogleSpreadsheet.saved_session
    ws = session.spreadsheet_by_key('ttg_zs8GbEWo6cjbUlmXY2Q').worksheets[0]

    rows = ws.rows[1,16]

    rows.each do |row|
      CampaignResult.create!(
        :gender => row[0],
        :likes_l_and_o => row[1],
        :image => row[2],
        :copy => row[3],
        :population => row[4],
        :g_cpm_low => from_dollars(row[5]),
        :g_cpm_mean => from_dollars(row[6]),
        :g_cpm_high => from_dollars(row[7]),
        :g_cpc_low => from_dollars(row[8]),
        :g_cpc_mean => from_dollars(row[9]),
        :g_cpc_high => from_dollars(row[10]),
        :utm_content => row[11],
        :spend => from_dollars(row[12]),
        :impressions => row[13],
        :population_reached => row[14],
        :clicks => row[15].to_i,
        :click_rate => row[16],
        :conversions => row[17].to_i,
        :conversion_rate => row[18],
        :value_per_conversion => from_dollars(row[19]),
        :effective_cpc => from_dollars(row[20]),
        :effective_cpa => from_dollars(row[21]),
        :value_created => from_dollars(row[22]),
        :profit => from_dollars(row[23]),
        :profit_margin => row[24]
      )
    end
  end

  def self.from_dollars(val)
    val.sub('$', '').to_f
  end
end
