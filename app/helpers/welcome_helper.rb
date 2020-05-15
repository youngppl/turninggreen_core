module WelcomeHelper
  def retrievePicIds
    request = RestClient.get(
      "https://sheets.googleapis.com/v4/spreadsheets/1QdddPvJRMPYVF0lvE03xUZlRFjTW4Rb1np9fmM_UaxM/values/'Landing%20Pics'!A:A?key=#{Rails.application.credentials[:google_api_key]}")
    json = JSON.load(request.body)
    ids_json = json['values']
    return ids_json.flatten
  end
end
