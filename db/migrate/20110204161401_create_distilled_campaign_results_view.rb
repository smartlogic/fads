class CreateDistilledCampaignResultsView < ActiveRecord::Migration
  def self.up
    connection.execute <<-SQL
      CREATE VIEW distilled_campaign_results AS
        SELECT FBC.name, FBC.gender, FBC.likes_law_and_order, FBC.image, FBC.copy,
          FBC.population, FBC.bid, CR.spend, CR.impressions, 
          CR.impressions / FBC.population AS population_reached,
          CR.clicks, CR.clicks / CR.impressions AS click_rate,
          CR.conversions, CR.conversions / CR.clicks AS conversion_rate,
          FBC.value_per_conversion,
          CR.spend * 1000 / CR.impressions AS effective_cpm,
          CR.spend / CR.clicks AS effective_cpc,
          CR.spend / CR.conversions AS effective_cpa,
          CR.conversions * FBC.value_per_conversion AS value_created,
          (CR.conversions * FBC.value_per_conversion) - CR.spend AS profit,
          ((CR.conversions * FBC.value_per_conversion) - CR.spend) / CR.spend AS profit_margin
        FROM facebook_campaigns FBC
          INNER JOIN campaign_results CR ON FBC.id = CR.facebook_campaign_id
    SQL
  end

  def self.down
    connection.execute "DROP VIEW distilled_campaign_results"
  end
end
