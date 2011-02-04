class CreateDistilledCampaignResultsView < ActiveRecord::Migration
  def self.up
    connection.execute <<-SQL
      CREATE VIEW distilled_campaign_results AS
        SELECT FBC.name, CR.campaign_snapshot_id, FBC.gender, FBC.likes_law_and_order, 
          FBC.image, FBC.copy, FBC.population, FBC.bid, CR.spend, CR.impressions, 
          CAST(CR.impressions AS NUMERIC) / NULLIF(FBC.population, 0) AS population_reached,
          CR.clicks, CAST(CR.clicks AS NUMERIC) / NULLIF(CR.impressions, 0) AS click_rate,
          CR.conversions, CAST(CR.conversions AS NUMERIC) / NULLIF(CR.clicks, 0) AS conversion_rate,
          FBC.value_per_conversion,
          CR.spend * 1000 / NULLIF(CR.impressions, 0) AS effective_cpm,
          CR.spend / NULLIF(CR.clicks, 0) AS effective_cpc,
          CR.spend / NULLIF(CR.conversions, 0) AS effective_cpa,
          CR.conversions * FBC.value_per_conversion AS value_created,
          (CR.conversions * FBC.value_per_conversion) - CR.spend AS profit,
          ((CR.conversions * FBC.value_per_conversion) - CR.spend) / NULLIF(CR.spend, 0) AS profit_margin
        FROM facebook_campaigns FBC
          INNER JOIN campaign_results CR ON FBC.id = CR.facebook_campaign_id
    SQL
  end

  def self.down
    connection.execute "DROP VIEW distilled_campaign_results"
  end
end
