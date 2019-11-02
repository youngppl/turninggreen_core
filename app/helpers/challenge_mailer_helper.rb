module ChallengeMailerHelper
  def fun_facts
    fun_facts = []
    facts_json = JSON.load(RestClient.get('https://spreadsheets.google.com/feeds/cells/1QdddPvJRMPYVF0lvE03xUZlRFjTW4Rb1np9fmM_UaxM/2/public/full?alt=json').body)
    facts_json["feed"]["entry"].each do |cell|
      fun_facts << cell["content"]["$t"]
    end
    fun_facts
  end

  def site_updates
    site_updates = []
    updates_json = JSON.load(RestClient.get('https://spreadsheets.google.com/feeds/cells/1QdddPvJRMPYVF0lvE03xUZlRFjTW4Rb1np9fmM_UaxM/1/public/full?alt=json').body)
    begin
      updates_json["feed"]["entry"].each do |cell|
        site_updates << cell["content"]["$t"]
      end
    rescue
      site_updates = false
    end
    site_updates
  end
end
