module ChallengeMailerHelper
  def fun_facts
    request = RestClient.get(
      "https://sheets.googleapis.com/v4/spreadsheets/1QdddPvJRMPYVF0lvE03xUZlRFjTW4Rb1np9fmM_UaxM/values/Facts!A:A?key=#{Rails.application.credentials[:google_api_key]}")
    facts_json = JSON.load(request.body)
    facts_json['values'].flatten
  end

  def site_updates
    request = RestClient.get(
      "https://sheets.googleapis.com/v4/spreadsheets/1QdddPvJRMPYVF0lvE03xUZlRFjTW4Rb1np9fmM_UaxM/values/Updates!A:A?key=#{Rails.application.credentials[:google_api_key]}")
    updates_json = JSON.load(request.body)
    (updates_json['values'].nil?)? false : updates_json['values'].flatten
  end

  def getGifs
    request = RestClient.get(
      "https://sheets.googleapis.com/v4/spreadsheets/1QdddPvJRMPYVF0lvE03xUZlRFjTW4Rb1np9fmM_UaxM/values/'Email'!B2:B3?key=#{Rails.application.credentials[:google_api_key]}")
    json = JSON.load(request.body)
    json['values'].flatten
  end
  
  def get_subject_line
    request = RestClient.get(
      "https://sheets.googleapis.com/v4/spreadsheets/1QdddPvJRMPYVF0lvE03xUZlRFjTW4Rb1np9fmM_UaxM/values/Email!A2?key=#{Rails.application.credentials[:google_api_key]}")
    json = JSON.load(request.body)
    json['values'].flatten[0]
  end
end
